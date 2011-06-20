
TESTDIR?= /tmp/tests3

install:
	python setup.py install

test:
	nosetests

test3:
	rm -rf $(TESTDIR)
	cp -r tests $(TESTDIR)
	find /tmp/tests3 -name "*.py" -exec 2to3 -w {} \;
	env PYTHONPATH=$(TESTDIR) nosetests --py3where=$(TESTDIR)

