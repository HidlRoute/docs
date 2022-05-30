# HidlRoute Documentation

This repository consists the sources for the HidlRoute documentation published at https://hidlroute.org/.
Hidl Route is an open-source VPN management system.

## Build instructions

1. Make sure you have Docker and Make installed
2. Clone this repository
3. Run `make setup` to prepare dev environment
4. Run `make serve` to launch dev server
5. Open http://localhost:8325/ in your browser to view local copy
6. Each time you make a changes to the doc source the site will be updated automatically

## Publishing changes manually

**Note**: Typically, there is no need to do this manually as the normal flow relies on GitHub Action which does deployment
for you.

1. Run `make deploy`, this will compile the site and push into the `gh-pages` branch
2. Run `git push` to push this changes to the remote repo on github.

