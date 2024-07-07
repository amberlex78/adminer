PHONY: start stop

.DEFAULT_GOAL := help

start:
	@nohup php -S adminer.test:8080 > adminer.log 2>&1 & echo $$! > adminer.pid
	@echo "Adminer is running.";

stop:
	@if [ -f adminer.pid ]; then \
		kill `cat adminer.pid` && rm adminer.pid; \
		echo "Adminer is stopped."; \
	else \
		echo "Adminer is not running."; \
	fi

help:
	@echo "Available commands:"
	@echo "  make start     - Start the Adminer"
	@echo "  make stop      - Stop the Adminer"
	@echo "  make help      - Show this help message"
