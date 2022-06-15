
import processing.opengl.*;

import oscP5.*;
import netP5.*;


float r =8;
float z = 0;

float theta = 0.0;

float theta_x = PI*(0.0);
float theta_y = PI*(0.0);
float theta_z = PI*(0.0);

float offset_x = PI*(0.0);
float offset_y = PI*(0.0);
float offset_z = PI*(0.0);

float screen_width = 500;
float screen_length = 500;



OscP5 oscP5;
NetAddress myRemoteLocation;


void setup(){
  size(600,600, P3D);

  oscP5 = new OscP5(this,12000);
  myRemoteLocation = new NetAddress("127.0.0.1", 12000);
  println("Started");
}
void draw(){  
  rectangle_cube();
}
void oscEvent(OscMessage theOscMessage){
  if(theOscMessage.checkAddrPattern("/gravity")==true){
    
    println("received osc message /gravity");
    if(theOscMessage.checkTypetag("fff")){
       float firstVal = theOscMessage.get(0).floatValue();
       float secondVal = theOscMessage.get(1).floatValue();
       float thirdVal = theOscMessage.get(2).floatValue();
       println(" values: ", firstVal, " ", secondVal, " ", thirdVal);
       
       // 
       update_theta(firstVal, secondVal, thirdVal);
       
       return;
    }
  }
  else if(theOscMessage.checkAddrPattern("/orientation")==true){
    println("received osc message /orientation");
    if(theOscMessage.checkTypetag("fff")){
       float firstVal = theOscMessage.get(0).floatValue();
       float secondVal = theOscMessage.get(1).floatValue();
       float thirdVal = theOscMessage.get(2).floatValue();
       println(" values: ", firstVal, " ", secondVal, " ", thirdVal);

       update_orientation(firstVal, secondVal, thirdVal);
       
       return;
    }
  }else{
    println("received something"); 
  }
}
