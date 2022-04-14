# akiarc makefile
AKIARC_TARGET := akiarc
AKIARC_DEBUG_TARGET := akiarc_d

AKIARC_SRC_FILES := akiarc.c

CFLAGS := -Wall -Wextra -s -O2
CFLAGS_DEBUG := -Wall -Wextra -g -Og -DDEBUG

default: release

all: release debug

release: $(AKIARC_TARGET)

debug: $(AKIARC_DEBUG_TARGET)

$(AKIARC_TARGET): $(AKIARC_SRC_FILES)
	$(CC) $(CFLAGS) $^ $(LDFLAGS) -o $@

$(AKIARC_DEBUG_TARGET): $(AKIARC_SRC_FILES)
	$(CC) $(CFLAGS_DEBUG) $^ $(LDFLAGS) -o $@

clean:
	rm -f $(AKIARC_TARGET) $(AKIARC_DEBUG_TARGET)

.PHONY: all clean default release debug
