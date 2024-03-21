#!/bin/bash

# Iterate over each markdown file in the current directory
for file in *; do
    NAME="$(basename $file service)"
    # Copy a template YAML file to the new directory
    sed -i "s|codilime/opentelemetry.io/|codilime/opentelemetry.io/tree/main/content/en/docs/demo/services/$NAME|g" $file/backstage.yaml #> "$file/backstage.yaml"
done