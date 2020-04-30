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

### Adding badges
Unfortunately, Github badges need to have hardcoded paths. You can add this to the top of your `REAMDE.md` replacing `$REPO` as appropriate:

```md
![test](https://github.com/onecodex/$REPORT/workflows/test/badge.svg) ![pre-commit](https://github.com/onecodex/$REPORT/workflows/pre-commit/badge.svg)
```
