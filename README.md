# Custom Interfaces

UBC Sailbot's custom interfaces ROS package. To add `custom_interfaces` to another ROS package, follow the instructions
[here](https://docs.ros.org/en/humble/Tutorials/Beginner-Client-Libraries/Custom-ROS2-Interfaces.html#test-the-new-interfaces).

The terminology that we use in this document are the following:

- **External Interface**: An interface used to communicate data between nodes and ROS packages.
- **Internal Interface**: An interface used to standardize conventions across external interfaces. Standards are
documented in the `.msg` or `.srv` file associated with that interface.

## Project-wide Interfaces

ROS messages and services used across many ROS packages in the project.

### Project-wide External Interfaces

| Topic                  | Type           | Publisher                | Subscriber(s)                               |
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

### Project-wide Internal Interfaces

| Interface           | Used In                            |
| ------------------- | ---------------------------------- |
| HelperAISShip       | AISShips                           |
| HelperBattery       | Batteries                          |
| HelperGenericSensor | GenericSensors                     |
| HelperHeading       | DesiredHeading, GPS, HelperAISShip |
| HelperLatLon        | GlobalPath, GPS, HelperAISShip     |
| HelperSpeed         | GPS, HelperAISShip, WindSensor     |
| HelperROT           | HelperAISShip                      |
| HelperDimension     | HelperAISShip                      |

## Boat Simulator Interfaces

ROS messages and services used in our [boat simulator](https://github.com/UBCSailbot/boat_simulator).

### Boat Simulator External Interfaces

| Topic                  | Type           | Publisher                | Subscriber(s)                               |
| ---------------------- | -------------- | ------------------------ | ------------------------------------------- |
| `mock_kinematics`      | SimWorldState  | Simulator Physics Engine | Simulator Visualizer                        |

### Boat Simulator Actions

| Action                  | Client Node              | Server Node                    |
| ----------------------- | ------------------------ | ------------------------------ |
| SimRudderActuation      | Simulator Physics Engine | Simulator Low Level Controller |
| SimSailTrimTabActuation | Simulator Physics Engine | Simulator Low Level Controller |

## Resources

### Common Interfaces

The ROS2 [common_interfaces](https://github.com/ros2/common_interfaces/tree/humble) repository defines a set of
packages which contain common interface files. Since we are using the Humble version of ROS2, see the `humble` branch.
These interfaces can be used in this repository or as a reference for ideas and best practices.

| Package             | Possible Usage                     |
| ------------------- | ---------------------------------- |
| diagnostic_msgs     | Could be used for website sensors  |
| geometry_msgs       | Simulator, Local Pathfinding       |
| sensor_msgs         | Reference for CAN Transceiver      |
| std_msgs            | Reference                          |
| std_srvs            | Reference                          |
| visualization_msgs  | Reference                          |

For more detail on the usefulness of each package, see [this issue comment](https://github.com/UBCSailbot/custom_interfaces/issues/3#issuecomment-1626875658).
If you are interested in creating your own custom message or service, see the [ROS Humble documentation](https://docs.ros.org/en/humble/Tutorials/Beginner-Client-Libraries/Custom-ROS2-Interfaces.html).
