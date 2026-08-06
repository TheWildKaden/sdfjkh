# Volcano Gen2

Get Started
[Sirius Developer Suite - Volcano Gen2](https://docs.sirius.menu/volcano-gen2)

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for local setup, required checks, and pull-request guidance.

Run `make ci` before opening a pull request. The gate runs formatting, linting, type analysis, tests, and the enforced coverage threshold.

## Setup

Use the unified npm workflow to install tooling and validate the repo:

- `npm run bootstrap` — install dependencies, toolchain, and workspace tooling
- `npm run check` — run formatting, linting, type checking, and tests
- `npm run fix` — auto-format the code
- `npm run verify` — bootstrap and then run the full check pipeline
- `npm run repair` — auto-format and re-run checks

If you prefer shell mode, run `bash ./install_dep.sh`.

## License

Mozilla Public License 2.0. See [LICENSE](LICENSE).

Copyright (c) 2026 Corridon Capital.
