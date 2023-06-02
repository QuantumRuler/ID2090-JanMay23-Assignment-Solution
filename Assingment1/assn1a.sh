#! /usr/bin/bash
#ae22b062
if [ $# -eq 0 ]; then
echo "pls Enter a file"
exit

fi

export d=$1
xn=`sed -n -e '2s\[^0-9.]\ \g;2p' $d | awk '{print $1}' `
yn=`sed -n -e '3s\[^0-9.]\ \g;3p' $d | awk '{print $1}'`

a=`sed -n -e '4s\[^0-9.]\ \g;4p' $d | awk '{print $1}'`
b=`sed -n -e '4s\[^0-9.]\ \g;4p' $d | awk '{print $2}'`
c=`sed -n -e '4s\[^0-9.]\ \g;4p' $d | awk '{print $3}'`


#sed -n -e '5,$s\[^0-9.]\ \g;5,$p' $d
sed -n -e '5,$s\[^0-9.]\ \g;5,$p' $d | awk -v xn=$xn -v yn=$yn -v a=$a -v b=$b -v c=$c '{z=a*$xn+b*$yn+c;printf( "%.5f %.5f %.5f\n",$ xn ,$ yn,z)} ' >data-output.txt
echo "data-output-1.txt"
