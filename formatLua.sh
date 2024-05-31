##move over to somtihng like prettier when it supports lua, consistancy is good
echo "DEPENDENCIES"
echo "cargo"

##echo "DEBIAN"
##sudo apt install cargo

echo "INSTALLING FORMATTER ##LOCALY TO THIS FOLDER"
cargo install --root "./" stylua
##--features lua51 ##the default so not added but may be needed in future

echo "RUNNING FORMATTER"
./bin/stylua ./
