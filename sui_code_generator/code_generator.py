import os

TEMPLATE_DIR = os.path.join(os.path.dirname(__file__), 'templates')

def get_template(template_name):
    template_path = os.path.join(TEMPLATE_DIR, template_name)
    with open(template_path, 'r') as template_file:
        return template_file.read()

def generate_contract(filename):
    template_content = get_template('contract_template.move')
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

def add_conditional(filename):
    conditional_template = get_template('conditional_template.move')
    with open(filename, 'a') as contract_file:
        contract_file.write(conditional_template)
    print(f"Conditional statement added to {filename}")

def add_loop(filename):
    loop_template = get_template('loop_template.move')
    with open(filename, 'a') as contract_file:
        contract_file.write(loop_template)
    print(f"Loop added to {filename}")

def generate_specific_contract(filename, contract_type):
    template_name = f'{contract_type}_contract_template.move'
    template_content = get_template(template_name)
    with open(filename, 'w') as contract_file:
        contract_file.write(template_content)
    print(f"{contract_type.capitalize()} smart contract generated: {filename}")
