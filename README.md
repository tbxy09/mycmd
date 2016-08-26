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

