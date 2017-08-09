# Sublime PHPUnit

Convenient Sublime Text commands for running your PHPUnit tests. Scans up the directory tree to find the closest phpunit.xml file and runs phpunit from there. If it can't find one, it just runs phpunit from `/`.

## Installation

Installation is as simple as cloning the repository into your Sublime Text install's `Packages` folder:

```bash
git clone https://github.com/adamwathan/sublime-phpunit /Library/Application\ Support/Sublime\ Text\ 3/Packages/sublime-phpunit
```
## Available Commands

You can find the commands in the command palette under "Sublime PHPUnit", or map any of these commands to whatever shortcuts you want:

Here are some example keybindings:

```json
[
    { "keys": ["alt+t"], "command": "run_phpunit_test"},
    { "keys": ["super+alt+t"], "command": "run_single_phpunit_test"},
    { "keys": ["super+shift+t"], "command": "run_phpunit_tests_in_dir"},
    { "keys": ["super+shift+ctrl+t"], "command": "run_all_phpunit_tests"},
]
```

## Using iTerm2 instead of Terminal.app

By default, this package uses macOS's built-in Terminal.app. If you want to use iTerm2, you can do so by setting `"phpunit-sublime-terminal": "iTerm"` in your settings.

```
{
    "phpunit-sublime-terminal": "iTerm",
}
```
