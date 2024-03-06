public class PiecePlay{
    boolean turn1 = true;
    int[][] legal = new int[9][9];
    float preAqx = test.q5x; float preAqy = test.q5x;
    
    public void playX(float x, float y, int strokeW){
    strokeWeight(strokeW); stroke(0); imageMode(CENTER);
    line(x+tTest.l/8,y+tTest.l/8,x-tTest.l/8,y-tTest.l/8);
    line(x+tTest.l/8,y-tTest.l/8,x-tTest.l/8,y+tTest.l/8);
    }//END playX
    
    public void playO(float x, float y, int strokeW){
    strokeWeight(strokeW); stroke(0); noFill(); imageMode(CENTER);
    ellipse(x,y,tTest.l/3.5,tTest.l/3.5);
    }//END playX
    
    public boolean bigLegal(){
    boolean legal = false;
    if (mouseX < test.aqx+test.wWidth/6 && mouseX > test.aqx-test.wWidth/6 && mouseY < test.aqy+test.hHeight/6 && mouseY > test.aqy-test.hHeight/6){
        legal = true;
    }else{
        legal = false;
    }//END else
    return legal;
    }//END moveLegal
}//END PiecePlay
