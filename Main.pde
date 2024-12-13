public float yData;
Drink d = new Drink();
public int[] amount;
public int[] numData;
boolean isOn;
color dataC;
boolean isAuto;

boolean Monday = false;
boolean Tuesday = false;
boolean Wednesday = false;
boolean Thursday = false;
boolean Friday = false;
boolean Saturday = false;
boolean Sunday = false;

String[] date = new String[] {"Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"};


public void setup(){
  size(1000,800);
  noStroke();  
  frameRate(50);
  textAlign(CENTER);
  textSize(30);
      
}

theClock c = new theClock();


 public void draw(){
   

   
   //draw the clock
   pushMatrix();
   c.Clock();
   c.isAuto();
   c.draw();
   popMatrix();
   
   drawData(); //Draw Data
   
   drawButton();   
   
}
//key to change time
 public void keyPressed(){  
   c.keyPressed();
 }
 

public void drawButton(){
  
  //Draw circle
     for(int y = 0; y < 7; y++){
     float yCir = (height/7 * (y + 1)) - 50;
     float xCir = 50;
     int diameter = 50;
     color cirColor = color(255);
     if(dist(mouseX, mouseY, xCir, yCir) <= diameter/2){
      cirColor = color(#95E574);
      if(mousePressed){   //Reference from Image Lecture
        if(mouseButton == LEFT){
          chooseDay(y+1);
        }
      }
     }     
     fill(cirColor);
     stroke(0);
     circle(50,yCir,xCir);
     
     fill(#4B57BF);
     textSize(20);
     text(date[y],125 ,yCir + 5);
   } 
   //Draw Box
   
   float xBox;
   float yBox = 665;
   float wBox = 100;
   float hBox = 50;
   color boxColor0 = color(255);

   for(int i = 0; i < 2 ; i++){
     xBox = 400 + (i * 150);
     fill(boxColor0);
     rect(xBox,yBox,wBox,hBox);
     
     if(dist(mouseX, mouseY, 400 + 50, yBox + 50) < 50){
       if(mousePressed){
         if(mouseButton == LEFT){
           c.isAuto = true;
         }
       }
     }
     if(dist(mouseX, mouseY, 550 + 50, yBox + 50) < 50){
       if(mousePressed){
         if(mouseButton == LEFT){
           c.isAuto = false;
         }
       }
     }     
     
     
     fill(0,255,0);
     text("Auto", 450, 695);
     text("Manual", 600, 695);
     
   }
   
 
}
 
 //draw data
public void drawData() {

//change to Monday
  if(Monday == true ){
      int[] numData = new int[amount.length];
  float spacingY = height / (numData.length + 1);
    for (int y = 0; y < numData.length; y++) {
      float yData = spacingY * (y + 1);
      fill(255,0,0);
      
      if(dist(mouseX,mouseY,width/2 + 350,yData-25) <= 50){
        fill(0,0,250);
        if(mousePressed){
          if(mouseButton == LEFT){
            c.h = Monday(y).hour;
            c.m = Monday(y).minute;
          }
        }
      }
      text(nf(Monday(y).hour) + ":" + nf(Monday(y).minute) + " " + Monday(y).drink, width/2 +350, yData);
      
      if(Monday(y).hour == c.h && Monday(y).minute == c.m){
        text(Monday(y).drink,width/2, 150);
      }

    }
    
     }

//Change to Tuesday
  if(Tuesday == true ){
      int[] numData = new int[amount.length];
  float spacingY = height / (numData.length + 1);
    for (int y = 0; y < numData.length; y++) {
      float yData = spacingY * (y + 1);
      fill(255,0,0);
      
      if(dist(mouseX,mouseY,width/2 + 350,yData-25) <= 50){
        fill(0,0,250);
        if(mousePressed){
          if(mouseButton == LEFT){
            c.h = Tuesday(y).hour;
            c.m = Tuesday(y).minute;
          }
        }
      }
      text(nf(Tuesday(y).hour) + ":" + nf(Tuesday(y).minute) + " " + Tuesday(y).drink, width/2 +350, yData);
      
      if(Tuesday(y).hour == c.h && Tuesday(y).minute == c.m){
        text(Tuesday(y).drink,width/2, 150);
      }

    }
    
     }   //<>//
     
//Change to Wednesday
if(Wednesday == true ){
      int[] numData = new int[amount.length];
  float spacingY = height / (numData.length + 1);
    for (int y = 0; y < numData.length; y++) {
      float yData = spacingY * (y + 1);
      fill(255,0,0);
      
      if(dist(mouseX,mouseY,width/2 + 350,yData-25) <= 50){
        fill(0,0,250);
        if(mousePressed){
          if(mouseButton == LEFT){
            c.h = Wednesday(y).hour;
            c.m = Wednesday(y).minute;
          }
        }
      }
      text(nf(Wednesday(y).hour, 2) + ":" + nf(Wednesday(y).minute,2 ) + " " + Wednesday(y).drink, width/2 +350, yData);
      
      if(Wednesday(y).hour == c.h && Wednesday(y).minute == c.m){
        text(Wednesday(y).drink,width/2, 150);
      }

    }
    
     }  
     
//Change to Thursday
  if(Thursday == true ){
      int[] numData = new int[amount.length];
  float spacingY = height / (numData.length + 1);
    for (int y = 0; y < numData.length; y++) {
      float yData = spacingY * (y + 1);
      fill(255,0,0);
      
      if(dist(mouseX,mouseY,width/2 + 350,yData-25) <= 50){
        fill(0,0,250);
        if(mousePressed){
          if(mouseButton == LEFT){
            c.h = Thursday(y).hour;
            c.m = Thursday(y).minute;
          }
        }
      }
      text(nf(Thursday(y).hour) + ":" + nf(Thursday(y).minute) + " " + Thursday(y).drink, width/2 +350, yData);
      
      if(Thursday(y).hour == c.h && Thursday(y).minute == c.m){
        text(Thursday(y).drink,width/2, 150);
      }

    }
    
     } 
     
//Change to Friday
  if(Friday == true ){
      int[] numData = new int[amount.length];
  float spacingY = height / (numData.length + 1);
    for (int y = 0; y < numData.length; y++) {
      float yData = spacingY * (y + 1);
      fill(255,0,0);
      
      if(dist(mouseX,mouseY,width/2 + 350,yData-25) <= 50){
        fill(0,0,250);
        if(mousePressed){
          if(mouseButton == LEFT){
            c.h = Friday(y).hour;
            c.m = Friday(y).minute;
          }
        }
      }
      text(nf(Friday(y).hour) + ":" + nf(Friday(y).minute) + " " + Friday(y).drink, width/2 +350, yData);
      
      if(Friday(y).hour == c.h && Friday(y).minute == c.m){
        text(Friday(y).drink,width/2, 150);
      }

    }
    
     } 
     
//Change to Saturday
  if(Saturday == true ){
      int[] numData = new int[amount.length];
  float spacingY = height / (numData.length + 1);
    for (int y = 0; y < numData.length; y++) {
      float yData = spacingY * (y + 1);
      fill(255,0,0);
      
      if(dist(mouseX,mouseY,width/2 + 350,yData-25) <= 50){
        fill(0,0,250);
        if(mousePressed){
          if(mouseButton == LEFT){
            c.h = Saturday(y).hour;
            c.m = Saturday(y).minute;
          }
        }
      }
      text(nf(Saturday(y).hour) + ":" + nf(Saturday(y).minute) + " " + Saturday(y).drink, width/2 +350, yData);
      
      if(Saturday(y).hour == c.h && Saturday(y).minute == c.m){
        text(Saturday(y).drink,width/2, 150);
      }

    }
    
     } 
     
//Change to Sunday
  if(Sunday == true ){
      int[] numData = new int[amount.length];
  float spacingY = height / (numData.length + 1);
    for (int y = 0; y < numData.length; y++) {
      float yData = spacingY * (y + 1);
      fill(255,0,0);
      
      if(dist(mouseX,mouseY,width/2 + 350,yData-25) <= 50){
        fill(0,0,250);
        if(mousePressed){
          if(mouseButton == LEFT){
            c.h = Sunday(y).hour;
            c.m = Sunday(y).minute;
          }
        }
      }
      text(nf(Sunday(y).hour) + ":" + nf(Sunday(y).minute) + " " + Sunday(y).drink, width/2 +350, yData);
      
      if(Sunday(y).hour == c.h && Sunday(y).minute == c.m){
        text(Sunday(y).drink,width/2, 150);
      }

    }
    
     }    
}

//choose day from Monday to Sunday
public void chooseDay(int choice) {
        switch (choice) {
            case 1:
                Monday(1);
                break;
            case 2:
                Tuesday(1);
                break;
            case 3:
                Wednesday(1);
            case 4:
                Thursday(1);
                break;
            case 5:
                Friday(1);
                break;
            case 6:
                Saturday(1); 
            case 7:
                Sunday(1);
                break;               
            default:
                System.out.println("Please choose a number from 1 to 7");
        }
    }


//data for Monday
public Drink Monday(int m){
  
     Drink[] MO = new Drink[5];
     
     Monday = true;
     Tuesday = false;
     Wednesday = false; 
     Thursday = false;
     Friday = false;
     Saturday = false;
     Sunday = false;
     
     int[] hour = {7,9,14,16,20};
     int[] minute = {12,54,13,39,51};
     String[] drink ={"Coffee", "Water", "Water", "Water", "Water"};
     
     
     for(int i = 0; i< MO.length; i++){
       MO[i] = new Drink(hour[i],minute[i],drink[i]);
       amount = new int[i + 1];
     }
     
     return MO[m];
}
//Tuesday Data
   public Drink Tuesday(int t){
         Drink[] TU = new Drink[8];
     
     Monday = false;
     Tuesday = true;
     Wednesday = false; 
     Thursday = false;
     Friday = false;
     Saturday = false;
     Sunday = false;
     
     int[] hour = {6,8,8,9,12,14,19,21};
     int[] minute = {35,8,47,52,15,43,30,16};
     String[] drink ={"Coffee", "Water", "Water", "Water", "Water", "Water", "Water", "Water"};
     
     
     for(int i = 0; i< TU.length; i++){
       TU[i] = new Drink(hour[i],minute[i],drink[i]);
              amount = new int[i + 1];
     }
     
     return TU[t];
   }
// Wednesday Data
public Drink Wednesday(int w){
  
     Drink[] WE = new Drink[8];
     
     Monday = false;
     Tuesday = false;
     Wednesday = true; 
     Thursday = false;
     Friday = false;
     Saturday = false;
     Sunday = false;
     
     int[] hour = {2,10,13,17,18,18,18,19};
     int[] minute = {47,42,24,58,16,37,50,25};
     String[] drink ={"Water", "Coffee", "Water", "Water", "Water", "Water", "Water", "Water"};
     
     
     for(int i = 0; i< WE.length; i++){
       WE[i] = new Drink(hour[i],minute[i],drink[i]);
       amount = new int[i + 1];
     }
     return WE[w];
}
   
//Thursday Data   
public Drink Thursday(int t){
  
     Drink[] TH = new Drink[7];
     
     Monday = false;
     Tuesday = false;
     Wednesday = false; 
     Thursday = true;
     Friday = false;
     Saturday = false;
     Sunday = false;
     
     int[] hour = {6,7,10,12,12,12,18};
     int[] minute = {36,24,00,03,28,42,02};
     String[] drink ={"Water","Coffee", "Water", "Water", "Water", "Water", "Water"};
     
     
     for(int i = 0; i< TH.length; i++){
       TH[i] = new Drink(hour[i],minute[i],drink[i]);
       amount = new int[i + 1];
     }
     
     return TH[t];
}   
   
//Friday Data   
   public Drink Friday(int f){
         Drink[] FR = new Drink[5];
     
     Monday = false;
     Tuesday = false;
     Wednesday = false; 
     Thursday = false;
     Friday = true;
     Saturday = false;
     Sunday = false;
     
     int[] hour = {7,8,16,17,22};
     int[] minute = {20,55,20,28,00};
     String[] drink ={ "Water", "Coffee", "Coffee", "Water", "Water"};
     
     
     for(int i = 0; i< FR.length; i++){
       FR[i] = new Drink(hour[i],minute[i],drink[i]);
              amount = new int[i + 1];
     }
     
     return FR[f];
   }
   
//Saturday Data   
   public Drink Saturday(int s){
         Drink[] SA = new Drink[5];
     
     Monday = false;
     Tuesday = false;
     Wednesday = false; 
     Thursday = false;
     Friday = false;
     Saturday = true;
     Sunday = false;
     
     int[] hour = {7,9,13,16,17};
     int[] minute = {40,34,54,19,49};
     String[] drink ={"Water","Coffee", "Water", "Water", "Water", "Water", "Water"};
     
     
     for(int i = 0; i< SA.length; i++){
       SA[i] = new Drink(hour[i],minute[i],drink[i]);
              amount = new int[i + 1];
     }
     
     return SA[s];
   }
   
//Sunday Data   
   public Drink Sunday(int s){
         Drink[] SU = new Drink[5];
     
     Monday = false;
     Tuesday = false;
     Wednesday = false; 
     Thursday = false;
     Friday = false;
     Saturday = false;
     Sunday = true;
     
     int[] hour = {7,10,13,14,15};
     int[] minute = {36,8,42,50,56};
     String[] drink ={"Water","Coffee", "Water", "Water", "Water"};
     
     
     for(int i = 0; i< SU.length; i++){
       SU[i] = new Drink(hour[i],minute[i],drink[i]);
              amount = new int[i + 1];
     }
     
     return SU[s];
   }   
