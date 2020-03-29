.PHONY: all txt html clean

all: txt html

txt: draft-tcp-without-handshake-latest.txt

html: draft-tcp-without-handshake-latest.html

clean:
	rm -r draft-tcp-without-handshake-latest.txt draft-tcp-without-handshake-latest.html

draft-tcp-without-handshake-latest.txt: draft-tcp-without-handshake-latest.xml
	xml2rfc --text -o "$@" $<

draft-tcp-without-handshake-latest.html: draft-tcp-without-handshake-latest.xml
	xml2rfc --html -o "$@" $<
