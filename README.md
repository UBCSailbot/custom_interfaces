# Custom Interfaces

UBC Sailbot's custom interfaces ROS package.

## External Interfaces

Used to communicate data between ROS packages.

| Topic                  | Type           | Publisher                | Subscriber                                  |
| ---------------------- | -------------- | ------------------------ | ------------------------------------------- |
| `ais_ships`            | AISShips       | AIS Receiver             | Local Pathfinding                           |
| `batteries`            | Batteries      | CAN Transceiver          | Local/Remote Transceiver                    |
| `desired_heading`      | DesiredHeading | Local Pathfinding        | Controller, Boat Simulator                  |
| `data_sensors`         | GenericSensors | CAN Transceiver          | Local/Remote Transceiver                    |
| `global_path`          | GlobalPath     | Local/Remote Transceiver | Local Pathfinding                           |
| `gps`                  | GPS            | CAN Transceiver          | Local/Remote Transceiver, Local Pathfinding |
| `mock_gps`             | GPS            | Boat Simulator           | CAN Transceiver                             |
| `filtered_wind_sensor` | WindSensor     | CAN Transceiver          | Local/Remote Transceiver, Local Pathfinding |
| `mock_wind_sensors`    | WindSensors    | Boat Simulator           | CAN Transceiver                             |
| `wind_sensors`         | WindSensors    | CAN Transceiver          | Local/Remote Transceiver                    |

## Internal Interfaces

Used to standardize conventions across external interfaces.

| Interface           | Used In                            |
| ------------------- | ---------------------------------- |
| HelperAISShip       | AISShips                           |
| HelperBattery       | Batteries                          |
| HelperGenericSensor | GenericSensors                     |
| HelperHeading       | DesiredHeading, GPS, HelperAISShip |
| HelperLatLon        | GlobalPath, GPS, HelperAISShip     |
| HelperSpeed         | GPS, HelperAISShip, WindSensor     |

## Resources

### Common Interfaces

The ROS2 [common_interfaces](https://github.com/ros2/common_interfaces/tree/humble) repository defines a set of
packages which contain common interface files. Since we are using the Humble version of ROS2, see the `humble` branch.
These interfaces can be used in this repository or as a reference for ideas and best practices.

| Package             | Possible Usage                     |
| ------------------- | ---------------------------------- |
| diagnostic_msgs     | Could be used for website sensors  |
| geometry_msgs       | Simulator, Local Pathfinding       |
| sensor_msgs         | CAN transceiver reference          |
| std_msgs            | Possible reference                 |
| std_srvs            | Possible reference                 |
| visualization_msgs  | Possible reference                 |

For more detail on the usefulness of each package, see [this issue comment](https://github.com/UBCSailbot/custom_interfaces/issues/3#issuecomment-1626875658).
