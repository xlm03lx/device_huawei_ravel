echo $1
rootdir="$PWD"
# ---------------------------------

dirs="system/bt"

for dir in $dirs ; do
        cd $rootdir
        cd $dir
        echo "Reverting $dir patches..."
        git reset --hard
        git clean -f -d
        echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdir
