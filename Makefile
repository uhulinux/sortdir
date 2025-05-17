libsortdir.so: libsortdir.c
	gcc -fPIC -Wall -shared -ldl -o libsortdir.so libsortdir.c

install:
	mkdir -p $(DESTDIR)/usr/bin
	install -m 755 sortdir $(DESTDIR)/usr/bin
	mkdir -p $(DESTDIR)/usr/lib
	install -m 755 libsortdir.so $(DESTDIR)/usr/lib
	
clean:
	rm -f libsortdir.so

