NAME = zipalign
SOURCES = ZipAlign.cpp ZipEntry.cpp ZipFile.cpp
SOURCES := $(foreach source, $(SOURCES), tools/zipalign/$(source))
CPPFLAGS += -I/usr/include/android -include android/arch/AndroidConfig.h
LDFLAGS += -fPIC -Wl,-rpath=/usr/lib/android -lpthread -lrt -lzopfli -lz \
           -L/usr/lib/android -lutils -lcutils -llog -landroidfw

build: $(SOURCES)
	$(CXX) $^ -o $(NAME) $(CXXFLAGS) $(CPPFLAGS) $(LDFLAGS)

clean:
	$(RM) $(NAME)