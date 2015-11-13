NAME = zipalign
SOURCES = ZipAlign.cpp ZipEntry.cpp ZipFile.cpp
CPPFLAGS += -I/usr/include/android
            -include core/combo/include/arch/linux-$(CPU)/AndroidConfig.h
LDFLAGS += -fPIC -Wl,-rpath=/usr/lib/android -lpthread -lrt -lzopfli -lz \
           -L/usr/lib/android -lutils -lcutils -llog -landroidfw

build: $(SOURCES)
	c++ $^ -o $(NAME) $(CXXFLAGS) $(CPPFLAGS) $(LDFLAGS)

clean:
	rm -f $(NAME)