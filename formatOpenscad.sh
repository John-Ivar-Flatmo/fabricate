##move over to somtihng like prettier when it supports lua, consistancy is good
echo "DEPENDENCIES"
echo "wget p7zip"

##echo "DEBIAN"
##sudo apt isntall wget p7zip

echo "DOWNLOADING FORMATTER"
wget -c https://github.com/hugheaves/scadformat/releases/latest/download/linux.zip -O "./bin/scadformat.zip"

echo "UNZIPPING"
7z x -ao"s" -o"./bin/" "./bin/scadformat.zip"

echo "RUNNING FORMATTER"
find ./models/_source/openscad/ -type f -name "*.scad" -exec ./bin/scadformat "{}" \;	##format
find ./models/_source/openscad/ -type f -name "*.scadbak" -exec rm "{}" \;	##remove backups






