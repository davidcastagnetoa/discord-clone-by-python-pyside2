import QtQuick 2.0

Item {
    width: 1200
    height: 600

    Rectangle {
        id: rectangle
        color: "#00000000"
        anchors.fill: parent

        Rectangle {
            id: left_home_page
            width: 240
            color: "#2a123f"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 0
            anchors.bottomMargin: 0
            anchors.topMargin: 0

            Rectangle {
                id: rectangle1
                y: 257
                height: 50
                color: "#190d28"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.bottomMargin: 0
            }
        }
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/
