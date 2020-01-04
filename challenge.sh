#! /bin/bash
CHALLENGE_DIR="challenge"

if [ ! -d "$CHALLENGE_DIR" ]; then
    mkdir $CHALLENGE_DIR
fi

cd $CHALLENGE_DIR

for i in {1..16}; do
    reponame="day$i-challenge"
    if [ ! -d $reponame ]; then
        git clone "https://github.com/connect-foundation/$reponame"
    fi
done
