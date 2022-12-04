import socket

# Define the target host and port range
target_host = "www.example.com"
port_range = range(1, 1025)

# Scan each port in the range
for port in port_range:
    # Create a socket object
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    # Set a timeout value of 1 second
    sock.settimeout(1)
    # Return a result code: 0 if the port is open, 1 if it is closed
    result = sock.connect_ex((target_host, port))
    # Print the result
    if result == 0:
        print("Port {} is open".format(port))
    else:
        print("Port {} is closed".format(port))
    # Close the socket
    sock.close()