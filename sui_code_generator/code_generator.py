import os

TEMPLATE_PATH = os.path.join(os.path.dirname(__file__), 'templates', 'contract_template.move')

def generate_contract(filename):
    with open(TEMPLATE_PATH, 'r') as template_file:
        template_content = template_file.read()

    with open(filename, 'w') as contract_file:
        contract_file.write(template_content)

    print(f"Smart contract generated: {filename}")

def add_function(filename, function_name):
    function_template = f"""
    public {function_name}(): u64 {{
        // Function implementation goes here
        0
    }}
    """

    with open(filename, 'a') as contract_file:
        contract_file.write(function_template)

    print(f"Function '{function_name}' added to {filename}")
