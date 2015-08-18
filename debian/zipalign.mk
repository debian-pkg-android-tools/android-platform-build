include /usr/include/android/arch/android_includes.mk

NAME = zipalign
SOURCES = ZipAlign.cpp ZipEntry.cpp ZipFile.cpp
CPPFLAGS += $(ANDROID_INCLUDES) -I../../core/combp/include
LDFLAGS += -fPIC -Wl,-rpath=/usr/lib/android -lpthread -lrt \
           -L/usr/lib/android -lutils -lcutils -llog

build: $(SOURCES)
	c++ $^ -o $(NAME) $(CXXFLAGS) $(CPPFLAGS) $(LDFLAGS)

clean:
	rm -f $(NAME)