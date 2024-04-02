base=$1
suffix=$2
shift 2

while (( "$#" >= 2 ))
do
	if wget $base$2$suffix ; then
		echo $base$2$suffix >> completed.txt
	else
		echo $base$2$suffix >> failed.txt
	fi
	shift
done
