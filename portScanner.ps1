# Define the target host and port range
$target_host = "127.0.0.1"
$port_range = 80, 443, 21, 22, 3389, 445, 1433, 3389

# Scan each port in the range
foreach ($port in $port_range) {
  # Create a TCP client
  $client = New-Object System.Net.Sockets.TcpClient
  # Set a timeout value of 1 second
  $client.SendTimeout = 1000
  # Attempt to connect to the port
  try {
    $client.Connect($target_host, $port)
    # Print the result
    Write-Host "Port $port is open"
  }
  catch {
    # Print the result
    Write-Host "Port $port is closed"
  }
  # Close the client
  $client.Close()
}
#This program will scan the specified host for open ports in the given range. For each port, it will print a message indicating whether the port is open or closed. This is a very basic port scanner, and can be expanded and modified for more advanced functionality.




