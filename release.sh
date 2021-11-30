env GOOS=linux GOARCH=amd64 go build -o injectee_linux_amd64 . && \
tar cvfz injectee_linux_amd64.tar.gz injectee_linux_amd64