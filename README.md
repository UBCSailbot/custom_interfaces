# Custom Interfaces

UBC Sailbot's custom interfaces ROS package

Helper messages are prefixed with ```Helper```

## Custom Messages

| Interface  | Publisher | Subscriber |
| --------   | -------   | -------      |
| GPS  | CAN transceiver   | Local/remote transceiver, local pathfinding    |
| WindSensors | CAN transceiver    | Local/remote transceiver, local pathfinding   |
| AISShips | AIS Receiver    | Local pathfinding   |
| GlobalPath | Local/remote transceiver   | Local pathfinding   |
| DesiredHeading | Local pathfinding | Controller   |
