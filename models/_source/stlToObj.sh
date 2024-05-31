#!/bin/bash
##script to convert stl files to obj files
scriptDir="${PWD}"

##TO-DO

##DEPENDENCIES
echo "dependencies"
echo "blender"
echo "debian"
sudo apt install blender

##VARIABLES
echo "variables"
inDir="$scriptDir/stl"
outDir="$scriptDir/../"
prepend="fabricate_"
echo ""

##CONVERT
echo "convert"
inArray=($inDir/**/*.stl)
for inFile in "${inArray[@]}"; do
echo "inputFile: $inFile"	##DEBUG
outFile="${inFile/stl/..}"	##replace folder
outFile="${outFile/.stl/.obj}" ##replace extension
echo "outputFile: $outFile"	##DEBUG
echo "$inFile -> $outFile"
mkdir -p $(dirname "$outFile")
blender --background --python "$scriptDir/blenderStlToObj.py" -- $inFile $outFile
done;
