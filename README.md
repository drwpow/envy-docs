# Envy Docs

Quick and easy Markdown documentation for projects.

This is most easily hosted via **[GitHub Pages](https://pages.github.com/)**,
and you can follow the [directions below](#user-content-how-to-deploy)
However, or all
other use cases, you can really do whatever you’d like with the documentation
since it will just spit out static HTML documentation.

**Contents**

1.  Set Up
2.  How to Write
3.  How to Customize
4.  How to Deploy
5.  Credits

## Set Up

1. `gem install middleman`
2. `bundle` 
3. `middleman s`
4. `open http://localhost:4567`

You’ll be working with the files in `/source/` only.

*Note: if this documentation is for a repo and you plan on publishing to
GitHub pages, then I recommend keeping these files in another place
**outside** of that directory. You’ll understand why when you go to deploy
this.*

## How to Write

Save any `.md` file in this document and it will automatically be added to the
left navigation. Just be sure to include the following header for each page,
making changes where necessary:

```
---
title: Page Title
type: page
priority: 3
---
```

*  `title`: Declares the page title in the navigation and browser title
*  `type`: This must be set to *page* in order to be added to the menu.
*  `priority`: This sets the order in the left navigation (if it conflicts with another item, they are sorted alphabetically)

*Can I put files in sub-folders?*

Yes, you can put `.md` files anywhere. But the current version doesn’t support
sub-children in the left navigation; regardless of their path they will all
appear as individual navigation items.

*Does it matter what I name the .md files?*

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
Deployment is easy! But just make sure you’ve **committed** your latest
version of your code—you’re going to be temporarily wiping out your code
directory to publish this to a new branch.

1.  Navigate to your local copy of the repo you’ll be hosting this from.
2.  Make a new branch named **gh-pages** with `git checkout --orphan gh-pages`
    *(this branch can’t be named anything else)*
3.  Within this folder, commit your code, and then **delete** everything in
    this repo except for the `.git` repo itself.
    *(you can avoid doing this, but it will be more hassle—you’ll have to
    commit every file manually in the next step.)*
4.  Navigate back to your **documentation** directory and run
    `middleman build`.
5.  Take everything generated to the `/build` directory and copy into the root
    directory of the repo this will be hosted from.
6.  Commit everything to your newly-created **gh-pages** branch.
7.  **Publish** to GitHub and you’re done! (pushing for the first time may
    take up to 10 minutes to view live)

View your public docs at: http://[github-handle].github.io/[repo-name]

*Note: this method has some annoyment of having to manually copy over build
files into another repo for pushing.

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