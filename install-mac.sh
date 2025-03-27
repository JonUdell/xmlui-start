cd app && \
curl -L https://github.com/JonUdell/sqlite-server/releases/download/v0.0.1/sqlite-server-mac-arm.tar.gz | tar -xz && \
mv sqlite-server-mac-arm sqlite-server && \
chmod +x sqlite-server && \
xattr -d com.apple.quarantine sqlite-server 2>/dev/null || true && \
./sqlite-server & sleep 1 && open http://localhost:8080
