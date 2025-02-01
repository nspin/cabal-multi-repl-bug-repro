.PHONY: show
show:
	cabal repl --enable-multi-repl x z 2>&1 | tee log.txt

.PHONY: show-verbose
show-verbose:
	cabal repl --enable-multi-repl x z --verbose 2>&1 | tee log.verbose.txt

.PHONY: shell
shell:
	nix-shell --pure

.PHONY: clean
clean:
	cabal clean
