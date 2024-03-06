Boards test = new Boards();
TicTacToe tTest = new TicTacToe(0,0);
PiecePlay pTest = new PiecePlay();
Moves mTest = new Moves();
WinDetection wTest = new WinDetection();

void setup(){
    size(800,800);//I had a width/height problem (stuck at 100), update wWidth and hHeight in class Board
    background(#e7e7e7);
}//END setup

void draw(){
    test.drawBig();
    test.drawSmall();
    test.drawActQ(test.aqx,test.aqy);
    wTest.win();
}//END draw
