# see: https://portswigger.net/burp/extender/api/index.html

# Setup Python environment
#   - open primary tab Extender
#   - open secondary tab Options
#   - on Python Environment, select jython jar file 

# Add extension:
#   - open primary tab Extender
#   - open tab Extension
#   - click on Add
#   - on Extension Details, choose Extension Type as Python
#   - select extension file

from burp import IBurpExtender
from burp import IHttpListener
from burp import ISessionHandlingAction

import json 
import hashlib 
import hmac 

KEY = 'Sup3rSecr3tKEY'

class BurpExtender(IBurpExtender, IHttpListener, ISessionHandlingAction):
    def registerExtenderCallbacks (self, callbacks):
        self.helpers = callbacks.getHelpers()

        callbacks.setExtensionName("Archonlab Cool Project")
        callbacks.registerHttpListener(self)
        # callbacks.registerSessionHandlingAction(self)

        print("Hello World!")
        return 
    
    def calculate (self, data):
        print("   [-] calculate")
        return hmac.new(bytes(KEY), msg = bytes(data), digestmod=hashlib.sha256).hexdigest().upper()
        
    def processHttpMessage (self, toolFlag, msgIsRequest, msginfo):
        # only process request
        if not msgIsRequest:
            return

        print("[+] processing request")

        # get the informations
        print("   [-] get component")
        request = msginfo.getRequest()
        reqinfo = self.helpers.analyzeRequest(request)
        headers = reqinfo.getHeaders()
        body    = self.helpers.bytesToString(request[reqinfo.getBodyOffset():])

        # manipulate header, add token
        headerstr = ""
        for header in headers:
            # check hostname
            if "host" in header.lower():
                if"httpbin" in header.lower():
                    print("   [-] processing httpbin")
                else:
                    print("   [-] not httpbin, skip")
                    return 
            
            # append
            headerstr = headerstr + header + "\n"
        
        print("   [-] add token")
        headerstr += "token: 5eae31769dee76fc202d7d75bb5b6d\n"
        headers = headerstr.splitlines()

        # manipulate request, calculate signature
        print("   [-] add signature")
        j = json.loads(body)
        j["signature"] = self.calculate(j["data"])
        body    = json.dumps(j)

        # replace current request
        request = self.helpers.buildHttpMessage(headers, body)
        msginfo.setRequest(request)