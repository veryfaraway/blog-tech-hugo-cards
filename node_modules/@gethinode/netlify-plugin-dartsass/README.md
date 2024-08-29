# Netlify Build Plugin: Install Dart Sass

This plugin installs [Dart Sass][dartsass] to enable the latest features of the Sass language for your [Hugo][hugo] deployments. It is a convenience plugin that ensures the correct binary is available within all build contexts of [Netlify][netlify].

## Usage

<!-- You can install this plugin in the Netlify UI from this [direct in-app installation link](https://app.netlify.com/plugins/netlify-plugin-dartsass/install) or from the [Plugins directory](https://app.netlify.com/plugins). -->

For file-based installation, add the following lines to your `netlify.toml` file:

```toml
[build.environment]
  # see index.js for default value
  DART_SASS_VERSION = "1.71.1" 

[[plugins]]
  package = "netlify-plugin-dartsass"
```

Note: The `[[plugins]]` line is required for each plugin, even if you have other plugins in your `netlify.toml` file already.

To complete file-based installation, from your project's base directory, use npm, yarn, or any other Node.js package manager to add the plugin to `devDependencies` in `package.json`.

```bash
npm install -D @gethinode/netlify-plugin-dartsass
```

## How it works

This plugin prepends an installation script prior to your regular Netlify build command. This ensures the Dart Sass binary compatible with Hugo is installed in Netlify's runner. You could simply add these installation steps to your build file manually, however, you would have to do so for each build context. By enabling this plugin, the binary is available to all build contexts, which include production deploys, deploy previews, and branch deploys.

The following installation script is prepended to your current build command, where `${version}` is obtained from your build environment (`DART_SASS_VERSION`):

```bash
curl -LJO https://github.com/sass/dart-sass/releases/download/${version}/dart-sass-${version}-linux-x64.tar.gz && \
tar -xf dart-sass-${version}-linux-x64.tar.gz && \
rm dart-sass-${version}-linux-x64.tar.gz && \
export PATH=/opt/build/repo/dart-sass:$PATH`
```

## Credits

This plugin is inspired by the following instructions and repositories:

- [Dart Sass installation instructions for Netlify][hugo_dart_netlify] by Joe Mooring / Hugo team
- [netlify-plugin-hugo-cache-resources][plugin_cache] by [Cassius de Leeuwe][cassius]

<!-- Links -->
[hugo]: https://gohugo.io
[hugo_dart_netlify]: https://gohugo.io/hugo-pipes/transpile-sass-to-css/#netlify
[cassius]: https://github.com/cdeleeuwe
[plugin_cache]: https://github.com/cdeleeuwe/netlify-plugin-hugo-cache-resources
[dartsass]: https://sass-lang.com/dart-sass/
[netlify]: https://netlify.com
