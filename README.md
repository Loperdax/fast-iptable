# Fast iptable
This is a bash file that executes tunnel commands automatically \n
این اسکریپت میاد دستورات iptable رو براتون اتوماتیک انجام میده.

# One Click run
Run this command and enter your External destination IP. Done!
این اسکریپت رو اجرا کنید و آی پی خارج رو وارد کنید. تمام!
```
bash -c "$(curl -sSL https://raw.githubusercontent.com/Loperdax/fast-iptable/main/tunnel.sh)"
```

Info:
  This script has nothing to do with port 22 of the server and redirects all ports other than the Ssh port to the external IP.
  این اسکریپت تمامی پورت های سرور ایران به جز 22 رو به پورت سرور خارج به روش iptable هدایت می کنه.
  این یعنی اتفاقی برای پورت ssh سرور های ایران و خارج شما نمی افته!
