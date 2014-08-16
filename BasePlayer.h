#ifndef _BASEPLAYER_H_
#define _BASEPLAYER_H_

#include "DataType.h"
//#include "GameController.h"
#include "Board.h"
#include <string.h>

class BasePlayer{
 public:
  Board *myBoard;
  PlayerDescriptor myDescriptor;
  bool toRegret;
  std::vector<vec> lastMove;
  std::vector<vec> lastFlip;

  BasePlayer(){}
  BasePlayer(PlayerDescriptor descriptor,Board *board){
    myDescriptor = descriptor;
    myBoard = board;
    toRegret = false;
  }
  virtual void clearLastMove(){
    lastMove.clear();
    lastFlip.clear();
  }
  virtual void regret(){
    if(lastMove.size() != 0){
      pieceType pt = myBoard->fetch(lastMove[0].x, lastMove[0].y);
      for(int i = 0; i < (int)lastMove.size(); i++){
	myBoard->set(lastMove[i].x, lastMove[i].y, empty);
      }
      for(int i = 0; i < (int)lastFlip.size(); i++){
	myBoard->set(lastFlip[i].x, lastFlip[i].y, myBoard->reverseType(pt));
      }
    }
  }
  virtual void generateMove() = 0;
};

#endif
