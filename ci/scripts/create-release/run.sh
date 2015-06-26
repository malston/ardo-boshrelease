echo $PWD

export RELEASE_NAME=${RELEASE_NAME:-ardo}
export RELEASE_VERSION=${RELEASE_VERSION:-1+dev.1}
export RELEASE_FILE=$RELEASE_NAME-$RELEASE_VERSION.tgz


ls repo/

echo Creating a bosh release
cd repo
bosh -n create release --name $RELEASE_NAME --version $RELEASE_VERSION --force
ls -al ../repo/dev_releases/
ls -al ../repo/dev_releases/ardo

ls -al dev_releases/
ls -al ./dev_releases/ardo
#ls -al ./dev_releases/ardo/ardo-(.+).tgz
