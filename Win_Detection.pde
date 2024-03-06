public class TicTacToe{
  float x, y, l, b;//Board
  float offset = 0;
  boolean bold = false;
  
  public TicTacToe(float x, float y, float l, boolean bold, float offset){
    this.x = x; this.y = y; this.l = l; this.bold = bold; this.offset = offset;
  }//END Constructor TicTacToe - x,y,l,b
  
  public TicTacToe(float x, float y, float l, boolean bold){
    this.x = x; this.y = y; this.l = l; this.bold = bold;
  }//END Constructor TicTacToe - x,y,l,b
  
  public TicTacToe(float x, float y, float l){
    this.x = x; this.y = y; this.l = l;
  }//END Constructor TicTacToe - x,y,l
  
  public TicTacToe(float x, float y){
    this.x = x; this.y = y; this.l = 225;
  }//END Constructor TicTacToe - x,y
  
  public void drawBoard(){
    if(bold){
      strokeWeight(4); stroke(0);
      line(x+l/2-offset,y+l/6,x-l/2+offset,y+l/6);//horizontal
      line(x+l/2-offset,y-l/6,x-l/2+offset,y-l/6);
      line(x+l/6,y+l/2-offset,x+l/6,y-l/2+offset);//vertical
      line(x-l/6,y+l/2-offset,x-l/6,y-l/2+offset);
    }else{
      strokeWeight(1); stroke(0);
      line(x+l/2,y+l/6,x-l/2,y+l/6);//horizontal
      line(x+l/2,y-l/6,x-l/2,y-l/6);
      line(x+l/6,y+l/2,x+l/6,y-l/2);//vertical
      line(x-l/6,y+l/2,x-l/6,y-l/2);
    }//END else
  }//END drawBoard
}//END TicTacToe

public class WinDetection{
  boolean gameWon = false; boolean xWon = true;
  float xPos, yPos;
  
