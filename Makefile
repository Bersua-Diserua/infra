.PHONY: flash

CURRENTDIR = $(shell pwd)

broker:
	cd $(CURRENTDIR)/services/broker; docker compose up -d

portal:
	cd $(CURRENTDIR)/services/portal; make re-run

wa-restart:
	cd $(CURRENTDIR)/services/wa-automate && docker compose restart