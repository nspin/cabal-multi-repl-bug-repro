.PHONY: show
show:
	cabal repl --enable-multi-repl x z --verbose 2>&1 | tee log.txt

.PHONY: shell
shell:
	nix-shell --pure

.PHONY: clean
clean:
	cabal clean
