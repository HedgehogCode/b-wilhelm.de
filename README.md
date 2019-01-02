# My website

| master | release |
|--------|---------|
| [![Build Status](https://travis-ci.org/HedgehogCode/b-wilhelm.de.svg?branch=master)](https://travis-ci.org/HedgehogCode/b-wilhelm.de) | [![Build Status](https://travis-ci.org/HedgehogCode/b-wilhelm.de.svg?branch=release)](https://travis-ci.org/HedgehogCode/b-wilhelm.de) |

## Development

Make sure you have ruby and bundler installed.

Install the requirements:
```
$ bundle install --path vendor/bundle
```

Serve the site locally:
```
$ bundle exec rake preview
```

Build and check with html-proofer:
```
$ bundle exec rake
```

## Update

Keep the site up to date:
```
$ bundle update
```

## License

The content of the website is licensed under the [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/). (Markdown files and directories `_posts` and `_drafts`)

The underlying source code used to display and format the content is licensed under the [MIT License](http://opensource.org/licenses/mit-license.php). (HTML and SCSS files in the directories `_includes`, `_layouts`, and `_scss`)

