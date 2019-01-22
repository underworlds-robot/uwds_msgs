# Definition of a situation
#
# Situation types :
uint8 GENERIC=0
uint8 FACT=1
uint8 ACTION=2
uint8 INTERNAL=3


string id # The unique ID
uint8 type # The situation type
string description # The situation description
float64 confidence # The situation confidence
std_msgs/Time last_update # The last update
std_msgs/Time start # The start time of the situation
std_msgs/Time end # The end time of the situation
Property[] properties # The list of properties attached to this situation
