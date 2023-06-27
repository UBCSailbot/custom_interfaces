# Custom Interfaces

UBC Sailbot's custom interfaces ROS package.

## External Interfaces

Used to communicate data between ROS packages.

| Topic                  | Type           | Publisher                | Subscriber                                  |
| ---------------------- | -------------- | ------------------------ | ------------------------------------------- |
| `ais_ships`            | AISShips       | AIS Receiver             | Local Pathfinding                           |
| `batteries`            | Batteries      | CAN Transceiver          | Local/Remote Transceiver                    |
| `desired_heading`      | DesiredHeading | Local Pathfinding        | Controller                                  |
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
