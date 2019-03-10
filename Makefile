
README.md: header.md items $(wildcard items/*)
	cat header.md > README.md
	@for f in $$(ls items | sort -f); do echo >> README.md; cat items/$$f >> README.md; done
