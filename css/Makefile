
htmlbook.css: floats.css header.css std.css toc.css misc.css  tables.css thmbox.css talk.css headers.css
	cat $^ > $@

thmbox.css:

%.css: %.src mk%.sh 
	./mk$*.sh < $< > $@

