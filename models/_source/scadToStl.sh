#!/bin/bash
##script to convert scad files to stl files
shopt -s globstar ##required for recursion
scriptDir="${PWD}"

##TO-DO

##DEPENDENCIES
echo "dependencies"
echo "	openscad"
echo "debian"
sudo apt install openscad

##VARIABLES
echo "variables"
inDir="$scriptDir/openscad"
outDir="$scriptDir/stl"
echo ""

##CONVERT
echo "convert"
inArray=($inDir/**/*.scad)
for inFile in "${inArray[@]}"; do
echo "inputFile: $inFile"	##DEBUG
##fileIn=$(basename "$inFile" .scad)
##outFile="$outDir/$fileIn.stl"
outFile="${inFile/openscad/stl}"	##replace folder
outFile="${outFile/.scad/.stl}" ##replace extension
echo "outputFile: $outFile"	##DEBUG
echo "$inFile -> $outFile"
mkdir -p $(dirname "$outFile")
openscad -o "$outFile" "$inFile"
done;
