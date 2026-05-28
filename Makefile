.DEFAULT_GOAL := aghul.analyzer.hfst

aghul.lexd: $(wildcard aghul_*.lexd)
	cat aghul_*.lexd > aghul.lexd

aghul.generator.hfst: aghul.lexd
	lexd aghul.lexd | hfst-txt2fst  -o $@

aghul.analyzer.hfst: aghul.generator.hfst
	hfst-invert aghul.generator.hfst -o aghul.analyzer.unopt.hfst
	hfst-fst2fst -O aghul.analyzer.unopt.hfst -o $@
	rm aghul.analyzer.unopt.hfst


clean:
	rm -f *.hfst *.txt *.mchar *.res aghul.lexd
