/* Assignment - 8

Selection and Repetition

ID: 00318934
Student Name: Patricia Antlitz
Professor: Ethel Schuster
Date: 4 November 2020
Class: CIS-140

Write a program to print: (i) images, for example, a pumpkin for Halloween, 
(ii) the integers from 11 to 20, following the string “Happy Fall,” the day, 
each in a separate line. Your output text should be printed both on the 
canvas and the console window. Write your code using a do...while loop. Name 
your program happy_fall.pde. Your program should print, in separate lines. 
Happy Fall, October 11

Happy Fall, October 11
Happy Fall, October 12
… (up to October 20)

- This program contains 9 functions including 2 built-in functions. It works
by clicking the button to run which should display an image of a turkey in a 
bed of autumm colored leafs with the phrase "Be thankful" followed by the
print out on the screen and on the console of the phrase "Happy Fall - 
October, -date-, with the -date- as a number from 11 to 20. 

The work I am submitting is my own in its entirety
*/


// Global variables set colors to be used
int blue = color(156, 210, 226);
int white = color(255);
int black = color(0);
int yellow = color(255, 230, 150);

// variable font of type PFont will change the font to be used by the program
PFont font;

// Built-in function setup will hold the setting to run the program
void setup(){
  //function size will set the size of the screen to 600px wide and 800px tall.
  size(600, 800);
// call variable "font" to load the selected font  
  font = loadFont("SignPainter-HouseScriptSemibold-48.vlw");
}

// Built-in function draw will hold all the commands to run the program
void draw(){
  // function background will change the color to yellow
  background(yellow);
  /* funtion drawEllipse draws a circle on the screen that is placed at 
  300px in the x axis, 270 in the y axis and given the color blue*/
  drawEllipse(blue, 300, 270, 450, 450);
  /*Function drawLeafs will draw a straight line of "leafs" using two triangle
  functions*/
  drawLeafs(60, 50, 370, 140, 390, 100, 470, 50, 400, 140, 450, 100, 350,
  9*width/16);
  drawLeafs(60, 0, 350, 70, 300, 100, 400, 40, 400, 20, 290, 100, 350,
  10*width/16);
  // Draws the "turkey" drawing
  drawTurkey();
  // Character phrase
  write(black, 77, "Be Thankful", 145, 155);
  // creates a black "border" or "shadow" for the phrase
  write(white, 75, "Be Thankful", 150, 150);
  // prints the dates on the half left side of the screen 11 to 15
  printDates(10, 60, 14);
  // prints the rest of the dates on the right side, 16 to 20
  printDates(15, 320, 19);
  // line in the middle of the screen separating the dates
  drawLine();
  // removes the loop in the color of the leafs
  noLoop();
}

/*Function drawLeafs draw leafs on the character, calls for param space, 
which is the amount added to integer x everytime the it goes on the loop
params x1, y1, x2, y2, x3, y3 are the commands for the first line of
triangles, params tx1, ty1, tx2, ty2, tx3, ty3 are the commands of the
second triangle, which should line up on top of the first line of triangles, 
rotated giving it an impression of a leaf shape. Param wide is the 
width in which the loop will loop*/
void drawLeafs(int space, int x1, int y1, int x2, int y2, int x3, int y3,
int tx1, int ty1, int tx2, int ty2, int tx3, int ty3, int wide){
  // variable x will set the initial location for x
  int x = 0;
  // do these commands
  do {
    // add space to x
    x = x+space;
    // remove stroke from shapes
    noStroke();
    // fill the shapes with a random color from red to green and in between
    fill(random(255), random(200), random(0));
    // first triangle
    triangle(x+x1, y1, x+x2, y2, x+x3, y3);
    // second triangle, add variable x to all x axis commands
    triangle(x+tx1, ty1, x+tx2, ty2, x+tx3, ty3);
  } while (x < wide); /* do that while x is less than the amount specified 
  by param wide*/
}

//Function drawEllipse draws all circles and ellipses in the program
void drawEllipse(int c, int x, int y, int w, int t){
  // gives it a stroke thickness of 5px
  strokeWeight(5);
  // fill it with color c to be specified once the function is called
  fill(c);
  // passes params to create ellipse
  ellipse(x, y, w, t);
}

/* Function drawRect creates all rectangles in the character, use for the 
turkey legs*/
void drawRect(int c, int x, int y, int w, int t){
  // fills it with chosen color
  fill(c);
  // passes params to create rectangle
  rect(x, y, w, t);
}

/* Function drawTurkey uses the previous functions drawRect and drawEllipse
to create a turkey character on the screen*/
void drawTurkey(){
  // removed the stroke present on ellipse
  noStroke();
  // selects the color of the turkey legs and wings
  int tL = color(170, 100, 4);
  // selects the color of the body of the turkey
  int turkey = color(214, 137, 0);
  
 //back turkey leg
  drawRect(tL, 430, 220, 50, 20);
  drawEllipse(tL, 480, 230, 40, 30);
  
  //turkey body
  drawEllipse(turkey, 290, 270, 350, 220);
  // front turkey leg
  drawRect(tL, 430, 260, 50, 20);
  drawEllipse(tL,480, 270, 40, 30);
  drawEllipse(tL, 380, 270, 150, 80);
  //turkey wing
  drawEllipse(tL, 200, 290, 100, 70);
  drawEllipse(tL, 240, 250, 40, 100);
}

/*Function write will write all phrases on the screen, passes param c
for the color of the text, param size for the size of the font, param
text for the actual phrase and params w and t for the location of 
the text on the screen*/
void write(int c, int size, String text, int w, int t){
  // give the text a certain color
  fill(c);
  // selects the font by passing variable named font and give it a size
  textFont(font, size);
  // passes param text and location
  text(text, w, t);
}

// Function draws line that separates the dates
void drawLine(){
  //gives a color black to the lines
  stroke(black);
  // a thickness of 5px
  strokeWeight(5);
  // draws the line from x 302 to y 520-770
  line(302, 520, 302, 770);
}

/*Function printDates will print the phrase "Happy Fall - October, <date> on
the screen and on the console, passes param d for the initial number to be
looped, param x for the position of the phrase on the x axis, param n for
the total number to be looped until*/
void printDates(int d, int x, int n){
// variable day equals param d which sets the initial number to loop
  int day = d;
  // variable loc sets the initial location of the phrase in the y axis
  int loc = 0;
  // do these commands
  do {
    // add one to variable day
  day = day+1;
  // add 50px to variable loc
  loc = loc+50;
  // print to the console the phrase plus the value of day
  println("Happy Fall, October " + day);
  /* uses function write to write on the screen the phrase plus the
  value of variable day on the loop, set the position to param x
  and initiate the position of y at 500px adding the value
  of variable loc to it each time it loops*/
  write(black, 30, "Happy Fall, October " + day, x, 500+loc);
  } while (day <= n); // while variable day is less or equal than param n
}

//end.
