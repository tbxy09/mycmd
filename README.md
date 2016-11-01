## mongo import 
1. update json file
- dailycommand.json for collection dailycommand
- issuedict.json for collection issuedict
- helpdict.json for collection helpdict

2. run savetomongo
```
savetomongo json collection
```
rightnow has error msg, just ignore the error msg, still work

3. run helpdict.js to check the result
```
mongo %remotemongo% helpdict.js
```

### copyutil
1. python and window command line interaction:
    
2. unicode <-> string
    [pycodec.py](d:\\mycmd\\pycodec.py)

### visturalwifi####
vwifi.ps1
vwifi_r.ps1 #run vwifi.ps1 and output to file
1. run in powershell
2. ./vwifi_r.ps1
3. change ssid and password
    - netsh wlan stop hostednetwork
    - netsh wlan set hostednetwork mode=allow ssid=mywifi key=wodewifi keyUsage=persistent
    - netsh wlan start hostednetwork
4.show password
    netsh wlan show hostednetwork security




