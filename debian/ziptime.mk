NAME = ziptime
SOURCES = ZipTime.cpp ZipEntry.cpp ZipFile.cpp
SOURCES := $(foreach source, $(SOURCES), tools/ziptime/$(source))
CPPFLAGS += -include core/combo/include/arch/linux-x86/AndroidConfig.h
LDFLAGS += -Wl,-rpath=/usr/lib/$(DEB_HOST_MULTIARCH)/android \
           -lpthread \
           -L/usr/lib/$(DEB_HOST_MULTIARCH)/android

build: $(SOURCES)
	$(CXX) $^ -o $(NAME) $(CXXFLAGS) $(CPPFLAGS) $(LDFLAGS)

clean:
	$(RM) $(NAME)
