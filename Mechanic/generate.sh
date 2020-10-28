#!/bin/bash


for filename_with_extension in *.scad
do
    echo "processing $filename_with_extension..."

    # remove file exctension to made file handling easier

    filename=${filename_with_extension%.*}

    # convert .tex to .png 

    openscad -o $filename.csg $filename_with_extension
done
