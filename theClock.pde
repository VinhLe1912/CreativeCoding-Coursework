class theClock{
  private float sBar,mBar,hBar;
  public int h = 0, m = 0 , s = 0;
  private int sec;
  private boolean isClock = true;
  private boolean isDay;
  private color cColor;
  public boolean isAuto = false;
  
  
  
  
  void draw(){
    background(200);

    
    if(h < 12){isDay = true;} else{isDay = false;}
    

     nf(h,2);
     nf(m,2);
     
     
     fill(255,0,0);
     textAlign(CENTER);
     textSize(50);
     text ( h + ":" + m, width/ 2,100);
 
    
    fill(isDay());
    circle(500,400,400);
    
    
    Clock();
    
    translate(500,400);
    //draw minute bar
    pushMatrix();
    fill(0,0,0);
    rotate(mBar);
    rect(0,-3.25,140,7.5);
    popMatrix();
    //draw hour bar
    pushMatrix();
    fill(250,0,0);
    rotate(hBar);
    rect(0,-5,100,10);
    popMatrix();
    
    fill(255,50,50);
    circle(0,0,20);
    
  }
  
  color isDay(){
    if(isDay){return color(250,215,126); }
    else return color(130,126,250);
  }
    
    void keyPressed(){
        
      if(isAuto == false){
        if( key == 'a' || key == 'A'){h = (h - 1)%24;}
        if( key == 's' || key == 'S') {h = (h + 1)%24;}
        if( key == 'q' || key == 'Q') {m = (m - 1)%60;}
        if( key == 'W' || key == 'w') {m = (m + 1)%60;}
        if( key == 'd' || key == 'D') {isDay = true;}
        if( key == 'n' || key == 'N') {isDay = false;}
      }
   
}
    
       void isAuto(){
      if(isAuto == true){       
        sec++;
        m =  sec % 60;
        h = (sec/60) % 24;
      }
      
       }
    
    void Clock(){
      if (isClock){
        mBar = radians(m*6-90);
        hBar = radians(h*30-90);
      }        
    }
}
