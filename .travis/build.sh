#!/usr/bin/env bash
set -e # halt script on error

bundle exec rake jekyll:check
bundle exec rake jekyll:check_external_links

JEKYLL_ENV=production bundle exec jekyll build --destination site
