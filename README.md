# Simple script to update your public IP with NameCheap

If you have registered your domain with NameCheap, but do not have a 100% guaranteed fixed public IP, then you can use this script to update your public IP address with NameCheap

## How to use?

Simply clone this repo to wherever you want. Then edit ```update_ip.sh``` with your favorite editor. Change the following constants:

+ ```DDNS_PAS``` to your NameCheap dynamic DNS password. You have to enable DDNS in your NameCheap panel.
+ ```HOST``` to the subdomain you wish to have a IP record. use ```\*``` for wildcard. Be careful with the special characters, remember to use the escape sign.
+ ```DOMAIN``` to your fully qualified domain name.

Run this script, it will get your current public IP address and compare it with the file ```IP``` in the same directory. If it's not matching, then it will update your IP record and save it to the local file.

Then add this script to your task manager, such as cron:
```bash
crontab -u <your user name> -e
```
Append the following lines in it, the example shows to run this script per hour at minute 5.
```bash
5 * * * * <path to this repo>/update_ip.sh
```

