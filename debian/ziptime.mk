NAME = ziptime
SOURCES = ZipTime.cpp ZipEntry.cpp ZipFile.cpp
SOURCES := $(foreach source, $(SOURCES), tools/ziptime/$(source))
CPPFLAGS += -I/usr/include/android \
            -include core/combo/include/arch/linux-x86/AndroidConfig.h
LDFLAGS += -fPIC \
           -Wl,-rpath=/usr/lib/$(DEB_HOST_MULTIARCH)/android:/usr/lib/android \
           -lpthread -lzopfli -lz \
           -L/usr/lib/$(DEB_HOST_MULTIARCH)/android -L/usr/lib/android \
           -lutils -llog -landroidfw

build: $(SOURCES)
	$(CXX) $^ -o $(NAME) $(CXXFLAGS) $(CPPFLAGS) $(LDFLAGS)

clean:
	$(RM) $(NAME)
