#!/usr/bin/python3
import sys
import tqdm

input_file = sys.argv[1]
output_file = sys.argv[2]

line_count = 0

with open(input_file, 'r') as f, open(output_file, 'w') as out:
    for line in tqdm.tqdm(f, desc=f'Fixing fastq file {input_file}', unit='lines'):
        if line_count % 6 in [1, 4]:
            out.write(line[:-1])
        else:
            out.write(line)
    
        line_count += 1

