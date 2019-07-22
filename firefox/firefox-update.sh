wget https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US --output-document=fflatest.tar.bz2

FFVERSION=$1
FFBUILD=$2

if [ "$FFVERSION" = "" ]; then
    echo "What version of FF do you need to update? (example 68)"
    return
fi
if [ "$FFBUILD" = "" ]; then
    echo "What build of FF do you need to update? (example 0b1)"
    return
fi

FFFILENAME="firefox-$FFVERSION.$FFBUILD.tar.bz2"

#sudo tar --strip-components=1 -C /opt/firefox-developer/ -xjvf ~/Downloads/$FFFILENAME
