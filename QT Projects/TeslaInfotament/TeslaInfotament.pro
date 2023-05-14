QT += quick
QT += positioning
QT += location

CONFIG += mobility

SOURCES += \
        Controllers/system.cpp \
        main.cpp

resources.files = main.qml
resources.prefix = /$${TARGET}
RESOURCES += resources \
    main.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    ui/BottomBar/BottomBar.qml

HEADERS += \
    Controllers/system.h