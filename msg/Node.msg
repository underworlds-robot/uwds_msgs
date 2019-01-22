# Definition of an underworlds node
# Node types :
uint8 ENTITY=0
uint8 MESH=1
uint8 CAMERA=2

string id # The unique ID
string name # The human-friendly name
uint8 type # The node type
string parent # The parent node ID. Always non-empty, except for the root node
string[] children # The children IDs of this node, if any

geometry_msgs/PoseWithCovariance position # The position relative to parent
geometry_msgs/TwistWithCovariance velocity # The velocity relative to parent
geometry_msgs/AccelWithCovariance acceleration # The acceleration relative to parent

std_msgs/Time last_update # The last update time
std_msgs/Time last_observation # The last observation time

Property[] properties # The list of properties attached to this node
