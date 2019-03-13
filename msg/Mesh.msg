# Definition of a mesh

string id # The unique ID of the mesh
shape_msgs/MeshTriangle[] triangles # The triangles of the mesh
geometry_msgs/Point[] vertices # The vertices of the mesh
std_msgs/ColorRGBA[] vertex_colors # The vertex colors
std_msgs/Time last_update # The last update time
Property[] properties # The list of properties attached to this mesh
