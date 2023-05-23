QT += quick
QT += positioning
QT += location

CONFIG += mobility

SOURCES += \
        Controllers/audiocontroller.cpp \
        Controllers/hvachandler.cpp \
        Controllers/system.cpp \
        main.cpp

resources.files = main.qml \
  ui/TabBar/HVACComponent.qml \
  ui/TabBar/VolumeControlComponent.qml \
  ui/RightScreen/NavigationSearchBox.qml \
  ui/TabBar/TabBar.qml \
  ui/RightScreen/RightScreen.qml \
  ui/LeftScreen/LeftScreen.qml \
  ui/assets/carRender.jpeg \
  ui/assets/lock.png \
  ui/assets/search.png \
  ui/assets/sedan-car-front.png \
  ui/assets/unlock.png \
  ui/assets/user.png \
  ui/assets/mute.png \
  ui/assets/audio1.png \
  ui/assets/audio2.png \
  ui/assets/audio3.png \


resources.prefix = /$${TARGET}

RESOURCES += resources

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    ui/RightScreen/NavigationSearchBox.qml \
    ui/TabBar/HVACComponent.qml \
    ui/TabBar/TabBar.qml \
    ui/LeftScreen/LeftScreen.qml \
    ui/RightScreen/RightScreen.qml \
    ui/TabBar/VolumeControlComponent.qml \
    ui/assets/audio1.png \
    ui/assets/audio2.png \
    ui/assets/audio3.png \
    ui/assets/mute.png \
    ui/assets/carRender.jpeg \
    ui/assets/lock.png \
    ui/assets/search.png \
    ui/assets/sedan-car-front.png \
    ui/assets/unlock.png \
    ui/assets/user.png

HEADERS += \
    Controllers/audiocontroller.h \
    Controllers/hvachandler.h \
    Controllers/system.h
