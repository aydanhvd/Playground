import QtQuick

Window {
    width: 1280
    height: 720
    visible: true
    title: qsTr("CarInfotament")

    TabBar {  // @disable-check M300
        id: tabBar
    }

    LeftScreen {  // @disable-check M300
        id: leftScreen
    }

    RightScreen {  // @disable-check M300
        id: rightScreen
    }
}
