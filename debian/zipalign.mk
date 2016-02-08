NAME = zipalign
SOURCES = ZipAlign.cpp ZipEntry.cpp ZipFile.cpp
SOURCES := $(foreach source, $(SOURCES), tools/zipalign/$(source))
CPPFLAGS += -I/usr/include/android \
            -include core/combo/include/arch/linux-x86/AndroidConfig.h
LDFLAGS += -fPIC -Wl,-rpath=/usr/lib/android -lpthread -lzopfli -lz \
           -L/usr/lib/android -lutils -llog -landroidfw

build: $(SOURCES)
	$(CXX) $^ -o $(NAME) $(CXXFLAGS) $(CPPFLAGS) $(LDFLAGS)

clean:
	$(RM) $(NAME)