#! /bin/bash
CHALLENGE_DIR="membership-sprint"

if [ ! -d "$CHALLENGE_DIR" ]; then
    mkdir $CHALLENGE_DIR
fi

cd $CHALLENGE_DIR

for project in "login" "airbnb" "amazon" "todo"; do
    reponame="membership-${project}"
    if [ ! -d $reponame ]; then
        git clone "https://github.com/connect-foundation/$reponame"
    fi
done
