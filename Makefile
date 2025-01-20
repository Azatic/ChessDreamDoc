MAIN = chessdream

TEX = xelatex
TEXFLAGS = -interaction=nonstopmode -halt-on-error

# Файлы для очистки
CLEAN_EXT = aux toc log out fls fdb_latexmk

.PHONY: all clean

all:
	$(TEX) $(TEXFLAGS) $(MAIN).tex
	$(TEX) $(TEXFLAGS) $(MAIN).tex
	$(TEX) $(TEXFLAGS) $(MAIN).tex

clean:
	rm -f $(foreach ext, $(CLEAN_EXT), $(MAIN).$(ext))
