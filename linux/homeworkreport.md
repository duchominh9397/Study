###REPORT

###Date report: Wed 2025-07-09 21:15:52

###Excersice name: excerside1.md

report details:

Create 3 username withname a.b.c:

```
    sudo useradd a
    sudo adduser b
    sudo adduser c
```
should have password for them and one account should disable or lock:

```
    sudo passwd a
    sudo usermod -L c
```
have an account with name **exploit**( account 4th ) should have permission write data into folder **/home/b** and **/home/c** with permission **3** and **5** to write and reading data:

```
    sudo adduser exploit
    sudo chmod 730 /home/b 
    sudo chmod 750 /home/c
    sudo usermod -aG b exploit
    sudo usermod -aG c exploit
```
account a should have default shell is /bin/sh.

account b,c and exploit should default shell is /bin/bash:
```
    sudo usermod -s /bin/sh a
    sudo usermod -s /bin/bash b
    sudo usermod -s /bin/bash c
    sudo usermod -s /bin/bash exploit

```
account a should have home directory with name /home/data/test with 750:
```
    sudo mkdir /home/data
    sudo mkdir /home/data/test
    sudo chown a:a /home/data/test
    sudo chmod 750 /home/data/test
```
account exploit should have owner the home directory of account a:
```
    sudo chown exploit:a /home/data/test
```
account b and c should have permission write data into home directory account a:
```
    sudo chmod 753 /home/data/test
```
