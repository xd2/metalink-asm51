#!/bin/sh

# Function to display usage information
usage() {
    echo "Usage: $0 source.asm [source2.asm ...]"
    echo "Each file should be compliant with MS-DOS 8.3 filename format."
    echo "The script runs ASM51.EXE in DOSBox for each file and generates a log file."
}

# Check if at least one file has been provided
if [ "$#" -eq 0 ]; then
    echo "Error: No files provided." > /dev/stderr
    usage
    exit 1
fi

# Iterate over each command line argument
for FILE in "$@"
do
    # Check if filename is compliant with MS-DOS 8.3 format
    if ! echo "$FILE" | grep -qE '^[^.]{1,8}(\.[^.]{1,3})?$'; then
        echo "Error: Filename '$FILE' is not compliant with MS-DOS 8.3 format."  > /dev/stderr
        usage
        exit 1
    fi

    echo Assembling $FILE

    # Extract the base filename without extension
    BASE="${FILE%.*}"

    # Run DOSBox with the ASM51 command
    dosbox -c "c:\ASM51\ASM51.EXE ${FILE}>${BASE}.log" -c "exit" -exit -conf /opt/dosbox.conf > /dev/null

    # Print the content of the log file
    echo
    cat "${BASE}.log"
    echo
done
