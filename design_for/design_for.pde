/* Assignment - 8

Selection and Repetition

ID: 00318934
Student Name: Patricia Antlitz
Professor: Ethel Schuster
Date: 4 November 2020
Class: CIS-140

Write a program that includes a set of functions to draw a design/character 
of your own. Your program should draw that design across the canvas, left to 
right, at least 20 times using a for loop. Your design must be visible as 
many times as it is specified in the for loop. Name your program 
design_for.pde.

This program runs by clicking on "start". It should print a background
of rectangles of random color, and 20 - 23 flowers placed at random width and 
height of random colors

I have used other sources, as detailed in my submitted source file. 

flower
https://www.openprocessing.org/sketch/946080
*/

// global variables for colors used
int yellow = color(255, 245, 70);
int black = color(0);
int green = color(0, 200, 0);
int brown = color(145, 91, 40);

// variable flowers set the number of flowers that will show on the screen
int flowers  = 23;
// variable yLoc and xLoc will set the location of each flowers
float[] yLoc = new float[flowers];
float[] xLoc = new float[flowers];

// setup function gives the basic settings to run the program
void setup(){
  // give a screen sized 1400px wide by 600px tall
  size(1400, 600);
}

// fuction draw will run the other function and functionalities of the program
void draw(){
  // call function back that has the setup for the screen background
  back();
  // removes the loop do the image does not change
  noLoop();
 
  /*for loop will loop the variable flowers and place it at a ramdom
  height and random width */
    for(int i = 0; i < flowers; i++){
    yLoc[i] = random(height/8, 13*height/16);
    xLoc[i] = random(width);
  }
  // calls function flower that draws the flowes
  flower();
}

// function back draws 7 ractangles on the background 
void back(){
  /* for loop loops the width of the page starting at 0 and adds 200px to 
  i making the rectangle 200px wide*/
  for(int i = 0; i <= width; i+=200){
    // adds a black border 
    stroke(black);
    // gives it a thickness of 10 px
      strokeWeight(10);
      // selects a random color for each rectangle
        fill(random(255), random(200), random(200));
        /* makes the rectangle start at the i value on the x axis, 0 on the 
        y axis and gives it a width of 200 and a height equals to the height
        of the page*/
       rect(i, 0, 200, height);
  }
}

void drawPetals(){
   // for loop to create 16 petals
    for(int i=0; i<16; i++){
      // gives it a random color from red to blue and variations
     fill(random(255), random(0), random(150));
     //petals
      ellipse(20, -20, 40, 20);
      //petal lines
       line(20, 0, 40, -10);
       // rotates the petals to the side
       rotate(PI/8);   
      }
}

// Function flower draws flowers on the screen at a random spot
void  flower(){
 // loops between the value of variable flowers 
  for(int j = 0; j < flowers; j++){
    /*push will "save" the current drawing to allow the change on the
    transformation of the style in the future*/
    push();
    // change the thickness of the stroke line to 2
      strokeWeight(2);
      // creating the flower steam, fill it with the color green
       fill(green);
       /* create a rectangle and place it at location xLoc and yLoc when in
       relation to "j", make it 7px thick and the height of the screen */
         rect(xLoc[j], yLoc[j], 7, height);
         // Steam leafs
          ellipse(xLoc[j]+20, yLoc[j]+250, 40, 20);
          ellipse(xLoc[j]-19, yLoc[j]+300, 40, 20);
         line(xLoc[j], yLoc[j]+300, xLoc[j]-30, yLoc[j]+300);
        line(xLoc[j], yLoc[j]+250, xLoc[j]+30, yLoc[j]+250);
        // Flower disk
       fill(yellow);
     ellipse(xLoc[j], yLoc[j], 40, 40);
    //motified the location of the ellipse parameter to the corner
    
   ellipseMode(CORNER);
   // translate the location of the flowers to the location of x and y loc
   translate(xLoc[j], yLoc[j]);  
   drawPetals();
      // restore previous drawing
      pop();
  } 
}

// end.
