
.PHONY: clean
clean:
	rm -f .requirements.txt


requirements: .requirements.txt

.PHONY: requirements
.requirements.txt:
	python3 -m pip install -r requirements.txt
	pip freeze > $@
#	conda install --yes --file requirements.txt
#	conda list > $@