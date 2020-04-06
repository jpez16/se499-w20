RM = rm -f

default: report

report: report.pdf

report.pdf: report/main.tex
	cd report && pdflatex main.tex && pdflatex main.tex

clean:
	$(RM) report/*.aux report/*.log

.PHONY: report clean

