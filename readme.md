# npm-run-completion

## Overview

This is a Zsh plugin that provides command completion for npm run commands. It will automatically parse your package.json scripts and provide autocompletion suggestions for available npm scripts when you type npm run in your terminal. This plugin is designed to be used with the zplug plugin manager.

## Installation

To install this plugin with zplug, add the following line to your `.zshrc`:

```shell
zplug "banditlev/npm-run-completion", as:command, use:npm-run-completion.zsh
```

Then, run `zplug install` to install the plugin, and restart your terminal or run `source ~/.zshrc` to reload your configuration.
