#!/bin/sh
# Publishes this folder as the public site https://robchdev.github.io/airdial-site/
cd "$(dirname "$0")" || exit 1
gh repo create robchdev/airdial-site --public --source=. --push --description "AirDial – support and privacy pages" || exit 1
gh api -X POST repos/robchdev/airdial-site/pages -f "source[branch]=main" -f "source[path]=/" >/dev/null && echo "Pages on: https://robchdev.github.io/airdial-site/"
