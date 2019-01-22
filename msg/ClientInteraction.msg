# Definition of a client interaction
#
# Interaction types :
uint8 READ = 1
uint8 WRITE = 2

string client_id
string world
uint8 type
std_msgs/Time last_activity
