from robot.libraries.BuiltIn import BuiltIn
import re

class TestLibrary(object):
    def __init__(self):
        try:
            self._sl = BuiltIn().get_library_instance("SeleniumLibrary")
        except RuntimeError:
            BuiltIn.import_library("SeleniumLibrary")
            self._sl = BuiltIn().get_library_instance("SeleniumLibrary")

    def text_should_be(self, expected):
        self._sl.wait_until_element_is_visible("id:myHeader")
        result = self._sl.get_text("id:myHeader")
        if expected != result:
            raise AssertionError("Text should be '%s' but the result was '%s'" % (expected, result))