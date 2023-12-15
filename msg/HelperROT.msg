# Rate of turn of the ship, negative for CCW (min -127) turning and positive for CW (max +127) turning.
# Special unit: https://documentation.spire.com/ais-fundamentals/understanding-ais-performance-in-high-traffic-zones/
# = int(4.733 * sqrt(degrees/minute))
# -128 means no rot info
int8 rot
