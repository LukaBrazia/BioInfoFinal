#!/bin/bash

parallel --jobs 4 --eta ::: \
    "./pipeline.sh eco_gluc_1 eco" \
    "./pipeline.sh eco_gluc_2 eco" \
    "./pipeline.sh eco_gluc_3 eco" \
    "./pipeline.sh eco_glyc_1 eco" \
    "./pipeline.sh eco_glyc_2 eco" \
    "./pipeline.sh eco_glyc_3 eco" \
    "./pipeline.sh shi_gluc_1 shizo" \
    "./pipeline.sh shi_gluc_2 shizo" \
    "./pipeline.sh shi_gluc_3 shizo" \
    "./pipeline.sh shi_glyc_1 shizo" \
    "./pipeline.sh shi_glyc_2 shizo" \
    "./pipeline.sh shi_glyc_3 shizo"
