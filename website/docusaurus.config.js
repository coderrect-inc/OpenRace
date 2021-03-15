/** @type {import('@docusaurus/types').DocusaurusConfig} */
module.exports = {
  title: 'Coderrect OpenRace',
  tagline: 'Your multithreaded piece of mind, now open-sourced!',
  url: 'https://your-docusaurus-test-site.com',
  baseUrl: '/',
  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',
  favicon: 'img/coderrect-logo.png',
  organizationName: 'coderrect-inc', // Usually your GitHub org/user name.
  projectName: 'docusaurus', // Usually your repo name.
  themeConfig: {
    navbar: {
      title: 'Coderrect OpenRace',
      logo: {
        alt: 'Coderrect OpenRace',
        src: 'img/coderrect-logo.png',
      },
      items: [
        // NOTE: Since we are using doc-only mode
        // we don't need an entry for docs on navbar
        // {
        //   to: 'docs/',
        //   activeBasePath: 'docs',
        //   label: 'Docs',
        //   position: 'left',
        // },
        // NOTE: Now redirect to coderrect.com's blog.
        // Later we can have OpenRace's own blog.
        // { to: 'blog', label: 'Blog', position: 'left' },
        { to: 'https://coderrect.com/blog/', label: 'Blog', position: 'left' },
        {
          href: 'https://github.com/coderrect-inc/OpenRace',
          label: 'GitHub',
          position: 'right',
        },
      ],
    },
    footer: {
      style: 'dark',
      links: [
        {
          title: 'Docs',
          items: [
            {
              label: 'Style Guide',
              to: 'docs/',
            },
            {
              label: 'Second Doc',
              to: 'docs/doc2/',
            },
          ],
        },
        // TODO: where's our twitter?
        // {
        //   title: 'Community',
        //   items: [
        //     {
        //       label: 'Twitter',
        //       href: 'https://twitter.com/docusaurus',
        //     },
        //   ],
        // },
        {
          title: 'More',
          items: [
            {
              label: 'GitHub',
              href: 'https://github.com/coderrect-inc/OpenRace',
            },
            {
              label: 'Blog',
              to: 'blog',
            },
          ],
        },
      ],
      copyright: `Copyright © ${new Date().getFullYear()} My Project, Inc. Built with Docusaurus.`,
    },
  },
  presets: [
    [
      '@docusaurus/preset-classic',
      {
        docs: {
          sidebarPath: require.resolve('./sidebars.js'),
          // Please change this to your repo.
          editUrl:
            'https://github.com/coderrect-inc/OpenRace/edit/master/website/',
          // NOTE: The config below enables "doc-only mode" by redirecting docs to '/'
          routeBasePath: '/',
        },
        blog: {
          showReadingTime: true,
          // Please change this to your repo.
          editUrl:
            'https://github.com/facebook/docusaurus/edit/master/website/blog/',
        },
        theme: {
          customCss: require.resolve('./src/css/custom.css'),
        },
      },
    ],
  ],
};
