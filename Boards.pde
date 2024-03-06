public class Boards{
    TicTacToe big, t1, t2, t3, t4, t5, t6, t7, t8, t9;
    int wWidth = 800, hHeight = 800;
    float q1x=wWidth/6, q2x=wWidth/2, q3x=wWidth-wWidth/6, q4x=wWidth/6, q5x=wWidth/2, q6x=wWidth-wWidth/6, q7x=wWidth/6, q8x=wWidth/2, q9x=wWidth-wWidth/6;
    float q1y=hHeight/6, q2y=hHeight/6, q3y=hHeight/6, q4y=hHeight/2, q5y=hHeight/2, q6y=hHeight/2, q7y=hHeight-hHeight/6, q8y=hHeight-hHeight/6, q9y=hHeight-hHeight/6;
    float aqx = q5x, aqy = q5y;
    boolean bold = true;
    
    public Boards(){
    }//END Empty Constructor
    
    public void drawActQ(float aqx, float aqy){
    this.aqx = aqx; this.aqy = aqy;
    strokeWeight(3); stroke(#B026FF); noFill(); 
    rectMode(RADIUS);
    rect(aqx,aqy,wWidth/6,hHeight/6);
    }//END activeBoard

    public int getActBoard(float aqx, float aqy){
    int abNum = 5;
    if(aqx == q1x && aqy == q1y){
        abNum = 0;
    }else if(aqx == q2x && aqy == q2y){
        abNum = 1;
    }else if(aqx == q3x && aqy == q3y){
        abNum = 2;
    }else if(aqx == q4x && aqy == q4y){
        abNum = 3;
    }else if(aqx == q5x && aqy == q5y){
        abNum = 4;
    }else if(aqx == q6x && aqy == q6y){
        abNum = 5;
    }else if(aqx == q7x && aqy == q7y){
        abNum = 6;
    }else if(aqx == q8x && aqy == q8y){
        abNum = 7;
    }else if(aqx == q9x && aqy == q9y){
        abNum = 8;
    }//END else if 
    return abNum;
    }//END get
    
    public void drawBig(){
    big = new TicTacToe(wWidth/2,hHeight/2,hHeight,bold);
    big.drawBoard();
    strokeWeight(5); stroke(200);
    line(0,0,width,0);
    line(0,height,width,height);
    line(0,0,0,height);
    line(width,0,width,height);
    }//END activeBoard
    
    public void drawSmall(){
    t1 = new TicTacToe(q1x,q1y); t2 = new TicTacToe(q2x,q2y); t3 = new TicTacToe(q3x,q3y);
    t4 = new TicTacToe(q4x,q4y); t5 = new TicTacToe(q5x,q5y); t6 = new TicTacToe(q6x,q6y);
    t7 = new TicTacToe(q7x,q7y); t8 = new TicTacToe(q8x,q8y); t9 = new TicTacToe(q9x,q9y);
    t1.drawBoard(); t2.drawBoard(); t3.drawBoard(); t4.drawBoard(); t5.drawBoard(); t6.drawBoard(); t7.drawBoard(); t8.drawBoard(); t9.drawBoard();
    }//END drawSmallBoards
}//END class Board
