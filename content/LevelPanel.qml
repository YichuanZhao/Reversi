import QtQuick 1.1;

Item {
    id:levelPanel
    width: parent.width/2
    height: parent.height*3/5
    anchors.centerIn: parent

    property int level:-1
    property bool pause: false

    function  timerRestart(){
        myTimer1.stop()
        myTimer.stop()
        if(gameData.player1Turn)
            myTimer.restart()
        else
            myTimer1.restart()
    }

    Frame {
        id: levelPanelFrame
        width: parent.width
        height: parent.height
        anchors.centerIn: parent
        //state:"hide"

        Item{
            id:backButton
            width:gameLogo.height
            height:gameLogo.height
            anchors.margins: 10
            anchors.top: parent.top
            anchors.left:parent.left
            /*enabled: {
                if(gameData.gameOn)
                    true
                else
                    false
            }
            opacity:{
                if(gameData.gameOn)
                    1.0
                else
                    0.3
            }*/

            Image{
                source:"images/back.png"
                width:gameLogo.height
                height:gameLogo.height
                anchors.centerIn: parent
                smooth:true
            }
            MouseArea{
                anchors.fill: parent

                onClicked: {
                    menuPanel.state = ""
                    levelPanel.state = "hide"
                    //gameData.pauseGame(false)
                }

            }
        }

        Image {
            id: gameLogo
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            source: "images/logo.png"
            width:parent.width*3/5
            height:width*35/150;
            smooth:true
        }



        Image{
            id: black
            source:"images/tile_button1.png"
            width:parent.height/6
            height: parent.height/6
            smooth:true
            //anchors.horizontalCenter: parent.horizontalCenter
            anchors.leftMargin: 10
            anchors.margins: 10
            anchors.left: parent.left
            anchors.top: gameLogo.bottom
            opacity: 1.0
        }

        Text{
            id:humanText
            text: {
                if(menuPanel.mode == 1) "your name"
                else if(menuPanel.mode == 2) "player1's name"
                else "computer1's name"
            }
            font.family: "Helvetica"
            font.pointSize: parent.height/30+1
            color:"#ffffff"
            anchors.top: black.top
            //anchors.margins: 5
            //anchors.horizontalCenter: parent.horizontalCenter
            anchors.right: humanName.right
            anchors.rightMargin: 30
        }

        TextElement {
            id: humanName
            text:"Player1"
            anchors.top: humanText.bottom
            height:parent.height/9
            width:parent.width *0.7
            anchors.left: black.right
        }


//----------------------------------------------------------------------------

        Text{
            id:computerText
            text: {
                if(menuPanel.mode == 1) "computer name"
                else if(menuPanel.mode == 2) "player2's name"
                else "computer2's name"
            }

            font.family: "Helvetica"
            font.pointSize: parent.height/30+1
            color:"#ffffff"
            anchors.top: white.top
            //anchors.margins: 5
            //anchors.horizontalCenter: parent.horizontalCenter
            anchors.right: computerName.right
            anchors.rightMargin: 30
        }


        TextElement {
            id: computerName
            text:"Player2"
            anchors.top: computerText.bottom
            anchors.left: white.right
            height:parent.height/9
            width:parent.width * 0.7
            //anchors.horizontalCenter: parent.horizontalCenter

        }

        Image{
            id: white
            source:"images/tile_button2.png"
            width:parent.height/6
            height: parent.height/6
            smooth:true
            //anchors.horizontalCenter: parent.horizontalCenter
            anchors.leftMargin: 10
            anchors.margins: 5
            anchors.left: parent.left
            anchors.top: humanName.bottom
            opacity: 1.0
        }


//------------------------------------------------------------------------------

        Text{
            id:slider1Text
            text: {
                if(menuPanel.mode == 1) "computer level"
                else if(menuPanel.mode == 2) ""
                else "computer1 level"
            }

            font.family: "Helvetica"
            font.pointSize: parent.height/30+1
            color:"#ffffff"
            anchors.top: computerName.bottom
            anchors.margins: 10
            anchors.horizontalCenter: parent.horizontalCenter
            //anchors.left: computerText.left
            //anchors.leftMargin: 30
        }

        Slider{
            id: slider1
            minimum: 1;
            maximum: 4;
            opacity: {
                if(menuPanel.mode == 2) 0.0
                else 1.0
            }

            anchors.top: slider1Text.bottom
            anchors.margins: 5
            width: parent.width * 0.8
            //anchors.margins: 10
            anchors.horizontalCenter: parent.horizontalCenter
        }


        Text{
            id:slider2Text
            text: {
                if(menuPanel.mode == 1) ""
                else if(menuPanel.mode == 2) ""
                else "computer2 level"
            }



            font.family: "Helvetica"
            font.pointSize: parent.height/30+1
            color:"#ffffff"
            anchors.top: slider1.bottom
            anchors.margins: 10
            anchors.horizontalCenter: parent.horizontalCenter
            //anchors.left: computerText.left
            //anchors.leftMargin: 30
        }

        Slider{
            id: slider2
            minimum: 1;
            maximum: 4;
            opacity: {
                if(menuPanel.mode != 3) 0.0
                else 1.0
            }

            anchors.top: slider2Text.bottom
            anchors.margins: 5
            width: parent.width * 0.8
            //anchors.margins: 30
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button{
            id:start
            height:parent.height/8
            anchors.margins: 15
            width: parent.width *0.6
            anchors.top:slider2.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            Text {
                text: "start"
                font.family: "Helvetica"
                font.pointSize: parent.height/3+1
                color:"#ffffff"
                anchors.centerIn: parent
                //disabled: true

            }
            onClicked: {
                //mainWidget.exitApplication()

                //menuPanel.mode = 1

                gameData.resetGame()
                //gameView.centerBoard()
                //demoPanel2.state = "hide"
                gameData.pauseGame(false)

                level = slider1.value
                levelPanel.state = "hide"
                gameView.p1 = humanName.text
                gameView.p2 = computerName.text
                if(menuPanel.mode == 3){
                    myTimer.restart();
                }
                pause = false;
            }
        }

    }

    Timer {
        id: myTimer
        interval:1000
        onTriggered: {
            //gameData.flipcomputer(levelPanel.level);
            //if(!gameData.gameOn)
            //  resultDialog.state=""
            if(menuPanel.mode == 3){
                gameData.flipCC(slider1.value, slider2.level);
                if(gameData.gameOn){
                    //myTimer.stop()
                    if(!pause)myTimer1.restart()

                        //myTimer1.restart()
                }
                else{
                    resultDialog.state = ""
                }
            }
        }


    }

    Timer {
        id: myTimer1
        interval:1000
        onTriggered: {
            //gameData.flipcomputer(levelPanel.level);
            //if(!gameData.gameOn)
            //  resultDialog.state=""
            if(menuPanel.mode == 3)
            gameData.flipCC(slider1.value, slider2.value);
            if(gameData.gameOn){
                //myTimer.stop()
                if(!pause)myTimer.restart()

                    //myTimer.restart()
            }
            else{
                resultDialog.state = ""
            }

        }

    }
    states: [
        State {
            name: "hide"
            PropertyChanges {
                target: levelPanel
                opacity: 0.0
                //y: -menuPanelFrame.height
            }
        }
    ]

    transitions: Transition {
        NumberAnimation {
            properties: "opacity, y"
            duration: 0
        }
    }
}
