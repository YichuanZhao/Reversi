#include "GameController.h"
#include <stdio.h>
#include <stdlib.h>



void GameController::createPlayer(PlayerDescriptor d1, PlayerDescriptor d2){
  if(d1.type == computer)
    player1 = new ComputerPlayer(d1,myBoard);
  else
    player1 = new HumanPlayer(d1,myBoard);

  if(d2.type == computer)
    player2 = new ComputerPlayer(d2,myBoard);
  else
    player2 = new HumanPlayer(d2,myBoard);

  currentPlayer = player1;
  start();
}

void GameController::setPlayerToMove(BasePlayer *player){
  player->generateMove();
}

BasePlayer* GameController::oppositePlayer(BasePlayer* pl){
  if(pl == player1){
    return player2;
  }
  return player1;
}

void GameController::onMoveFinished(){
  if(!myBoard->checkEnd()){
    pieceType toMove = myBoard->checkTurn();
    currentPlayer = (player1->myDescriptor.pt == toMove)?player1:player2;
    if(currentPlayer->myDescriptor.type == human){
      //askForRegret();
      if(currentPlayer->toRegret){
	oppositePlayer(currentPlayer)->regret();
	currentPlayer->regret();
	currentPlayer->toRegret = false;
      }
      player1->clearLastMove();
      player2->clearLastMove();
    }
    setPlayerToMove(currentPlayer);
  }
  else
    myBoard->getResult(controllerStatus);
}

void GameController::start(){
  setPlayerToMove(currentPlayer);
  controllerStatus.s = started;
}

/*int main(int args, char** argv){
  GameController *gc = new GameController();
  PlayerDescriptor d1(human,"player1",black,easy);
  PlayerDescriptor d2(computer,"player2",white,easy);
  gc->myBoard->printBoard();
  gc->createPlayer(d1,d2);
    
  do{
    gc->myBoard->printBoard();
    gc->onMoveFinished();
  }while(gc->controllerStatus.s==started);
  fprintf(stdout,"game over!\n");
  if(gc->controllerStatus.s == tie){
    fprintf(stdout,"The game tied!\n");
  }
  else{
    const char* result = gc->controllerStatus.s == blackWin?"black":"white";
    fprintf(stdout,"The winner is %s\n",result);
    fprintf(stdout,"Black piece: %d\n",gc->controllerStatus.black);
    fprintf(stdout,"White piece: %d\n",gc->controllerStatus.white);
  }
  return EXIT_SUCCESS;
}*/
