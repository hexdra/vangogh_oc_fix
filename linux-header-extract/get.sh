if ls ./linux-pkg
    then rm -rf ./linux-pkg
fi
UNAME=$(uname -r)
VERSION=$(echo $UNAME | awk -F '-' '{print $5}')
CUT=$(echo $UNAME | awk -F '-' '{print $1"."$2"."$3}' | rev | sed 's/\./-/' | rev)
curl -L https://steamdeck-packages.steamos.cloud/archlinux-mirror/sources/jupiter-main/linux-neptune-${VERSION}-${CUT}.src.tar.gz -o linux-pkg.tar.gz
tar -xvf linux-pkg.tar.gz
mv ./linux-neptune-$VERSION ./linux-pkg
rm ./linux-pkg.tar.gz
