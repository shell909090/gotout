### Makefile --- 

## Author: shell@deb64.lan
## Version: $Id: Makefile,v 0.0 2013/02/07 05:32:20 shell Exp $
## Keywords: 
## X-URL: 
TARGET=cligo echogo

all: clean build

build: $(TARGET)

test:
	go test ./tunnel

clean:
	rm -f $(TARGET)

echogo: echo.go
	go build -o $@ $^
	strip $@
	chmod 755 $@

cligo: cli.go
	go build -o $@ $^
	strip $@
	chmod 755 $@

### Makefile ends here
