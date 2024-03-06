public class Moves{
    int q;
    
    public Moves(){
    }//END Empty Constructor
    
    public int q(){
    if (mouseX < test.aqx-tTest.l/6 && mouseY < test.aqy-tTest.l/6 && pTest.legal[test.getActBoard(test.aqx,test.aqy)][0]==0){
        q = 0; 
    }else if (mouseX > test.aqx-tTest.l/6 && mouseX < test.aqx+tTest.l/6 && mouseY < test.aqy-tTest.l/6 && pTest.legal[test.getActBoard(test.aqx,test.aqy)][1]==0){
        q = 1; 
    }else if (mouseX > test.aqx+tTest.l/6 && mouseY< test.aqy-tTest.l/6 && pTest.legal[test.getActBoard(test.aqx,test.aqy)][2]==0){
        q = 2; 
    }else if (mouseX < test.aqx-tTest.l/6 && mouseY < test.aqy+tTest.l/6 && mouseY > test.aqy-tTest.l/6 && pTest.legal[test.getActBoard(test.aqx,test.aqy)][3]==0){
        q = 3; 
    }else if (mouseX > test.aqx-tTest.l/6 && mouseX < test.aqx+tTest.l/6 && mouseY > test.aqy-tTest.l/6 && mouseY < test.aqy+tTest.l/6 && pTest.legal[test.getActBoard(test.aqx,test.aqy)][4]==0){
        q = 4; 
    }else if (mouseX > test.aqx+tTest.l/6 && mouseY > test.aqy-tTest.l/6 && mouseY < test.aqy+tTest.l/6 && pTest.legal[test.getActBoard(test.aqx,test.aqy)][5]==0){
        q = 5; 
    }else if (mouseX < test.aqx-tTest.l/6 && mouseY > test.aqy+tTest.l/6 && pTest.legal[test.getActBoard(test.aqx,test.aqy)][6]==0){
        q = 6; 
    }else if (mouseX > test.aqx-tTest.l/6 && mouseX <= test.aqx+tTest.l/6 && mouseY > test.aqy+tTest.l/6 && pTest.legal[test.getActBoard(test.aqx,test.aqy)][7]==0){
        q = 7; 
    }else if (mouseX > test.aqx+tTest.l/6 && mouseX <= test.aqx+tTest.l && mouseY > test.aqy+tTest.l/6 && mouseY <= test.aqy+tTest.l && pTest.legal[test.getActBoard(test.aqx,test.aqy)][8]==0){
        q = 8; 
    }else{
        q = -1;
    }//END else
    return q;
    }//END q
}//END moves
