awk -F','  'NR>=2 {if($17=="SFO") print$15}' flightdelay2007.csv | head -3| sed '1i ArrDelay' | csvlook > first3sfo.csv

cut -d',' -f18 flightdelay2007.csv | sort | uniq -c | sort -nr -k1,1 | head -3 | awk 'BEGIN{printf "%-6s %-3s\n","Dest","Flght_Cnt"} {printf "%6d %-3s\n" ,$1,$2}' | csvlook

echo 'This is my script, Pankaj'
