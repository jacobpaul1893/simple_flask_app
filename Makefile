git-hooks:
	test -d .git/hooks || mkdir -p .git/hooks
	cp -f hooks/git-pre-commit.hook .git/hooks/pre-commit
	chmod a+x .git/hooks/pre-commit
	cp -f hooks/git-prepare-commit-msg.hook .git/hooks/prepare-commit-msg
	chmod a+x .git/hooks/prepare-commit-msg
