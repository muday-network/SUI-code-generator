import unittest
import os
from sui_code_generator.code_generator import generate_contract, add_function

class TestCodeGenerator(unittest.TestCase):
    def setUp(self):
        self.test_filename = 'test_contract.move'
        if os.path.exists(self.test_filename):
            os.remove(self.test_filename)

    def tearDown(self):
        if os.path.exists(self.test_filename):
            os.remove(self.test_filename)

    def test_generate_contract(self):
        generate_contract(self.test_filename)
        self.assertTrue(os.path.exists(self.test_filename))

    def test_add_function(self):
        generate_contract(self.test_filename)
        add_function(self.test_filename, 'new_function')
        with open(self.test_filename, 'r') as f:
            content = f.read()
            self.assertIn('public new_function(): u64', content)

if __name__ == '__main__':
    unittest.main()
