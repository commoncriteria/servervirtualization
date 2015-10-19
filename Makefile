IN = input
OUT = output
TRANS = transforms
SV_XML=$(IN)/servervirtualization.xml
ESR_XML=$(IN)/esr.xml
TABLE=$(OUT)/servervirtualization-table.html
SIMPLIFIED=$(OUT)/servervirtualization-table-reqs.html
SV_HTML=$(OUT)/servervirtualization.html
ESR_HTML=$(OUT)/servervirtualization-esr.html
SV_OP_HTML=$(OUT)/servervirtualization-optionsappendix.html
SV_RELEASE_HTML=$(OUT)/servervirtualization-release.html
OUTPUTS=$(TABLE) $(SIMPLIFIED) $(SV_HTML) $(SV_OP_HTML) $(SV_RELEASE_HTML)
all: $(TABLE) $(SIMPLIFIED) $(SV_HTML) $(ESR_HTML)

spellcheck: $(OUTPUTS)
	bash -c "hunspell -l -H -p <(cat transforms/dictionaries/CommonCriteria.txt transforms/dictionaries/Computer.txt transforms/dictionaries/Crypto.txt transforms/dictionaries/SVSpecific.txt) output/*.html | sort"

pp:$(SV_HTML)
$(SV_HTML):  $(TRANS)/pp2html.xsl $(SV_XML)
	xsltproc -o $(SV_HTML) $(TRANS)/pp2html.xsl $(SV_XML)
	xsltproc --stringparam appendicize on -o $(SV_OP_HTML) $(TRANS)/pp2html.xsl $(SV_XML)
	xsltproc --stringparam appendicize on --stringparam release final -o $(SV_RELEASE_HTML) $(TRANS)/pp2html.xsl $(SV_XML)

esr:$(ESR_HTML)
$(ESR_HTML):  $(TRANS)/esr2html.xsl $(TRANS)/ppcommons.xsl $(ESR_XML)
	xsltproc -o $(ESR_HTML) $(TRANS)/esr2html.xsl $(ESR_XML)

table: $(TABLE)
$(TABLE): $(TRANS)/pp2table.xsl $(SV_XML)
	xsltproc  --stringparam release final -o $(TABLE) $(TRANS)/pp2table.xsl $(SV_XML)

simplified: $(SIMPLIFIED)
$(SIMPLIFIED): $(TRANS)/pp2simplified.xsl $(SV_XML)
	xsltproc --stringparam release final -o $(SIMPLIFIED) $(TRANS)/pp2simplified.xsl $(SV_XML)

transforms/schemas/schema.rnc: transforms/schemas/schema.rng
	trang -I rng -O rnc  transforms/schemas/schema.rng transforms/schemas/schema.rnc

clean:
	@for f in a $(TABLE) $(SIMPLIFIED) $(SV_HTML) $(SV_RELEASE_HTML) $(SV_OP_HTML); do \
		if [ -f $$f ]; then \
			rm "$$f"; \
		fi; \
	done
