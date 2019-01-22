# Definition of a client
#
# Client types :
uint8 UNDEFINED = 0
uint8 READER = 1
uint8 MONITOR = 2
uint8 PROVIDER = 3
uint8 FILTER = 4

string name # The client name
string id # The unique ID
uint8  type # The client type
