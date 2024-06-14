# Sui Code Generator

This package generates Sui blockchain smart contract code in the Move programming language.

## Installation

```bash
pip install .
```
Usage
Generate a new contract
```sh
generate_sui_contract generate <filename>
```
Add a function to an existing contract
```sh
generate_sui_contract add_function <filename> <function_name>
```


With this structure and code, you have a basic foundation for a Python package that can generate and modify Sui blockchain smart contract code. You can extend this further by adding more templates, enhancing the code generation logic, and expanding the test suite.


```sh
generate_sui_contract generate_token <filename>
generate_sui_contract generate_nft <filename>
generate_sui_contract generate_voting <filename>
generate_sui_contract generate_marketplace <filename>
generate_sui_contract generate_staking <filename>
generate_sui_contract generate_lending <filename>
generate_sui_contract generate_escrow <filename>
generate_sui_contract generate_governance <filename>
generate_sui_contract generate_auction <filename>
generate_sui_contract generate_multisig <filename>
generate_sui_contract generate_lottery <filename>
generate_sui_contract generate_subscription <filename>

generate_sui_contract add_conditional <filename>
generate_sui_contract add_loop <filename>


```