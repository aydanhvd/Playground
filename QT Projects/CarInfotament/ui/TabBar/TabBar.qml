import QtQuick

Rectangle {
    id: tabBar
    color: "black"
    anchors {
        left: parent.left
        right: parent.right
        bottom: parent.bottom
    }

    height: parent.height / 12

    Image {
        id: carSettingIcon
        source: "qrc:/CarInfotament/sedan-car-front.png"
        fillMode: Image.PreserveAspectFit
        anchors {
            verticalCenter: parent.verticalCenter
            left: parent.left
            leftMargin: 30
        }
        height: parent.height * .65
    }

    HVACComponent {
        id: driverVACControl
        anchors {
            top: parent.top
            bottom: parent.bottom
            left: carSettingIcon.right
            leftMargin: 150
        }
        hvacController: driverHVAC
    }

    VolumeControlComponent {
        id: volumeControl
        anchors {
            top: parent.top
            bottom: parent.bottom
            right: parent.right
            rightMargin: 15
        }
    }

    HVACComponent {
        id: passengerVACControl
        anchors {
            top: parent.top
            bottom: parent.bottom
            right: volumeControl.left
            rightMargin: 150
        }
        hvacController: passengerHVAC
    }
}
