notebooks:
	jupyter nbconvert --to markdown --output-dir ipynb_md/ content/partI/11_setup.ipynb
	jupyter nbconvert --to markdown --output-dir ipynb_md/ content/partI/12_shells.ipynb
	jupyter nbconvert --to markdown --output-dir ipynb_md/ content/partII/21_python.ipynb
	jupyter nbconvert --to markdown --output-dir ipynb_md/ content/partIII/31_numpy.ipynb
	rm -fr content/partI/.ipynb_checkpoints/
	rm -fr content/partII/.ipynb_checkpoints/
	rm -fr content/partIII/.ipynb_checkpoints/

book:
	gitbook build
	cp -r _book/* ./
	gitbook pdf ./ ./gis321f16.pdf
