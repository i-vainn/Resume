FROM debian:10.8

COPY TexSource .

RUN apt-get update -y && apt-get install -y \
	texlive-fonts-recommended \
	texlive-generic-recommended \
	texlive-latex-extra \
	texlive-fonts-extra \
	dvipng \
	texlive-latex-recommended \
	texlive-base \
	texlive-pictures \
	texlive-lang-cyrillic \
	texlive-science \
	cm-super \
	texlive-generic-extra \
	texlive-bibtex-extra biber

#CMD ["pdflatex", "mmayer.tex", "-interaction=nonstopmode"]
CMD ["ls"]
