import sys
from sui_code_generator.code_generator import (
    generate_contract,
    add_function,
    add_conditional,
    add_loop,
    generate_specific_contract
)

def main():
    if len(sys.argv) < 2:
        print("Usage: generate_sui_contract <command> [options]")
        sys.exit(1)

    command = sys.argv[1]

    if command == 'generate':
        if len(sys.argv) != 3:
            print("Usage: generate_sui_contract generate <filename>")
            sys.exit(1)
        filename = sys.argv[2]
        generate_contract(filename)
    elif command == 'add_function':
        if len(sys.argv) != 4:
            print("Usage: generate_sui_contract add_function <filename> <function_name>")
            sys.exit(1)
        filename = sys.argv[2]
        function_name = sys.argv[3]
        add_function(filename, function_name)
    elif command == 'add_conditional':
        if len(sys.argv) != 3:
            print("Usage: generate_sui_contract add_conditional <filename>")
            sys.exit(1)
        filename = sys.argv[2]
        add_conditional(filename)
    elif command == 'add_loop':
        if len(sys.argv) != 3:
            print("Usage: generate_sui_contract add_loop <filename>")
            sys.exit(1)
        filename = sys.argv[2]
        add_loop(filename)
    elif command.startswith('generate_'):
        if len(sys.argv) != 3:
            print(f"Usage: generate_sui_contract {command} <filename>")
            sys.exit(1)
        filename = sys.argv[2]
        contract_type = command.split('_')[1]
        generate_specific_contract(filename, contract_type)
    else:
        print(f"Unknown command: {command}")
        sys.exit(1)

if __name__ == '__main__':
    main()
