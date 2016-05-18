# More info see: /usr/share/dpkg/cputable

ifeq ($(DEB_HOST_ARCH_CPU), amd64)
  CPU = x86
endif
ifeq ($(DEB_HOST_ARCH_CPU), i386)
  CPU = x86
endif
ifeq ($(DEB_HOST_ARCH_CPU), armel)
  CPU = arm
endif
ifeq ($(DEB_HOST_ARCH_CPU), armhf)
  CPU = arm
endif
ifeq ($(DEB_HOST_ARCH_CPU), arm64)
  CPU = arm64
endif
ifeq ($(DEB_HOST_ARCH_CPU), mips)
  CPU = mips
endif
ifeq ($(DEB_HOST_ARCH_CPU), mipsel)
  CPU = mips
endif
ifeq ($(DEB_HOST_ARCH_CPU), mips64el)
  CPU = mips64
endif

export CPU
