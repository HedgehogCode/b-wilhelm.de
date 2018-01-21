# My website

## Development

Make sure you have ruby and bundler installed.

Run
```
$ bundle install --path vendor/bundle
```

Serve the site locally
```
$ bundle exec jekyll serve
```

## Update

Keep the site up to date with the GitHub Pages gem:
```
$ bundle update
```

## License

The content of the website is licensed under the [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/). (Markdown files and directories `_posts` and `_drafts`)

 The underlying source code used to display and format the content is licensed under the [MIT Licence](http://opensource.org/licenses/mit-license.php). (HTML and SCSS files in the directories `_includes`, `_layouts`, and `_scss`)

## TODOs

* Write post on why to use GitHub Pages
* Write post about something else
 * Use travis ci to deploy the site: [http://ajaykarwal.com/deploying-jekyll-using-travis-ci/](http://ajaykarwal.com/deploying-jekyll-using-travis-ci/) + See [Encrypted environment variables](https://docs.travis-ci.com/user/environment-variables/#Encrypting-Variables-Using-a-Public-Key)