  public void win(){
    for(int i = 0; i < pTest.legal.length; i++){
      if(pTest.legal[i][0]==pTest.legal[i][3] && pTest.legal[i][0] ==pTest.legal[i][6] && pTest.legal[i][0] != 0){//Vertical
        if(pTest.legal[i][0] == 1){
          xPos = pTest.preAqx-tTest.l/3; yPos = pTest.preAqy-tTest.l/3;//top left
          pTest.playX(xPos,yPos,3);
          xPos = pTest.preAqx-tTest.l/3; yPos = pTest.preAqy;//mid left
          pTest.playX(xPos,yPos,3);
          xPos = pTest.preAqx-tTest.l/3; yPos = pTest.preAqy+tTest.l/3;//bot left
          pTest.playX(xPos,yPos,3);
          xWon = true;
        }else if (pTest.legal[i][0] == 2){
          xPos = pTest.preAqx-tTest.l/3; yPos = pTest.preAqy-tTest.l/3;//top left
          pTest.playO(xPos,yPos,3);
          xPos = pTest.preAqx-tTest.l/3; yPos = pTest.preAqy;//mid left
          pTest.playO(xPos,yPos,3);
          xPos = pTest.preAqx-tTest.l/3; yPos = pTest.preAqy+tTest.l/3;//bot left
          pTest.playO(xPos,yPos,3);
          xWon = false;
        }//END else if
        gameWon = true; 
      }else if(pTest.legal[i][1]==pTest.legal[i][4] && pTest.legal[i][1]==pTest.legal[i][7] && pTest.legal[i][1] != 0){
        if(pTest.legal[i][1] == 1){ 
          xPos = pTest.preAqx; yPos = pTest.preAqy-tTest.l/3;//top mid
          pTest.playX(xPos,yPos,3);
          xPos = pTest.preAqx; yPos = pTest.preAqy;//mid mid
          pTest.playX(xPos,yPos,3);
          xPos = pTest.preAqx; yPos = pTest.preAqy+tTest.l/3;//bot mid
          pTest.playX(xPos,yPos,3);
          xWon = true;
        }else if (pTest.legal[i][1] == 2){
          xPos = pTest.preAqx; yPos = pTest.preAqy-tTest.l/3;//top mid
          pTest.playO(xPos,yPos,3);
          xPos = pTest.preAqx; yPos = pTest.preAqy;//mid mid
          pTest.playO(xPos,yPos,3);
          xPos = pTest.preAqx; yPos = pTest.preAqy+tTest.l/3;//bot mid
          pTest.playO(xPos,yPos,3);
          xWon = false;
        }//END else if
        gameWon = true;
      }else if(pTest.legal[i][2]==pTest.legal[i][5] && pTest.legal[i][2]==pTest.legal[i][8] && pTest.legal[i][2] != 0){
        if(pTest.legal[i][2] == 1){
          xPos = pTest.preAqx+tTest.l/3; yPos = pTest.preAqy-tTest.l/3;//top right
          pTest.playX(xPos,yPos,3);
          xPos = pTest.preAqx+tTest.l/3; yPos = pTest.preAqy;//mid right
          pTest.playX(xPos,yPos,3);
          xPos = pTest.preAqx+tTest.l/3; yPos = pTest.preAqy+tTest.l/3;//bot right
          pTest.playX(xPos,yPos,3);
          xWon = true;
        }else if (pTest.legal[i][2] == 2){
          xPos = pTest.preAqx+tTest.l/3; yPos = pTest.preAqy-tTest.l/3;//top right
          pTest.playO(xPos,yPos,3);
          xPos = pTest.preAqx+tTest.l/3; yPos = pTest.preAqy;//mid right
          pTest.playO(xPos,yPos,3);
          xPos = pTest.preAqx+tTest.l/3; yPos = pTest.preAqy+tTest.l/3;//bot right
          pTest.playO(xPos,yPos,3);
          xWon = false;
        }//END else if
        gameWon = true;
      }else if(pTest.legal[i][0]==pTest.legal[i][1] && pTest.legal[i][0]==pTest.legal[i][2] && pTest.legal[i][0] != 0){//Horizontal
        if(pTest.legal[i][0] == 1){ 
          xPos = pTest.preAqx-tTest.l/3; yPos = pTest.preAqy-tTest.l/3;//top left
          pTest.playX(xPos,yPos,3);
          xPos = pTest.preAqx; yPos = pTest.preAqy-tTest.l/3;//top mid
          pTest.playX(xPos,yPos,3);
          xPos = pTest.preAqx+tTest.l/3; yPos = pTest.preAqy-tTest.l/3;//top right
          pTest.playX(xPos,yPos,3);
          xWon = true;
        }else if (pTest.legal[i][0] == 2){
          xPos = pTest.preAqx-tTest.l/3; yPos = pTest.preAqy-tTest.l/3;//top left
          pTest.playO(xPos,yPos,3);
          xPos = pTest.preAqx; yPos = pTest.preAqy-tTest.l/3;//top mid
          pTest.playO(xPos,yPos,3);
          xPos = pTest.preAqx+tTest.l/3; yPos = pTest.preAqy-tTest.l/3;//top right
          pTest.playO(xPos,yPos,3);
          xWon = false;
        }//END else if
        gameWon = true;
      }else if(pTest.legal[i][3]==pTest.legal[i][4] && pTest.legal[i][3]==pTest.legal[i][5] && pTest.legal[i][3] != 0){
        if(pTest.legal[i][3] == 1){ 
          xPos = pTest.preAqx-tTest.l/3; yPos = pTest.preAqy;//mid left
          pTest.playX(xPos,yPos,3);
          xPos = pTest.preAqx; yPos = pTest.preAqy;//mid mid
          pTest.playX(xPos,yPos,3);
          xPos = pTest.preAqx+tTest.l/3; yPos = pTest.preAqy;//mid right
          pTest.playX(xPos,yPos,3);
          xWon = true;
        }else if (pTest.legal[i][3] == 2){
          xPos = pTest.preAqx-tTest.l/3; yPos = pTest.preAqy;//mid left
          pTest.playO(xPos,yPos,3);
          xPos = pTest.preAqx; yPos = pTest.preAqy;//mid mid
          pTest.playO(xPos,yPos,3);
          xPos = pTest.preAqx+tTest.l/3; yPos = pTest.preAqy;//mid right
          pTest.playO(xPos,yPos,3);
          xWon = false;
        }//END else if
        gameWon = true;
      }else if(pTest.legal[i][6]==pTest.legal[i][7] && pTest.legal[i][6]==pTest.legal[i][8] && pTest.legal[i][6] != 0){
        if(pTest.legal[i][6] == 1){ 
          xPos = pTest.preAqx-tTest.l/3; yPos = pTest.preAqy+tTest.l/3;//bot left
          pTest.playX(xPos,yPos,3);
          xPos = pTest.preAqx; yPos = pTest.preAqy+tTest.l/3;//bot mid
          pTest.playX(xPos,yPos,3);
          xPos = pTest.preAqx+tTest.l/3; yPos = pTest.preAqy+tTest.l/3;//bot right
          pTest.playX(xPos,yPos,3);
          xWon = true;
        }else if (pTest.legal[i][6] == 2){
          xPos = pTest.preAqx-tTest.l/3; yPos = pTest.preAqy+tTest.l/3;//bot left
          pTest.playO(xPos,yPos,3);
          xPos = pTest.preAqx; yPos = pTest.preAqy+tTest.l/3;//bot mid
          pTest.playO(xPos,yPos,3);
          xPos = pTest.preAqx+tTest.l/3; yPos = pTest.preAqy+tTest.l/3;//bot right
          pTest.playO(xPos,yPos,3);
          xWon = false;
        }//END else if
        gameWon = true;
      }else if(pTest.legal[i][0]==pTest.legal[i][4] && pTest.legal[i][0]==pTest.legal[i][8] && pTest.legal[i][0] != 0){//Diagonal
        if(pTest.legal[i][0] == 1){ 
          xPos = pTest.preAqx-tTest.l/3; yPos = pTest.preAqy-tTest.l/3;//top left
          pTest.playX(xPos,yPos,3);
          xPos = pTest.preAqx; yPos = pTest.preAqy;//mid mid
          pTest.playX(xPos,yPos,3);
          xPos = pTest.preAqx+tTest.l/3; yPos = pTest.preAqy+tTest.l/3;//bot right
          pTest.playX(xPos,yPos,3);
          xWon = true;
        }else if (pTest.legal[i][0] == 2){
          xPos = pTest.preAqx-tTest.l/3; yPos = pTest.preAqy-tTest.l/3;//top left
          pTest.playO(xPos,yPos,3);
          xPos = pTest.preAqx; yPos = pTest.preAqy;//mid mid
          pTest.playO(xPos,yPos,3);
          xPos = pTest.preAqx+tTest.l/3; yPos = pTest.preAqy+tTest.l/3;//bot right
          pTest.playO(xPos,yPos,3);
          xWon = false;
        }//END else if
        gameWon = true;
      }else if(pTest.legal[i][2]==pTest.legal[i][4] && pTest.legal[i][2]==pTest.legal[i][6] && pTest.legal[i][2] != 0){
        if(pTest.legal[i][2] == 1){ 
          xPos = pTest.preAqx+tTest.l/3; yPos = pTest.preAqy-tTest.l/3;//top right
          pTest.playX(xPos,yPos,3);
          xPos = pTest.preAqx; yPos = pTest.preAqy;//mid mid
          pTest.playX(xPos,yPos,3);
          xPos = pTest.preAqx-tTest.l/3; yPos = pTest.preAqy+tTest.l/3;//bot left
          pTest.playX(xPos,yPos,3);
          xWon = true;
        }else if (pTest.legal[i][2] == 2){
          xPos = pTest.preAqx+tTest.l/3; yPos = pTest.preAqy-tTest.l/3;//top right
          pTest.playO(xPos,yPos,3);
          xPos = pTest.preAqx; yPos = pTest.preAqy;//mid mid
          pTest.playO(xPos,yPos,3);
          xPos = pTest.preAqx-tTest.l/3; yPos = pTest.preAqy+tTest.l/3;//bot left
          pTest.playO(xPos,yPos,3);
          xWon = false;
        }//END else if
        gameWon = true;
      }//END else
    }//END for
    if (gameWon == true){
      test.aqx = pTest.preAqx; test.aqy = pTest.preAqy;
      if (xWon){
        fill(#8523c9, 10); stroke(0);
        rect(test.wWidth/2, test.hHeight/2, 300, 100, 30);
        textSize(128); fill(0); textAlign(CENTER);
        text("X WINS!", test.wWidth/2, test.hHeight/2+42);
    } else{
        fill(#8523c9, 10); stroke(0); 
        rect(test.wWidth/2, test.hHeight/2, 300, 100, 30);
        textSize(128); fill(0); textAlign(CENTER);
        text("O WINS!", test.wWidth/2, test.hHeight/2+42);
    }//END else
      for(int i = 0; i < pTest.legal.length; i++){
        for(int j = 0; j < pTest.legal[0].length; j++){
          pTest.legal[i][j] = -1;
        }//END for j
      }//END for i
    }//END if
  }//END win
}//END class WinDetection
