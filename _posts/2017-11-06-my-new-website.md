---
title: My new Website
date: 2018-01-21
layout: post
author: Benjamin Wilhelm
permalink: /my-new-website/
categories: web-development
tags: web git jekyll github
---

I recently decided that I want to create a new website for my personal use containing some static pages and a blog. I ended up using the awesome static site generator Jekyll. Additionally, I tuned the loading times a lot which gave me a result of 100 points in Googles PageSpeed Insights.

## Why?

During my usual nerdy day, I sometimes discover things I want to share. This blog is supposed to be the place. I hope that I will use it...

Additionally, I had a website for a while now but it used WordPress and as a computer scientist, I hate it. It's so much more intuitive for me to write a post in a markdown file on my computer and run `git add`, `git commit` and `git push` to publish it than logging into a slow backend and writing there. It just fits my usual workflow better.

## What technologies do I use?

### Jekyll

Jekyll is awesome as well. I can write my content in markdown :heart_eyes: and serve static compressed HTML and CSS files. (Take a look at the source repository if you want to know how I compress HTML files). I wouldn't consider myself a web developer but I believe to know that this is a good thing for loading times.

During my transition from a fully featured CMS to simple static site generator, I somehow thought I should keep using a CMS but a smaller and nicer one. A lot of googling led me to grav. A plaintext CMS which I think is awesome! I almost ended up using it but Jekyll is just too great :wink:.

### Travis

I use Travis to build the static page and upload it to my server. Maybe I will write another article on how exactly I did this.

### Why not GitHub Pages?

I already have my website in a GIT repository on GitHub and could just use GitHub Pages to host it. But the problem is that I couldn't use https for my own domain. And I am all for https everywhere.


## How to make it fast

Somehow I really wanted to get the 100/100 score in Google's PageSpeed Insights. I just wasn't happy with a not perfect score. And I got it :tada::

![Google PageSpeed Insights Score]({{ "/img/pagespeed.png" | absolute_url }})

I realized that it's not to hard but also not trivial to create a fast website. (At least for a small and easy page as mine)

All I did was:

### Inline CSS in the HTML file

This can be done by moving the main SCSS file to `_includes` and adding the following liquid code to the HTML head:

{% raw %}
```
<style>
  {% capture style %}
  {% include style.scss %}
  {% endcapture %}
  {{ style | scssify }}
</style>
```
{% endraw %}

Luckily my CSS is pretty small so I don't have to find out what of it is critical.

### Use [loadCSS](https://github.com/filamentgroup/loadCSS) to load additional resources asynchronously

I copied the `laodCSS.min.js` into my `_includes` folder and used it like this:

{% raw %}
```html
<script>
  {% include loadCSS.min.js %}

  /* Font-awesome */
  loadCSS("https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css");

  /* Google Fonts */
  loadCSS("https://fonts.googleapis.com/css?family=Fira+Sans+Condensed:900|Open+Sans|Source+Code+Pro");
</script>
```
{% endraw %}

But I don't want my website to depend on javascript, so I added a fallback if javascript is disabled:

```html
<!-- Fallback resource loading without javascript -->
<noscript>
  <!-- Font-awesome -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

  <!-- Google Fonts -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Fira+Sans+Condensed:900|Open+Sans|Source+Code+Pro">
</noscript>
```

### Use external resources

At first, I copied font-awesome into my project as they suggest on their "Get Started" page. But the GitHub Pages server gives the resource only a caching header of 10 minutes so font awesome needs to be downloaded from the browser way to often even though I would probably never change anything.

The solution was pretty easy... I just got fontawesome from Bootstrap's CDN:

```javascript
loadCSS("https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css");
```

## Conclusion

It was a nice project but I am glad that I am not a web developer. I just never get HTML and CSS to do what I want and need forever to build a working page. Probably I solved some problems in an ugly way or didn't do things the 'nice' way. I would love tips and advice!

