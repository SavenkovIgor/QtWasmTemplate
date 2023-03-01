import QtQuick

Window {
    width: 640
    height: 480
    visible: true

    Rectangle {
        anchors.centerIn: parent
        width: 200
        height: 70
        color: "coral"

        Text {
            anchors.centerIn: parent
            text: "Hello Qml on Wasm!"
        }
    }
}
