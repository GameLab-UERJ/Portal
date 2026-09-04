SHELL := /bin/sh

PORT ?= 4000
HOST ?= 127.0.0.1
RUBY_PREFIX := $(shell brew --prefix ruby 2>/dev/null)
JEKYLL ?= jekyll

ifneq ($(RUBY_PREFIX),)
GEM_BIN := $(shell PATH="$(RUBY_PREFIX)/bin:$(PATH)" gem environment gemdir 2>/dev/null)/bin
export PATH := $(GEM_BIN):$(RUBY_PREFIX)/bin:$(PATH)
JEKYLL := $(GEM_BIN)/jekyll
endif

.PHONY: help install setup serve build clean

help:
	@printf '%s\n' \
		'make install  Instala Jekyll e o plugin de tema remoto' \
		'make serve    Inicia o portal em http://localhost:4000' \
		'make build    Gera o site em _site/' \
		'make clean    Remove os artefatos gerados'

install:
	gem install jekyll jekyll-remote-theme jekyll-seo-tag jekyll-include-cache

setup: install

serve:
	$(JEKYLL) serve --livereload --host $(HOST) --port $(PORT)

build:
	$(JEKYLL) build

clean:
	rm -rf _site .jekyll-cache .sass-cache