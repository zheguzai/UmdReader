HEADERS += include/Additions.h \
           include/UmdParser.h \
           include/MainWindow.h \
           include/UmdReader.h \
           include/aboutdialog.h

SOURCES += src/UmdParser.cpp \
           src/Additions.cpp \
           src/main.cpp \
           src/MainWindow.cpp \
           src/UmdReader.cpp \
           src/aboutdialog.cpp
FORMS += \
    form/aboutdialog.ui

TRANSLATIONS += lang.ts

LIBS += -lz

TARGET = umdreader
DESTDIR = bin
RESOURCES += \
    resource.qrc

unix {
target.files = bin/umdreader
target.path = /usr/local/bin
locale_zh.files = resource/locale/zh_CN.qm
locale_zh.path = /usr/local/share/UmdReader/locales
desktop.files = UmdReader.desktop
desktop.path = /usr/local/share/applications
umd_icon.files = resource/pixmap/umdreader.png
umd_icon.path = /usr/local/share/icons
INSTALLS += target \
            locale_zh \
            desktop \
	     umd_icon
}
