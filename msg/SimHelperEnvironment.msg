# Direction that the wind is going TOWARDS. Note that this is difference from the WindSensor type
# in custom_interfaces, where WindSensor.direction gives us the direction where the wind is coming
# FROM (basically a 180 degree phase shift in the velocity direction).
#
# Contains both linear and angular components of the velocity, but the angular component is not used.
# Linear Velocity Unit: km/hr
geometry_msgs/Twist wind_velocity

# Direction that the current is going TOWARDS.
#
# Contains both linear and angular components of the velocity, but the angular component is not used.
# Linear Velocity Unit: km/hr
geometry_msgs/Twist current_velocity
