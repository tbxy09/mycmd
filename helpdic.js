conn = new Mongo("192.168.1.102:27017");
db = conn.getDB("Tb_xy09");
var docp=db.helpdict.find({"kw":"%~dp0"})
doc2 = { "_id" : ObjectId("57a304f9d646603a0491e2b3"), "kw" : [ "%~dp0", "%cd%" ], "ref" : "httppath" }
var doc = docp.hasNext()?docp.next():null
printjson(doc.ref)
