include /usr/include/android/arch/android_includes.mk

NAME = zipalign
SOURCES = ZipAlign.cpp ZipEntry.cpp ZipFile.cpp
CPPFLAGS += $(ANDROID_INCLUDES) -I/usr/include/android -I../../core/combp/include
LDFLAGS += -fPIC -Wl,-rpath=/usr/lib/android -lpthread -lrt -lzopfli -lz \
           -L/usr/lib/android -lutils -lcutils -llog -landroidfw

build: $(SOURCES)
	c++ $^ -o $(NAME) $(CXXFLAGS) $(CPPFLAGS) $(LDFLAGS)

clean:
	rm -f $(NAME)