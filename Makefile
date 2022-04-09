.PHONY: format
lint:
	poetry run pysen run format

.PHONY: lint
lint:
	poetry run pysen run lint

.PHONY: test
test:
	poetry run pytest tests --cov=src --cov-report term-missing --durations 5

.PHONY: test-all
test:
	$(MAKE) lint
	$(MAKE) test