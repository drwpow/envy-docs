# Envy Docs v1.0

Quick and easy Markdown documentation, hosted via
**[GitHub Pages](https://pages.github.com/)** ([directions below](#user-content-how-to-deploy)). 

## Demo

**[dangodev.github.io/envy-docs](http://dangodev.github.io/envy-docs/)**

### Version History

**1.0** *(25 May 2014)*
*   Initial styling
*   TODO: responsive styles

### Contents

1.  Set Up
2.  How to Write
3.  How to Customize
4.  How to Deploy
5.  Credits

## Set Up

1. `gem install middleman`
2. `git clone git@github.com:dangodev/envy-docs.git`
3. `bundle`
4. `middleman s`
5. `open http://localhost:4567`

You’ll be working with the files in `/source/` only.

If you don’t know where to keep the docs in relation to your codebase, I
recommend keping them **separate from the codebase you plan on documenting**
(ie, having `/my-app` and  `/my-app-docs` side-by-side). In most cases it’s
easier to treat this documentation as a separate app with its own revisions
and history, and you’ll only be copying build files over when you’re ready to
publish.

## How to Write

Make a new file, and save it as an `.md` file.

To add your new markdown file to the navigation, include the following header
(with dashes):

```
---
title: Page Title
type: page
priority: 3
---
```

*  `title`: Declares the page title in the navigation and browser title
*  `type`: This must be set to *page* in order to be added to the menu.
*  `priority`: This sets the order in the left navigation (if it conflicts
    with another item, they are sorted alphabetically)

*Can I put files in sub-folders?*

Yes, you can put `.md` files anywhere. But the current version doesn’t support
sub-children in the left navigation; regardless of their path they will all
appear as individual navigation items.

*Does it matter what I name the .md files?*

Nope.

*Isn’t there more setup than that?*

Nope.

## How to Customize

### Colors
There are a few color options readily available in
`assets/stylesheets/application.sass`.

Beyond that, hack it up! All the styles are in `application.sass`, and you’ll
find the layout file itself in `layouts/layout.haml`.

### Syntax Highlighting
You can change `Github` to any of the other available
[themes](https://github.com/middleman/middleman-syntax#css) in
`assets/stylesheets/code.html.erb`.

You’re also free to contribute any
[Rouge](https://github.com/jneen/rouge)-style syntax file if you need more
customization.

## How to Deploy

### GitHub Pages
We’re assuming that this is documentation for another repo, so you’re going
to be pushing your build files to an empty orphan branch named **gh-pages**
in your repo.

Navigate to your documentation directory, and run

```
middleman build
```

to generate static HTML. Then simply copy everything in this directory to an
empty orphan branch named **gh-pages** in your app (`git checkout --orphan
gh-pages`), and push to GitHub (`git push --set-upstream origin gh-pages`).
The rest is magic!

View your public docs at: `http://[github-handle].github.io/[repo-name]`.

*Will this work for private repos?*

Yes, this will work for private repos. The repo will still be entirely
private, but the docs will be accessible to anyone (including the associated
GitHub handle and repo name, unless you’ve configured a
[domain](https://help.github.com/articles/setting-up-a-custom-domain-with-github-pages)).

### Other Hosting

Simply run `middleman build` within your doc directory, and copy the static
HTML files anywhere for ready-to-go documentation.

## Credits

This uses [Middleman](http://middlemanapp.com/) to build, starting with Drew
Barontini’s [Baseman](https://github.com/drewbarontini/baseman) configuration.
It also features Drew’s navigation helper.
