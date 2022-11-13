import QtQuick 2.15
import QtQuick.Controls 2.15
import "../../components"

Item {
    id: topLeftBox
    width: 240
    height: 240

    // Image
    Image {
        id: image
        anchors.top: parent.top
        source: "../../../images/images/image_left_160x90.png"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
    }

    //Set Text
    Text {
        id: infoText
        width: 220
        color: "#ccd5d9"
        text: qsTr("Server Boosts are here! Rally your community to boost your server.")
        anchors.top: image.bottom
        horizontalAlignment: Text.AlignHCenter
        wrapMode: Text.Wrap
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 15
    }

    CustomButton{
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 20
    }

    Rectangle{
        id: bottomLine
        width: 240
        height: 1
        color: "#341952"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
    }
}



/*##^##
Designer {
    D{i:0;formeditorColor:"#808080";height:240;width:240}
}
##^##*/
