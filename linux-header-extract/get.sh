UNAME=$(uname -r)
VERSION=$(echo $UNAME |awk -F"-" '{print $NF}')
CUT=${UNAME/-/.}
CUT=${CUT/-neptune-$VERSION/}
curl -L https://steamdeck-packages.steamos.cloud/archlinux-mirror/sources/jupiter-main/linux-neptune-${VERSION}-${CUT}.src.tar.gz -o linux-pkg.tar.gz
tar -xvf linux-pkg.tar.gz
mv ./linux-neptune-* ./linux-pkg
rm ./linux-pkg.tar.gz
