# Sublime PHPUnit

Super quick and dirty Sublime Text command for running the currently open test file. Scans up the directory tree to find the closest phpunit.xml file and runs phpunit from there. If it can't find one, it just runs phpunit from `/`. Good enough for me.

Just stick `phpunit.py` and `run_command.applescript` in your `Packages/User` directory and you're good to go.

Map `run_phpunit_test` in your key bindings file to run:

```
    { "keys": ["alt+t"], "command": "run_phpunit_test"}
```
