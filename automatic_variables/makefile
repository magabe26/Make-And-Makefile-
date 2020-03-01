
#The automatic variable ‘$<’ represent just the first prerequisite (arg1)
auto1: arg1 arg2
	print $<

#The automatic variable ‘$?’ represent all changed prerequisite (arg2 arg2)
auto2: arg1 arg2
	print $?

#The automatic variable ‘$@’ represent the target (auto 3)
auto3: arg1 arg2
	print $@

#The automatic variable ‘$^’ represent the file path of  (file1) if file1
#is located on different directory, an VPATH variable is set
auto4: file1
	print $^

# $* will expand to the stem i.e file
# arg1(Empty target) is there to avoid errors. ie. force the recep to always run
file2: %2 : arg1
	echo $*  

.PHONY : arg1
.PHONY : arg2

arg1:
arg2: