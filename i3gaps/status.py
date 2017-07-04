from datetime import timedelta
import psutil
import subprocess

# strip and format uptime values out of uptime output
with open('/proc/uptime', 'r') as f:
    uptime_seconds = float(f.readline().split()[0])
    uptime_string = str(timedelta(seconds = uptime_seconds))
    uptime_string = uptime_string.split(':')[:2]
    uptime_string = ''.join(uptime_string[0].split(',')) + \
            ' hours ' + uptime_string[1] + ' minutes'

# I want to add GPU info at some point with values scraped
# out of nvidia-smi
#data = subprocess.check_output('/usr/bin/nvidia-smi', '')

# figure out how much memory we're using
memory = psutil.virtual_memory()
memory = format(memory.used/1000000000, ',.1f') + \
        '/' + format(memory.total/1000000000, ',.1f') + \
        'gb (' + str(memory.percent) + '%)'

# the following text ends up on your i3bar
# TODO: Make downspeed and upspeed accurate
print "Uptime: %s | Mem Used: %s | Down: 0kb | Up: 0kb" % (uptime_string, memory)

exit(0)
