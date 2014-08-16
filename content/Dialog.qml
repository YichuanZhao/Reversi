import QtQuick 1.1

Frame{
    property string player1:gameView.p1
    property string player2:gameView.p2
    id:resultDialog
    width:parent.width/4
    height:parent.height/10
    anchors.centerIn: parent

    Text{
        anchors.centerIn:parent
        text:{
            if(gameData.countBlack>gameData.countWhite)
                player1+ " won!"
            else if(gameData.countBlack<gameData.countWhite)
                player2+" won!"
            else
                "Tie!"
        }
        font.pointSize: parent.height*0.25
        color:"#ffffff"
    }

    MouseArea{
        anchors.fill: parent
        onClicked:{
            resultDialog.state="hide"
        }
    }

    states: [
        State {
            name: "hide"
            PropertyChanges {
                target: resultDialog
                opacity: 0.0
                //y: -menuPanelFrame.height
            }
        }
    ]

    transitions: Transition {
        NumberAnimation {
            properties: "opacity, y"
            duration: 400
        }
    }

}
