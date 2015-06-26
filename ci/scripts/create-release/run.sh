echo $PWD

export RELEASE_NAME=${RELEASE_NAME:-ardo-dev}
export RELEASE_VERSION=${RELEASE_VERSION:-0.1}
export RELEASE_FILE=${RELEASE_NAME}_${RELEASE_VERSION}.tgz


ls repo/

echo Creating a bosh release
cd repo
bosh -n create release --name $RELEASE_NAME --version $RELEASE_VERSION --force --with-tarball
#ls -al ./dev_releases/ardo-dev/ardo-(.+).tgz
