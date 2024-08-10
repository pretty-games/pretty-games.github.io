# delete existing content
rm -r -Force .\docs\*
rmdir -Force .\docs
mkdir docs

# build / generate static website
pushd .\src
hugo -t juice-bar
popd
# commit changes in docs
git add .\docs\*
