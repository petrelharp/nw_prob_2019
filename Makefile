SHELL := /bin/bash
# use bash for <( ) syntax

.PHONY : setup

nw-prob-talk.slides.html nw-prob-talk.local.slides.html : setup

setup :
	$(MAKE) -C figs

include rules.mk
