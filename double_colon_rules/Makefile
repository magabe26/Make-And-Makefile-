
#Double-colon rules with the same target are in fact completely separate from one another.
#Each double-colon rule is processed individually, just as rules with different targets are processed.
#They provide a mechanism for cases in which the method used to update a target differs depending on
# which prerequisite files caused the update.

log.txt :: file1.txt
	touch $@
	echo " edited f1" >> log.txt

log.txt :: file2.txt
	touch $@
	echo " edited f2" >> log.txt   