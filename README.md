This repo contains various utilities for the SANE environment.

Intended use:

- _sane-env.yml_ contains shared conda packages for sane-env conda environment
- _cpu\_pip\_installs.ps1_ contains pip install commands for Playwright and PyTorch (defaults to CPU)
- _gpu\_pip\_installs.ps1_ contains pip install commands for Playwright and PyTorch (CUDA 12.9)
- _pw\_install.ps1_ is used for enabling PDF export.
- _marimo\_pdf\_patch.ps1_ for patching Marimo code for correct working of PDF exports without internet connection.
