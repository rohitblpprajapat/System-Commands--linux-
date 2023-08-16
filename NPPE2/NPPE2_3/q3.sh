#!/bin/bash

# In the lines that start with a digit, if there is a words "delta"(case sensitive) replace it with the word "gamma". Replace only the first occurrence of the word "delta" in the desired lines. The filename where the contents present are input.txt.

input_file="input.txt"

sed '/^[0-9]/{s/\bdelta\b/gamma/1}' "$input_file"