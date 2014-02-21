import os
import sys
import shlex
import subprocess
import sublime
import sublime_plugin

class RunPhpunitTestCommand(sublime_plugin.WindowCommand):
    def __init__(self, *args, **kwargs):
        super(RunPhpunitTestCommand, self).__init__(*args, **kwargs)

    def run(self, *args, **kwargs):
        file_name = self.window.active_view().file_name()
        phpunit_config_path = self.find_phpunit_config(file_name)

        file_name = file_name.replace(' ', '\ ')
        phpunit_config_path = phpunit_config_path.replace(' ', '\ ')

        self.run_in_terminal('cd ' + phpunit_config_path + ' && phpunit ' + file_name)

    def find_phpunit_config(self, file_name):
        phpunit_config_path = file_name
        found = False
        while found == False:
            phpunit_config_path = os.path.abspath(os.path.join(phpunit_config_path, os.pardir))
            found = os.path.isfile(phpunit_config_path + '/phpunit.xml') or phpunit_config_path == '/'
        return phpunit_config_path

    def run_in_terminal(self, command):
        osascript_command = 'osascript '
        osascript_command += '"' + sublime.packages_path() + '/User/run_command.applescript"'
        osascript_command += ' "' + command + '"'
        osascript_command += ' "PHPUnit Tests"'
        os.system(osascript_command)
        # subprocess.Popen("""osascript -e 'tell application "Sublime Text" to activate' """, shell=True)
