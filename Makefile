all:put get delete update crea
CC = gcc
LDFLAGS = -pthread
OBJS = kvstore.o create.o find_and_read.o delete.o update.o add_file.o

%.o : %.c
	$(CC) -c $(CFLAGS) $< -o $@
put: $(OBJS)   
	$(CC) -o $@ create.o kvstore.o $(LDFLAGS)
get: $(OBJS)    
	$(CC) -o $@ find_and_read.o kvstore.o $(LDFLAGS)
delete: $(OBJS)    
	$(CC) -o $@ delete.o kvstore.o $(LDFLAGS)
update: $(OBJS)    
	$(CC) -o $@ update.o kvstore.o $(LDFLAGS)
crea: $(OBJS)   
	$(CC) -o $@ add_file.o kvstore.o $(LDFLAGS)

.Phony: clean
clean:
	rm -f *.o; rm -f put get delete update crea;
