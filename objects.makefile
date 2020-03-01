#Generate .o objects files using compiler assistance 

CC = g++
CPPFLAGS = -fPIC
SFILE_EXTENSION = cpp

all: $(patsubst %.$(SFILE_EXTENSION),%.o.makefile,$(wildcard *.$(SFILE_EXTENSION)))

%.o.makefile: %.cpp
	@set -e; rm -f $@; \
	$(CC) -M $(CPPFLAGS) $< > $@; \
	echo '	$(CC) -c $(CPPFLAGS) $$(filter %.$(SFILE_EXTENSION),$$?)' >> $@; \
	$(MAKE) -f $@; \
	rm -f $@