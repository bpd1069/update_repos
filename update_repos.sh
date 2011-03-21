cd ..;
for i in `find . -maxdepth 2 -name .git`; do
    echo $i;
    echo;
    echo;
    cd "${i/\/.git/}";
    git pull;
    echo "$i";
    cd -;
done
