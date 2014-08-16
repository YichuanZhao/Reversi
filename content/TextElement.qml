import QtQuick 1.1

Item {
    property alias text: input.text
    //Background { id: background }
    Item {

        anchors.centerIn: parent
        width: parent.width-20; height: parent.height-10
        BorderImage {

            border.left: 10
            border.top: 10
            border.bottom: 10
            border.right: 10
            source: "images/lineedit.png"
            //source: "images/lineedit.sci"
            anchors.fill: parent
        }
        TextInput {
            id: input
            color: "#151515"; selectionColor: "green"
            font.pixelSize: 16; font.bold: true
            width: parent.width-16
            maximumLength: 16
            anchors.centerIn: parent
            focus: true
        }
    }
}
