import QtQuick 2.5
import QtQuick.Window 2.2

Rectangle {
    property alias mouseArea: mouseArea

    width: 360
    height: 360

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }

//    TextEdit {
//        id: textEdit1
//        x: 8
//        y: 8
//        width: 131
//        height: 46
//        text: qsTr("0")
//        font.pixelSize: 38
//    }
}

