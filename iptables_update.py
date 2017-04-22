#!/usr/bin/python
 
import os
 
def gettextoutput(cmd):
    """Return (status, output) of executing cmd in a shell."""
    pipe = os.popen('{ ' + cmd + '; } 2>&1', 'r')
    pipe = os.popen(cmd + ' 2>&1', 'r')
    text = pipe.read()
    if text[-1:] == '\n': text = text[:-1]
    return text
 
home_dyndns = "example.dyndns.org"
log_dyndns = "./new_home_ip_check.log"
last_dyndns = gettextoutput("cat " + log_dyndns)
cur_dyndns = gettextoutput("host " + home_dyndns)
 
print "Log: "+ last_dyndns
print "Cur: "+ cur_dyndns
 
if last_dyndns == cur_dyndns:
    print "IPs match, no restart necessary"
else:
    print "Updating last IP with current"
    os.system("echo '" + cur_dyndns + "' > " + log_dyndns)
    print "Restarting iptables to update"
    os.system("/etc/init.d/iptables restart")
