---
id: doc-contribute-to-docs
title: Contribute to Docs
---

Once you have developed a new feature in Coderrect OpenRace, you should also reflect them to documentation.
Meanwhile, we also welcome all pull requests to help refine our existing docs.

This documentation describes everything about contributing to OpenRace documentation.

## Documentation overview

The documentation site for Coderrect OpenRace is generated using **Docusaurus** and hosted on **GitHub Page**.
All configurations, resources, and source code are placed under `OpenRace/website` ([here](https://github.com/coderrect-inc/OpenRace/tree/develop/website)).

The structure of the `website` folder is as follows:
- `docs/` contains all documentations written in markdown.
- `src/` contains custom pages and css files.
- `static/` contains all resources such as images.
- `docusaurus.config.js` is the configuration file for Docusaurus.
- `sidebars.js` is the file defining the sidebar structure.

Once anything under `OpenRace/website` is updated, a GitHub Action will be triggered to deploy the newest doc pages to branch `gh-pages` as GitHub Pages.
The script for building and deploying doc pages is under `OpenRace/.github/workflow/docs.yaml`.

## Adding new doc pages
Adding new doc pages is as simple as writing some markdown files. You can simply create or modify markdown files under the `docs/` folder.

For each markdown file, you need to **at least** add the followings at the top:
```markdown
---
id: doc-contribute-to-docs
title: Contribute to Docs
---
```
where you specify the id of this doc file and its title. The doc file id is used for referring to this doc file at other places (e.g. sidebar).

### Referring other docs
To refer to another doc page, you can simply use the syntax below:
```markdown
[link-name](relative/path/to/doc.md)
```

For example, suppose this doc page is placed under the same directory as the "Get Started with Coderrect OpenRace" page (`doc-get-started.md`), the code below will be rendered as:
```
This is a [link](doc-get-started.md) to the "Get Started" doc page.
```
> This is a [link](doc-get-started.md) to the "Get Started" doc page.

### Including images
Images are preferred to help explain things better.

To include images, we should put your images under `website/static/img/`. Then you can use markdown syntax or HTML to include images in your documentation.
```
Using markdown syntax to include images:
![coderrect-logo](/img/coderrect-logo.png)

Or using HTML, if you want more control (**notice the difference between the paths**):
<img src="img/coderrect-logo.png" width="30"/>
```

> Using markdown syntax to include images:
> ![coderrect-logo](/img/coderrect-logo.png)
> 
> Or using HTML, if you want more control (**notice the difference between the paths**):
> <img src="img/coderrect-logo.png" width="30"/>

### Updating sidebar

If you create some new doc pages, you should add them to the sidebar so that other people can access it.

The structure of sidebar is defined in `website/sidebars.js`, and the definition looks like below:
```
module.exports = {
  someSidebar: {
    'Quick Start': ['doc1', 'doc2'],
    'User Guide': ['doc3'],
    'Developer Guide': ['doc4', 'doc5', 'doc6'],
  },
};
```

Now if we want to add **this doc page** (id: `doc-contribute-to-docs`) to the sidebar, at the end of the "Developer Guide" category, we should modify `sidebars.js` as follow:
```
...
    'Developer Guide': ['doc4', 'doc5', 'doc6', 'doc-contribute-to-docs'],
...
```

### Using MDX

Docusaurus has built-in support for [MDX](https://mdxjs.com/), which allows you to write JSX within markdown files and render them as React components.

Refer to this [Docusaurus page](https://v2.docusaurus.io/docs/markdown-features/react) for more information.


## Testing locally (Optional)

If you would like to test your updated docs locally,
you need to install the following apps:
- Node.js version >= 12.13.0
- Yarn version >=1.5

Then you should be able to preview your docs using:
```bash
cd website
yarn install
yarn start
```