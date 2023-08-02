#!/bin/bash
##script to convert stl files to obj files
scriptDir="${PWD}"

##TOAD
#keep find recursivly and keep folder structure on output ##TODO-1

##DEPENDENCIES
echo "dependencies"
echo "blender"
echo "debian"
sudo apt install blender

##VARIABLES
echo "variables"
inDir="$scriptDir/stl"
outDir="$scriptDir/obj"
echo ""

##CONVERT
echo "convert"
stlArray=($inDir/*stl)
for stl in "${stlArray[@]}"; do
##echo "inputFile: $stl"	##DEBUG
fileIn=$(basename "$stl" .stl)
outFile="$outDir/$fileIn.obj"
##echo "outputFile: $outFile"	##DEBUG
echo "$stl -> $outFile"
blender --background --python "$scriptDir/blenderStlToObj.py" -- $stl $outFile
done;
