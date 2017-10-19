if [ ! -d tdesktop ]; then
    git clone -b dev https://github.com/telegramdesktop/tdesktop.git
fi

if [ $# -eq 0 ]
then
    docker build . -t tdesktop
elif [ $1 = "dependencies2" ]; then
    docker build . -t tdesktop --build-arg STAGE=$1 --build-arg FROM=test
else 
    docker build . -t tdesktop --build-arg STAGE=$1
fi
