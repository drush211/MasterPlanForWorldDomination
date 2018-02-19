"""
Module used to handle brew interactions.
"""

import requests
import tempfile

from subprocess import check_call, CalledProcessError


class Brew(object):
    """
    Class used to manage brew operations.
    """

    def __init__(self):
        try:
            check_call("brew --help")
        except CalledProcessError:
            self.__install_brew()

    def __install_brew(self):
        """
        Install the homebrew utility.
        """
        response = requests.get("https://raw.githubusercontent.com/Homebrew/install/master/install")
        response.raise_for_status()
        with tempfile.NamedTemporaryFile("w") as named_temp_file:
            named_temp_file.file.write(response.text)
            named_temp_file.file.flush()
            check_call([
                "/usr/bin/ruby",
                "-e",
                named_temp_file.name
            ])

    def install(self, module):
        """
        Install a module using the brew utility.
        :param module: The module to install.
        """
        check_call([
            "brew",
            "install",
            module
        ])
