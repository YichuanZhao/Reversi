#ifndef GAMECONTROLLER_H_
#define GAMECONTROLLER_H_

#include "DataType.h"
#include "Board.h"
#include "ComputerPlayer.h"
#include "HumanPlayer.h"


class GameController{
 public:
  BasePlayer *player1;
  BasePlayer *player2;
  BasePlayer *currentPlayer;
  Board *myBoard;
  status controllerStatus;
 
  GameController(){
    myBoard = new Board();
    //controllerStatus();
  }

  ~GameController(){
    delete player1;
    delete player2;
    delete myBoard;
  }
  void createPlayer(PlayerDescriptor d1, PlayerDescriptor d2);
  void setPlayerToMove(BasePlayer *player);
  void onMoveFinished();
  void start();
  BasePlayer* oppositePlayer(BasePlayer*);
};

#endif
