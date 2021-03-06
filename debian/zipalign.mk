NAME = zipalign
SOURCES = ZipAlign.cpp ZipEntry.cpp ZipFile.cpp
SOURCES := $(foreach source, $(SOURCES), tools/zipalign/$(source))
LDFLAGS += -Wl,-rpath=/usr/lib/$(DEB_HOST_MULTIARCH)/android \
           -lpthread -lzopfli -lz \
           -L/usr/lib/$(DEB_HOST_MULTIARCH)/android \
           -lutils -llog -landroidfw

build: $(SOURCES)
	$(CXX) $^ -o $(NAME) $(CXXFLAGS) $(CPPFLAGS) $(LDFLAGS)

clean:
	$(RM) $(NAME)