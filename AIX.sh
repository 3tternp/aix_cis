#!/bin/sh
printf "Enter name of File:"
read -r name
lssec -f /etc/security/user -s default -a mindiff  >> $name
lssec -f /etc/security/user -s default -a minage   >> $name
lssec -f /etc/security/user -s default -a maxage   >> $name
lssec -f /etc/security/user -s default -a minlen   >> $name
lssec -f /etc/security/user -s default -a minalpha >> $name
lssec -f /etc/security/user -s default -a minother >> $name
lssec -f /etc/security/user -s default -a maxrepeats >> $name
lssec -f /etc/security/user -s default -a histexpire >> $name
lssec -f /etc/security/user -s default -a histsize >> $name
lssec -f /etc/security/user -s default -a maxexpired >> $name
lssec -f /etc/security/user -s default -a minloweralpha >> $name
lssec -f /etc/security/user -s default -a minupperalpha >> $name
lssec -f /etc/security/user -s default -a mindigit >> $name
lssec -f /etc/security/user -s default -a minspecialchar >> $name
lssec -f /etc/security/login.cfg -s usw -a pwd_algorithm >> $name
lsuser -a login rlogin daemon >> $name
lsuser -a login rlogin bin >> $name
lsuser -a login rlogin sys >> $name
lsuser -a login rlogin adm >> $name
lsuser -a login rlogin nobody >> $name
lsuser -a login rlogin uucp >> $name
lsuser -a login rlogin lpd >> $name
lssec -f /etc/security/login.cfg -s default -a logininterval >> $name
lssec -f /etc/security/login.cfg -s default -a logindisable >> $name
lssec -f /etc/security/login.cfg -s default -a loginreenable >> $name
lssec -f /etc/security/login.cfg -s usw -a logintimeout >> $name
lssec -f /etc/security/login.cfg -s default -a logindelay >> $name
lssec -f /etc/security/user -s default -a loginretries >> $name
lssec -f /etc/security/user -s root -a rlogin >> $name
lssec -f /etc/security/user -s root -a sugroups -a su >> $name
lsitab qdaemon>> $name
lsitab lpd>> $name
lsitab piobe>> $name
lsitab dt>> $name
lsitab rcnfs>> $name
grep "^#start[[:blank:]]/usr/sbin/snmpd" /etc/rc.tcpip>> $name
grep "^#start[[:blank:]]/usr/sbin/dhcpcd" /etc/rc.tcpip>> $name
grep "^#start[[:blank:]]/usr/sbin/dhcprd" /etc/rc.tcpip>> $name
grep "^#start[[:blank:]]/usr/sbin/dhcpsd" /etc/rc.tcpip>> $name
grep "^#start[[:blank:]]/usr/sbin/autoconf6" /etc/rc.tcpip>> $name
grep "^#start[[:blank:]]/usr/sbin/gated" /etc/rc.tcpip>> $name>> $name
grep "^#start[[:blank:]]/usr/sbin/mrouted" /etc/rc.tcpip>> $name
grep "^#start[[:blank:]]/usr/sbin/named" /etc/rc.tcpip>> $name
grep "^#start[[:blank:]]/usr/sbin/routed" /etc/rc.tcpip>> $name
grep "^#start[[:blank:]]/usr/sbin/rwhod" /etc/rc.tcpip>> $name
grep "^#start[[:blank:]]/usr/sbin/dpid2" /etc/rc.tcpip>> $name
grep "^#start[[:blank:]]/usr/sbin/hostmibd" /etc/rc.tcpip>> $name
grep "^#start[[:blank:]]/usr/sbin/snmpmibd" /etc/rc.tcpip>> $name
grep "^#start[[:blank:]]/usr/sbin/aixmibd" /etc/rc.tcpip>> $name
grep "^#start[[:blank:]]/usr/sbin/ndpd-router" /etc/rc.tcpip>> $name
grep "^#telnet[[:blank:]]" /etc/inetd.conf>> $name
grep "^#exec[[:blank:]]" /etc/inetd.conf>> $name
grep "^#daytime[[:blank:]]" /etc/inetd.conf>> $name
grep "^#shell[[:blank:]]" /etc/inetd.conf>> $name
grep "^#cmsd[[:blank:]]" /etc/inetd.conf>> $name
grep "^#ttdbserver[[:blank:]]" /etc/inetd.conf>> $name
grep "^#time[[:blank:]]" /etc/inetd.conf>> $name
grep "^#login[[:blank:]]" /etc/inetd.conf>> $name
grep "^#talk[[:blank:]]" /etc/inetd.conf>> $name
grep "^#ftp[[:blank:]]" /etc/inetd.conf>> $name
grep "^#chargen[[:blank:]]" /etc/inetd.conf>> $name
grep "^#discard[[:blank:]]" /etc/inetd.conf>> $name
grep "^#dtspc[[:blank:]]" /etc/inetd.conf>> $name
grep "^#pcnfsd[[:blank:]]" /etc/inetd.conf>> $name
grep "^#rstatd[[:blank:]]" /etc/inetd.conf>> $name
grep "^#rusersd[[:blank:]]" /etc/inetd.conf>> $name
grep "^#rwalld[[:blank:]]" /etc/inetd.conf>> $name
grep "^#sprayd[[:blank:]]" /etc/inetd.conf>> $name
grep "^#klogin[[:blank:]]" /etc/inetd.conf>> $name
grep "^#kshell[[:blank:]]" /etc/inetd.conf>> $name
grep "^#rquotad[[:blank:]]" /etc/inetd.conf>> $name
grep "^#tftp[[:blank:]]" /etc/inetd.conf>> $name
grep "^#pop3[[:blank:]]" /etc/inetd.conf>> $name
grep "^#finger[[:blank:]]" /etc/inetd.conf>> $name
grep "^#instsrv[[:blank:]]" /etc/inetd.conf>> $name
ls -l /usr/bin/rcp | awk '{print $1}'>> $name
ls -l /usr/bin/rlogin | awk '{print $1}'>> $name
ls -l /usr/bin/rsh | awk '{print $1}'>> $name
find / -name ".netrc" -print>> $name
find / -name ".rhosts" -print>> $name
no -a |grep "ipsrcrouteforward[[:blank:]]=[[:blank:]]0">> $name
egrep "root|adm" /var/adm/cron/cron.allow>> $name
grep "root" /etc/ftpusers>> $name
lssec -f /etc/security/login.cfg -s default -a herald |grep '^default[[:blank:]]herald="Unauthorized use of this system is prohibited.'>> $name
tail -2 /etc/syslog.conf>> $name
lslpp -L |egrep "openssh|ssl">> $name
grep "^PermitRootLogin[[:blank:]]" /etc/ssh/sshd_config>> $name
grep "^Protocol[[:blank:]]" /etc/ssh/ssh_config>> $name
grep "^Banner[[:blank:]]" /etc/ssh/sshd_config>> $name
grep "^IgnoreRhosts[[:blank:]]" /etc/ssh/sshd_config>> $name
grep "^HostbasedAuthentication[[:blank:]]" /etc/ssh/sshd_config>> $name
find / -name ".shosts" -print>> $name
grep "^LogLevel[[:blank:]]" /etc/ssh/sshd_config>> $name
grep "^ClientAliveCountMax[[:blank:]]" /etc/ssh/sshd_config>> $name
grep "^Ciphers [[:blank:]]" /etc/ssh/sshd_config>> $name
grep "^PermitUserEnvironment[[:blank:]]" /etc/ssh/sshd_config>> $name
grep "^(AllowUsers|AllowGroups|DenyUsers|DenyGroups)[[:blank:]]"/etc/ssh/sshd_config>> $name
ls -l /etc/ssh/ssh_config | awk '{print $1 " " $3 " " $4 " " $9}'>> $name
grep "SmtpGreetingMessage=mailerready" /etc/mail/sendmail.cf>> $name
ls -l /etc/mail/sendmail.cf | awk '{print $1 " " $3 " " $4 " " $9}'>> $name
ls -ld /var/spool/mqueue | awk '{print $1 " " $3 " " $4 " " $9}'>> $name
lslpp -L |grep bos.net.nfs.client>> $name
lslpp -L |grep "bos.net.nis.client">> $name
grep "^+" /etc/passwd /etc/group>> $name
cat /var/yp/securenets>> $name
grep "^#community[[:blank:]]*private" /etc/snmpd.conf>> $name
grep "^#community[[:blank:]]*public" /etc/snmpd.conf>> $name
grep "^community[[:blank:]]" /etc/snmpd.conf>> $name
grep "^#start[[::space::]]/usr/sbin/inetd" /etc/rc.tcpip>> $name
grep "^#start[[::space::]]/usr/sbin/portmap" /etc/rc.tcpip>> $name
lslpp -L |grep "netsec.options">> $name
cat /etc/hosts.deny>> $name
grep "^<service name>[[:blank::]]" /etc/inetd.conf |grep "tcpd">> $name
ls -ld /etc/security | awk '{print $1 " " $3 " " $4 " " $9}'>> $name
lsitab -a |egrep "respawn:/usr/sbin/getty|on:/usr/sbin/getty">> $name
lslpp -L |grep "clic">> $name
rpm -q sudo>> $name
trustchk -p TE>> $name
find / \( -fstype jfs -o -fstype jfs2 \) \( -perm -04000 -o -perm -02000 \) -type f -ls>> $name
find / \( -fstype jfs -o -fstype jfs2 \) \( -type d -o -type f \) -perm -o+w -ls>> $name
