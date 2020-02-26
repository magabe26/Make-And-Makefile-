FILES := $(wildcard *.c) #replaced by a space-separated list of names
#of existing files that match pattern '*.c'

print: $(FILES)
	echo $(addprefix file-,$?) #appending file- prefix
	echo $(patsubst %.c,%.o,$?) #replacing the ‘.c’ suffix with ‘.o’
