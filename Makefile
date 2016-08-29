notebooks:
	jupyter nbconvert --to markdown content/partI/10_git.ipynb --output ipynb_md/10_git.md
	rm -fr content/partI/.ipynb_checkpoints/

book:
	gitbook build
	cp -r _book/* ./
	gitbook pdf ./ ./gis321f16.pdf
