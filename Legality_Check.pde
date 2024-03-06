public void notLegal(int actBoard, int actQ, int XorY){
  pTest.legal[actBoard][actQ] = XorY;
  }//END notLegal

void mouseClicked(){
float xPos = -1; float yPos = -1; int letter;
  if (pTest.bigLegal()){//if the mouse is in the active square
    if (pTest.turn1){ 
      letter = 1;
    }else{
      letter = 2;
    }//END else
    if (mTest.q()==0){
      notLegal(test.getActBoard(test.aqx,test.aqy),mTest.q(),letter);
      xPos = test.aqx-tTest.l/3; yPos = test.aqy-tTest.l/3;
      pTest.preAqx = test.aqx; pTest.preAqy = test.aqy;
      test.aqx = test.q1x; test.aqy = test.q1y;
    }else if (mTest.q()==1){
      notLegal(test.getActBoard(test.aqx,test.aqy),mTest.q(),letter);
      xPos = test.aqx; yPos = test.aqy-tTest.l/3;
      pTest.preAqx = test.aqx; pTest.preAqy = test.aqy;
      test.aqx = test.q2x; test.aqy = test.q2y;
    }else if (mTest.q()==2){
      notLegal(test.getActBoard(test.aqx,test.aqy),mTest.q(),letter);
      xPos = test.aqx+tTest.l/3; yPos = test.aqy-tTest.l/3;
      pTest.preAqx = test.aqx; pTest.preAqy = test.aqy;
      test.aqx = test.q3x; test.aqy = test.q3y;
    }else if (mTest.q()==3){
      notLegal(test.getActBoard(test.aqx,test.aqy),mTest.q(),letter);
      xPos = test.aqx-tTest.l/3; yPos = test.aqy;
      pTest.preAqx = test.aqx; pTest.preAqy = test.aqy;
      test.aqx = test.q4x; test.aqy = test.q4y;
    }else if (mTest.q()==4){
      notLegal(test.getActBoard(test.aqx,test.aqy),mTest.q(),letter);
      xPos = test.aqx; yPos = test.aqy;
      pTest.preAqx = test.aqx; pTest.preAqy = test.aqy;
      test.aqx = test.q5x; test.aqy = test.q5y;
    }else if (mTest.q()==5){
      notLegal(test.getActBoard(test.aqx,test.aqy),mTest.q(),letter);
      xPos = test.aqx+tTest.l/3; yPos = test.aqy;
      pTest.preAqx = test.aqx; pTest.preAqy = test.aqy;
      test.aqx = test.q6x; test.aqy = test.q6y;
    }else if (mTest.q()==6){
      notLegal(test.getActBoard(test.aqx,test.aqy),mTest.q(),letter);
      xPos = test.aqx-tTest.l/3; yPos = test.aqy+tTest.l/3;
      pTest.preAqx = test.aqx; pTest.preAqy = test.aqy;
      test.aqx = test.q7x; test.aqy = test.q7y;
    }else if (mTest.q()==7){
      notLegal(test.getActBoard(test.aqx,test.aqy),mTest.q(),letter);
      xPos = test.aqx; yPos = test.aqy+tTest.l/3;
      pTest.preAqx = test.aqx; pTest.preAqy = test.aqy;
      test.aqx = test.q8x; test.aqy = test.q8y;
    }else if (mTest.q()==8){
      notLegal(test.getActBoard(test.aqx,test.aqy),mTest.q(),letter);
      xPos = test.aqx+tTest.l/3; yPos = test.aqy+tTest.l/3;
      pTest.preAqx = test.aqx; pTest.preAqy = test.aqy;
      test.aqx = test.q9x; test.aqy = test.q9y;
    }//END else if
    if (xPos > 0 && yPos>0 && mTest.q >= 0){
      if (pTest.turn1){
        pTest.playX(xPos, yPos,1);
      }else{
        pTest.playO(xPos, yPos,1);
      }//END else
      pTest.turn1 = !pTest.turn1;
    }//END if 
  }//END if
}//END mouseClicked 
