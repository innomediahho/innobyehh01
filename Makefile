TARGET := innobye

all: $(TARGET)

OBJECTS = bye.o

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@ -Wl,--hash-style=gnu

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

install:
	install -d ${DESTDIR}${BINDIR}
	install -m 0755 ${TARGET} ${DESTDIR}${BINDIR}

clean:
	rm -f $(OBJECTS) $(TARGET)
