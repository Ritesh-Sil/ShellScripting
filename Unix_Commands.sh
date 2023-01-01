file /bin/
ls -l /bin/
file /bin/skill
ls ../../
file ../../bashrc
file ../../etc/bashrc
wc /etc/passwd
wc -l /etc/passwd
wc -w /etc/passwd
wc -c /etc/passwd
wc
hello
hello ritesh
ctrl+d

date
cal
cal 02 2022
cal 2023
echo this is it
echo $HOME
echo $PATH

who --> All the logged in user
whoami --> The current user

man mkdir
man date
man man

whatis date
mkdir --help


awk '/Texas/{print}' adidas.txt
awk '/Texas/' adidas.txt
awk '{print $0}' adidas.txt
awk '{print $1}' adidas.txt
awk '{print $1,$2,$NF}' adidas.txt
awk '{print $4,"and", $2,"and ", $NF}' adidas.txt
who | awk '{print $3}'
sort adidas.txt | awk '{print $NF}' | uniq
ls -lrt ../../../etc | awk '{print $NF, $5, $6, $7}'
ls -lrt ../../../etc | awk 'NR!=1{print $NF, $5, $6, $7}'

awk -F '|' '{print $2}' adidas_delimitted.txt
tail -5 /etc/passwd | awk -F ':' '{print $1, $NF}'

awk -F '\t' '{print $9=$9+5000,"from",  $NF}' adidas.txt
awk -F '\t' '/In-store/{print $9=$9+5000,"from",  $NF}' adidas.txt

 awk -F '\t' '/Outlet/{print $9=$9+5000,"from",  $NF} ;/In-store/{print $9=$9+100000, "from", $NF}' adidas.txt
 
 
 
{
        print $1,"Works at", $NF

}


awk -f file1.awk adidas.txt


/Outlet/{print $9=$9+5000,"from",  $NF} ;/In-store/{print $9=$9+100000, "from", $NF}
awk -f file2.awk adidas.txt

awk '{print NR,$0}' adidas.txt
awk 'NR==2,NR==5{print NR,$0}' adidas.txt
awk 'NR==2||NR==5{print NR,$0}' adidas.txt
awk '$9>5000{print $0}' adidas.txt

awk '{total = $1+$2+$3, print $0, total}' file_name.txt

awk 'BEGIN {print "\nHey There!!"};{print $0};END{print "\nBye Dear!!"}' adidas.txt

awk 'BEGIN{print "The # of rows"};{count++};END{print count}' adidas.txt

awk 'BEGIN{FS="|"; OFS=":"}{print $1,$4}' data.txt
awk 'BEGIN{FS="\n";RS=""; OFS="@"; ORS="|"};{print $1, $3}' file_name.txt 
