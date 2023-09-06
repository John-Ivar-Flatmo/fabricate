#!/bin/bash
##script to convert scad files to stl files
shopt -s globstar ##required for recursion
scriptDir="${PWD}"

##TOAD
##keep folder structure on output ##TODO-1

##DEPENDENCIES
echo "dependencies"
echo "	openscad"
echo "debian"
sudo apt install openscad

##VARIABLES
echo "variables"
inDir="$scriptDir/scad"
outDir="$scriptDir/stl"
echo ""

##CONVERT
echo "convert"
inArray=($inDir/**/*.scad)
for inFile in "${inArray[@]}"; do
echo "inputFile: $inFile"	##DEBUG
fileIn=$(basename "$inFile" .scad)
outFile="$outDir/$fileIn.stl"
echo "outputFile: $outFile"	##DEBUG
echo "$inFile -> $outFile"
openscad -o $outFile $inFile
done;
