# QT Modules
QT += qml quick

# Target
TARGET = fps
TEMPLATE = app

# Extra Configs
DEFINES += HUATAI_B21
DEFINES += HUATAI_RECV
DEFINES += TIMER_FREQ
CONFIG(release, debug|release) {
        DEFINES += QT_NO_DEBUG_OUTPUT
}

# Sources and Headers
SOURCE_FOLDER = src
HEADER_FOLDER = src/include

INCLUDEPATH += $$HEADER_FOLDER

SOURCES += $$SOURCE_FOLDER/main.cpp \


# Qml Files
QML_FOLDER = qml/content
OTHER_FILES += qml/mainViewer.qml \
    $$QML_FOLDER/*.qml \
    $$QML_FOLDER/qmldir

# Resources
RESOURCES += fps.qrc
QMAKE_RESOURCE_FLAGS += -no-compress

# Objects Pathes
DESTDIR = bin
UI_DIR = build
MOC_DIR = build
RCC_DIR = build
OBJECTS_DIR = build
