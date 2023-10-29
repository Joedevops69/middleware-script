 dir_name=$1
echo $1  # this recuperate the first arguement
echo $#  # number of arguement provided
echo $*  # all the arguement provided

mkdir $dir_name
ls
touch $dir_name/report.log
cat $dir_name/report.log
echo " hello " >> $dir_name/report.log

