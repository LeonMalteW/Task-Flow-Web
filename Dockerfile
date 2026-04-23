FROM busybox:latest
# Create a directory for the static content
WORKDIR /public
# Copy the static HTML file
COPY index.html .
# Serve the files on port 80
# -f: run in foreground, -p 80: port 80, -h /public: home directory
CMD ["httpd", "-f", "-p", "80", "-h", "/public"]
