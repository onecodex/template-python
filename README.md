# Python template repo
Template repository for both application and analysis repos in Python 3. Provides:

* A minimal `Makefile`
* Automatic setup of a [`pyenv virtualenv`](https://github.com/pyenv/pyenv-virtualenv) using Python 3.8.2 and named after the repo name (see `make install/pyenv`)
* [`pip-tools`](https://github.com/jazzband/pip-tools) for `requirements.txt` management (see `make requirements`)
* [`pre-commit`](https://pre-commit.com/) for linting (see `make format`)
* GitHub Actions for `pre-commit` and `pytest`

### To get started

Just run:

```
make install
```

You can re-install just the Python dependencies with `make install/requirements`. Test with `pytest` or `make test`. Format per-file on commit or by running `make format`.

### Customizing `pre-commit` behavior
If you'd like to enable `pre-commit` for a different set of hooks, you can set the `PRE_COMMIT_HOOK_PREFERENCE` environment variable before invoking `make install`, e.g., `PRE_COMMIT_HOOK_PREFERENCE=pre-push make install`. Note this will not work if you modify `.pre-commit-config.yaml` to have a `default_stages` directive (see [the documentation](https://pre-commit.com/#usage) for more info).

### Adding badges
Unfortunately, Github badges need to have hardcoded paths. You can add this to the top of your `REAMDE.md` replacing `$REPO` as appropriate:

```md
![test](https://github.com/onecodex/$REPORT/workflows/test/badge.svg) ![pre-commit](https://github.com/onecodex/$REPORT/workflows/pre-commit/badge.svg)
```

### Initial GH Action status checks ⚠️
By default, creating a repository from this template will have a failing Github Action for tests. This is because `pytest` has an exit code of `5` when no tests are present. The best fix is to just write some tests!
