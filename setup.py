from setuptools import setup, find_packages

setup(
    name='sui_code_generator',
    version='0.1.0',
    packages=find_packages(),
    include_package_data=True,
    package_data={
        'sui_code_generator': ['templates/*.move'],
    },
    entry_points={
        'console_scripts': [
            'generate_sui_contract=sui_code_generator.main:main',
        ],
    },
    install_requires=[
        # Add any dependencies here
    ],
)
