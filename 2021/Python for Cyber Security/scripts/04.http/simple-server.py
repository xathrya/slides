# python3 simple-server.py

from http.server import BaseHTTPRequestHandler, HTTPServer
import logging

class ReqHandler(BaseHTTPRequestHandler):
    def _set_response(self):
        self.send_response(200)
        self.send_header("Content-Type", "text/html")
        self.end_headers()
    
    def do_GET(self):
        logging.info("GET request\nPath: {}\nHeaders: \n---\n{}\n\n".format(str(self.path), str(self.headers)))
        self._set_response()
        self.wfile.write("GET request for {}".format(self.path).encode("utf-8"))

    def do_POST(self):
        content_length = int(self.headers["Content-Length"])
        post_data = self.rfile.read(content_length)
        logging.info("POST request\nPath: {}\nHeaders: \n---\n{}\n\nBody: \n---\n{}\n\n".format(str(self.path), str(self.headers), post_data.decode("utf-8")))
        self._set_response()
        self.wfile.write("POST request for {}".format(self.path).encode("utf-8"))

def run():
    logging.basicConfig(level=logging.INFO)
    address = ("0.0.0.0", 8000)
    httpd = HTTPServer(address, ReqHandler)
    logging.info("Starting HTTPD")

    try:
        httpd.serve_forever()
    except:
        pass

    httpd.server_close()
    logging.info("Stopping HTTPD")

if __name__ == "__main__":
    run()