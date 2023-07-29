# Contains both position and orientation (in quaternions)
# Position Unit: km, distance from the origin
geometry_msgs/Pose pose

# Contains both linear and angular components of velocity
# Linear Velocity Unit: km/hr
# Angular Velocity Unit: rad/sec
geometry_msgs/Twist velocity

# Contains both linear and angular components of acceleration
# Linear Acceleration Unit: km/hr^2
# Angular Acceleration Unit: rad/sec^2
geometry_msgs/Accel acceleration

# Contains both linear and angular components of the net force
# Force Unit: N
# Torque Unit: N*m
geometry_msgs/Wrench net_wrench
