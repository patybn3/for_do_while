/* Assignment - 8

Selection and Repetition

ID: 00318934
Student Name: Patricia Antlitz
Professor: Ethel Schuster
Date: 4 November 2020
Class: CIS-140

Write a program that includes a set of functions to draw a design of your 
own. Your program should draw that design across the canvas at least 15 
times using a while loop. Your design must be visible as many times as it 
is specified in the while loop. Name your program design_while.pde.

This program runs at "start" click. It should draw on the screen
a set of gray-scale triangles as the background and a set of red
rectangles in the middle of the page.

The work I am submitting is my own in its entirety
*/

// local variable for color black
int black = color(0);

// setup hold the screen size
void setup(){
  // makes screen 600 px wide by 600 px tall
  size(600, 600);

}

// function draw holds the call for the program drawing
void draw(){
  // set background color to black
  background(black);
  // creates vertical and horizontal triangles
  drawTriangle(height);
  // creates a single rectangle in the middle of the page
  oneRect();
  // calls function drawRect which draws rectangles on the screen
  drawRect();
}


void drawRect(){
   // variable j initialized the value to 0
  int j = 0;
  // while the value of j is less than the width of the  page
  while (j < width){
    // create rectangles
    // fill them with a random shade of red
    fill(random(255), random(0), random(0));
    // place rectangle at j point
      rect(j, height/3, 30, 200);
     // add 40 to j, should display 15 rectangles
    j = j+40;
  }
}

// Function draws a rect in the back of the red rectangles
void oneRect(){
  fill(black);
  rect(0, 200, width, 200);
}

void drawTriangle(int tall){

// variable x initialized the value to 0
  int x = 0;
 
  // while the value of x is less than the width of the  page
  while (x < width){
    //initiate the value of y and loop it
    int y = 0;
    //while  y is  less  than tall
    while (y < tall){
    
    // create triangles
    // fill them with a random color on the grayscale
    fill(random(255));
    // place triangle at the x and  y points
      triangle(x+3, y+50, x+30, y, x+55, y+50);
     // add 50 to y
    y = y+50;
  }
  // add 50 to  x
   x = x+50;
  }
  // give  the loop a delay of half a sec
  delay(500);
}

// end.
