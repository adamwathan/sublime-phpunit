# Sublime PHPUnit

Super quick and dirty Sublime Text command for running the currently open text file.

Just stick `phpunit.py` and `run_command.applescript` in your `Packages/User` directory and you're good to go.

Map `run_phpunit_test` in your key bindings file to run:

```
    { "keys": ["alt+t"], "command": "run_phpunit_test"}
```
