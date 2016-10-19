mmark=mmark
xml2rfc=xml2rfc

all: txt html
txt: no-response-issue.txt
html: no-response-issue.html

no-response-issue.xml: no-response-issue.md
	$(mmark) -page -xml2 no-response-issue.md > no-response-issue.xml

no-response-issue.html: no-response-issue.xml
	$(xml2rfc) --html no-response-issue.xml

no-response-issue.txt: no-response-issue.xml
	$(xml2rfc) --text no-response-issue.xml

clean:
	rm -f no-response-issue.{txt,html,xml}
