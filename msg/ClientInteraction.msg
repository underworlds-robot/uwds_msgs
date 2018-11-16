# Definition of a client interaction
#
# Interaction types :
# -	READ = 1
# -	WRITE = 2

string client_id
string world
uint8 type
std_msgs/Time last_activity
