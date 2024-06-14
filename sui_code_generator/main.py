import sys
from sui_code_generator.code_generator import generate_contract, add_function

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
    else:
        print(f"Unknown command: {command}")
        sys.exit(1)

if __name__ == '__main__':
    main()
