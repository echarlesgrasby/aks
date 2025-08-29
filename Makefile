# aks Makefile
# Contributed by echarlesgrasby: 2025-08-29

#=========================================================== 
# Process dependencies include (see README.md for purpose): 
#
# processmasters
# createmasters
# sortmasters
# trimmasters
# compressmasters
#=========================================================== 

CC := gcc
CFLAGS := -Wall -O2
TARGET := aks
WRAPPER := processmasters

# Invocation (assumes that the program is already built): `make`
all: $(TARGET)

$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) -o $@ $<

.PHONY: run
run: $(TARGET)
	./$(WRAPPER) ./$(TARGET) $(ARGS)

.PHONY: clean
clean:
	rm -f $(TARGET)
