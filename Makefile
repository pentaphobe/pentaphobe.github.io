
update:
	git checkout draft
	make build
	git stash push
	git checkout master
	git stash pop
	git add _site
	git commit -m "Updated from drafts"


.PSEUDO: update
