# Sublime PHPUnit

Super quick and dirty Sublime Text command for running the currently open test file. Scans up the directory tree to find the closest phpunit.xml file and runs phpunit from there. If it can't find one, it just runs phpunit from `/`. Good enough for me.

Just stick `git clone` this repo into your `~/Library/Application Support/Sublime Text 3/Packages` directory and you're good to go.

You can find the commands in the command palette under "Sublime PHPUnit", or map any of these commands to whatever shortcuts you want:

```
run_phpunit_test
run_phpunit_tests_in_dir
run_single_phpunit_test
```
