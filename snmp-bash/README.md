# Schedule the SNMP OID data collection every min all the time

Put the below string in `crontab -e`

> `crontab` is to schedule cron jobs for the current user

```
* * * * * /home/bread/snmp-bash-tests/collect_mem.sh
```