# List all the recipes.'
_list-recipes:
    @just --list

# Count the SLOCs in the project
@slocs:
    echo ""; echo "./examples/"
    tokei  ./examples/

# Run all the tests in the project
test:
    odin test examples -all-packages -vet -disallow-do -define:ODIN_TEST_SHORT_LOGS=true -define:ODIN_TEST_LOG_LEVEL=warning

# Provides system information
@system-info:
    version=$(odin version); echo "Version  :${version#*version}"
    echo "CPU Arch : {{ arch() }}"
    echo "# cores  : {{ num_cpus() }}"
    echo "OS       : {{ os() }}"

# Clean up the project
clean:
    rm -rf *.exe
    rm -rf *.pdb
    rm -rf public/

# Look for commented-out tests
@find-disabled-tests:
    -grep -n '//@(test)' *.odin
    -grep -n '//@(test)' */*.odin

# Vet the code in the project
vet:
    -odin check  -vet

# Generate output for all the example files
@run-examples:
    for example in examples/*/; do \
      echo "\$ odin run $example" > "$example/output.txt"; \
      odin run $example >>$example/output.txt; \
      md_file=$(basename $example); \
      if [ -f "content/docs/examples/$md_file.md" ]; then \
        touch "content/docs/examples/$md_file.md"; \
      fi; \
    done

# Preview the HTML documentation
@doc-preview: run-examples
    hugo server

# Generate the HTML documentation website
@doc-build: run-examples
    hugo

# Create an example
@add-example name:
    [ -f "content/docs/examples/{{ name }}.md" ] && { echo "Error: {{ name }} already exists!"; exit 1; } || true
    cp templates/xxx.md "content/docs/examples/{{ name }}.md"
    mkdir "examples/{{ name }}"
    cp templates/xxx.odin "examples/{{ name }}/{{ name }}.odin"
