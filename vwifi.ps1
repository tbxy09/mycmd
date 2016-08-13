$timestamp = Get-Date
Write-Output $timestamp
netsh wlan set hostednetwork mode=disallow
netsh wlan set hostednetwork mode=allow 

## Register the HNetCfg library (once)
## regsvr32 hnetcfg.dll

# Create a NetSharingManager object
$m = New-Object -ComObject HNetCfg.HNetShare

# List connections
$m.EnumEveryConnection |% { $m.NetConnectionProps.Invoke($_) }

# Find connection
$c = $m.EnumEveryConnection |? { $m.NetConnectionProps.Invoke($_).Name -eq "无线网络连接" }

# Get sharing configuration
$config = $m.INetSharingConfigurationForINetConnection.Invoke($c)

# Enable sharing (0 - public, 1 - private)
$config.EnableSharing(0)

# See if sharing is enabled
Write-Output $config.SharingEnabled

# See the role of connection in sharing
# 0 - public, 1 - private
# Only meaningful if SharingEnabled is True
Write-Output $config.SharingType

# Find connection
$c = $m.EnumEveryConnection |? { $m.NetConnectionProps.Invoke($_).Name -eq "无线网络连接 4" }
Write-Output $c
# Get sharing configuration
$config = $m.INetSharingConfigurationForINetConnection.Invoke($c)

# Enable sharing (0 - public, 1 - private)
$config.EnableSharing(1)

# See if sharing is enabled
Write-Output $config.SharingEnabled

# See the role of connection in sharing
# 0 - public, 1 - private
# Only meaningful if SharingEnabled is True
Write-Output $config.SharingType

#start wifi
netsh wlan start hostednetwork




