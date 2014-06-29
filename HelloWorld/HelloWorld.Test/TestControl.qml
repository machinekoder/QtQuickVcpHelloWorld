import QtQuick 2.0
import Machinekit.HalRemote 1.0

Rectangle {
    property string name: "default"

    width: 200
    height: 200
    color: mouseArea.containsMouse ? "green" : "red"

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
    }

    HalPin {
        id: halPin
        name: parent.name
        value: mouseArea.containsMouse
        type: HalPin.Bit
        direction: HalPin.Out
    }
}
