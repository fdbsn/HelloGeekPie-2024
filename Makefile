# Makefile for compiling C code

# This Makefile is used to compile my_job.c into my_job.ll
# my_job.ll should be like my_job_sample.ll

# But why the result in the repository is different?
# I might need to find out what I missed in the Makefile
# Maybe a flag or something else

# Compiler and flags
CC = clang
CFLAGS = -O0 -S

# Source and target files
SRC = my_job.c
TARGET = my_job.ll

all: $(TARGET)

# Rule to compile
$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

# Clean up generated files
clean:
	rm -f $(TARGET)

PHONY: all clean
