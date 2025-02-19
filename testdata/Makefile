.DEFAULT_GOAL := help

.PHONY: check
#: Verify `make help` matches `golden.out`
check:
	@make help | git diff --no-index --ignore-space-at-eol --exit-code -- golden.out -

include variables.mk
include targets.mk

# include at the end of your Makefile to pick up all variables and targets
include ../Makefile