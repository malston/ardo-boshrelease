echo $PWD

TASK_ROOT_DIR=$PWD

sudo apt-get install zip

export RELEASE_NAME=${RELEASE_NAME:-ardo-dev}
export RELEASE_VERSION=${RELEASE_VERSION:-0.1}
export RELEASE_FILE=${RELEASE_NAME}_${RELEASE_VERSION}.tgz

export TILE_RELEASE_NAME=p-${TILE_RELEASE_NAME:-$RELEASE_NAME}
export TILE_RELEASE_VERSION=${TILE_RELEASE_NAME}_${PRODUCT_VERSION}

echo Creating a pivnet tile
mkdir -p /tmp/tile-results/metadata /tmp/tile-results/releases

cp $TASK_ROOT_DIR/release/$RELEASE_FILE /tmp/tile-results/releases
cp $TASK_ROOT_DIR/repo/tile-config/metadata/*yml /tmp/tile-results/metadata

cd /tmp/tile-results

zip -r ${TILE_RELEASE_VERSION}.pivotal metadata releases

mv ${TILE_RELEASE_VERSION}.pivotal $TASK_ROOT_DIR

ls -al $TASK_ROOT_DIR
