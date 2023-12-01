TARGET := byeworld

all: $(TARGET)

$(TARGET): $(BYE_OBJ)
  $(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@ -Wl,--hash-style=gnu

$(BYE_OBJ): $(BYE_SRC)
  $(CC) $(CFLAGS) -c $< -o $@

install:
  install -d ${DESTDIR}${BINDIR}
  install -m 0755 ${TARGET} ${DESTDIR}${BINDIR}

clean:
  rm -f $(BYE_OBJ) $(TARGET)
