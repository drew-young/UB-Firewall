## RULES FOR UB 2022 COMPETITION
##Located at /etc/pf.conf
touch /etc/pf.conf
#Skip loopback
echo set skip on lo0 >> pf.conf

#Block all from out to in
echo block in proto { udp tcp } from any to any  >> pf.conf

#Allow SOME in to out, SSH, DNS, HTTP, HTTPS, NTP
echo pass out proto { tcp udp } to port { 22 53 80 123 443 }  >> pf.conf


#####10.3.1.60 - DNS
echo pass in quick proto { udp tcp } from any to 10.3.1.60 port { 53 } >> pf.conf
echo pass out quick proto { udp tcp } from 10.3.1.60 to any port { 53 } >> pf.conf


#####10.3.1.60 - LDAP 
echo pass in quick proto { udp tcp } from any to 10.3.1.60 port { 389 } >> pf.conf
echo pass out quick proto { udp tcp } from 10.3.1.60 to any port { 389 } >> pf.conf


#####10.3.2.10 - HTTP
echo pass in quick proto { udp tcp } from any to 10.3.2.10 port { 8000 } >> pf.conf
echo pass out quick proto { udp tcp } from 10.3.2.10 to any port { 8000 } >> pf.conf


###10.3.1.10 - PING
echo pass in quick proto { udp tcp } from any to 10.3.1.10 port { 7 } >> pf.conf
echo pass out quick proto { udp tcp } from 10.3.1.10 to any port { 7 } >> pf.conf


###10.3.1.10 - SSH
echo pass in quick proto { udp tcp } from any to 10.3.1.10 port { 22 } >> pf.conf
echo pass out quick proto { udp tcp } from 10.3.1.10 to any port { 22 } >> pf.conf


###10.3.2.3 - SQL
echo pass in quick proto { udp tcp } from any to 10.3.2.3 port { 3306 } >> pf.conf
echo pass out quick proto { udp tcp } from 10.3.2.3 to any port { 3306 } >> pf.conf

###10.3.2.4 - FTP
echo pass in quick proto { udp tcp } from any to 10.3.2.4 port { 21 } >> pf.conf
echo pass out quick proto { udp tcp } from 10.3.2.4 to any port { 21 } >> pf.conf


###10.3.1.40 - PING
echo pass in quick proto { udp tcp } from any to 10.3.1.40 port { 7 } >> pf.conf
echo pass out quick proto { udp tcp } from 10.3.1.40 to any port { 7 } >> pf.conf

###10.3.1.40 - SSH
echo pass in quick proto { udp tcp } from any to 10.3.1.40 port { 22 } >> pf.conf
echo pass out quick proto { udp tcp } from 10.3.1.40 to any port { 22 } >> pf.conf


###10.3.1.50 - PING
echo pass in quick proto { udp tcp } from any to 10.3.1.50 port { 7 } >> pf.conf
echo pass out quick proto { udp tcp } from 10.3.1.50 to any port { 7 } >> pf.conf

###10.3.1.50 - SSH
echo pass in quick proto { udp tcp } from any to 10.3.1.50 port { 22 } >> pf.conf
echo pass out quick proto { udp tcp } from 10.3.1.50 to any port { 22 } >> pf.conf

####10.3.2.2 - HTTP
echo pass in quick proto { udp tcp } from any to 10.3.2.2 port { 80 } >> pf.conf
echo pass out quick proto { udp tcp } from 10.3.2.2 to any port { 80 } >> pf.conf

###10.3.1.70 - WINRM 5986
echo pass in quick proto { udp tcp } from any to 10.3.1.70 port { 5986 } >> pf.conf
echo pass out quick proto { udp tcp } from 10.3.1.70 to any port { 5968 } >> pf.conf

###10.3.1.80 - WINRM 5986
echo pass in quick proto { udp tcp } from any to 10.3.1.80 port { 5986 } >> pf.conf
echo pass out quick proto { udp tcp } from 10.3.1.80 to any port { 5968 } >> pf.conf

#Allow some traffic outbound again
echo pass out proto { tcp udp } from any to port { 22 53 80 123 443 } >> pf.conf