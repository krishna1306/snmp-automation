from pysnmp import hlapi
import quicksnmp

community_string = "snmptest"
host = "192.168.122.11"
oid_list = ["iso.3.6.1.4.1.9.9.48.1.1.1.5.1"]

# Using SNMPv2c, we retrieve the hostname of the remote device
print(quicksnmp.get(host, oid_list, hlapi.CommunityData(community_string)))