class Item {                 // item class
  String name;
  int price; 

  Item (String a, int b) {

    this.name = a;
    this.price = b; 
  }
}

class Button extends Item{      //creation of item boxes
  float x, y;
  int red, green, blue;
  Button (String a, int b, float c, float d, int r, int g, int bl){
   
   super(a,b);
   this.x=c;
   this.y=d;
   this.red=r;
   this.green=g;
   this.blue=bl;
  }
  
  void create(){
    fill(0);
    rect(this.x, this.y, 175, 75);
    fill(this.red, this.green, this.blue);
    textSize(18);
    text(this.name, this.x+10, this.y+43);
  }
  
  void pay(){                             //payment function
    money-=this.price;
  }
}

int money;
Button [] items = new Button[9];

void setup(){                                   //decleration of items and program set up
  size(500, 700);
  money = 1;
  items[0] = new Button("Water Bottle: $1", 1, 35, 50, floor(random(255)), floor(random(255)), floor(random(255)));
  items[1] = new Button("Pepsi: $2", 2, 35, 350, floor(random(255)), floor(random(255)), floor(random(255)));
  items[2] = new Button("Doritos: $3", 3, 300, 50, floor(random(255)), floor(random(255)), floor(random(255)));
  items[3] = new Button("Coffee Crisp: $3", 3, 300, 150, floor(random(255)), floor(random(255)), floor(random(255))); 
  items[4] = new Button("Add 1$ to Wallet", 0, 160, 450, floor(random(255)), floor(random(255)), floor(random(255)));  //this is the money function which allows user to add money
  items[5] = new Button("Sprite: $2", 2, 35, 250, floor(random(255)), floor(random(255)), floor(random(255)));
  items[6] = new Button("Fanta: $2", 2, 35, 150, floor(random(255)), floor(random(255)), floor(random(255)));
  items[7] = new Button("Lays: $3", 3, 300, 250, floor(random(255)), floor(random(255)), floor(random(255)));
  items[8] = new Button("M&M: $3", 3, 300, 350, floor(random(255)), floor(random(255)), floor(random(255))); 
}

void draw(){
  fill(255);
  rect(0, 0, width, height);
  
  items[0].create();
  items[1].create();
  items[2].create();
  items[3].create();
  items[4].create();
  items[5].create();
  items[6].create();
  items[7].create();
  items[8].create();
  
  fill(0);                 //set up of vending machine name and money function display information
  textSize(25);
  text("Money = $"+money, 165, 600);
  fill(random(255), random(255), random(255));
  text("Asad's Splending Vending Machine", 40, 30);
  
}

void mousePressed(){                                                                                            //making the boxes work properly
  if(mouseX >= items[0].x && mouseX <= items[0].x+175 && mouseY >= items[0].y && mouseY <= items[0].y+75) {     // if user clicks on the box
    if(money>0) {
      items[0].pay();                                                                                           //will process click and give item if they have enough money
      println("You Bought a Water Bottle");
    }
    else println("ERROR - Insufficent Funds (Broke?)");                                                         //if they don't have money
  }                                                                                                             //these same comments apply to every if statement in this group as they are essentially the same
                                
  
  if(mouseX >= items[1].x && mouseX <= items[1].x+175 && mouseY >= items[1].y && mouseY <= items[1].y+75) {
    if(money>1){
      items[1].pay(); 
      println("You Bought Pepsi");
    }
    else println("ERROR - Insufficent Funds (Broke?)");
  }

  if(mouseX >= items[2].x && mouseX <= items[2].x+175 && mouseY >= items[2].y && mouseY <= items[2].y+75){ 
    if(money>2) {
      items[2].pay(); 
      println("You Bought Doritos");
    }
    else println("ERROR - Insufficent Funds (Broke?)"); 
  }

  if(mouseX >= items[3].x && mouseX <= items[3].x+175 && mouseY >= items[3].y && mouseY <= items[3].y+75) {
    if(money>2) {
      items[3].pay(); 
      println("You Bought a Coffee Crisp");
    }
    else println("ERROR - Insufficent Funds (Broke?)"); 
  }
  if(mouseX >= items[4].x && mouseX <= items[4].x+175 && mouseY >= items[4].y && mouseY <= items[4].y+75) {    //this adds money to funds if user clicks the box
  money += 1;
  }
  if(mouseX >= items[5].x && mouseX <= items[5].x+175 && mouseY >= items[5].y && mouseY <= items[5].y+75) {
    if(money>1) {
      items[5].pay(); 
      println("You Bought a Sprite");
    }
    else println("ERROR - Insufficent Funds (Broke?)"); 
  }
  if(mouseX >= items[6].x && mouseX <= items[6].x+175 && mouseY >= items[6].y && mouseY <= items[6].y+75) {
    if(money>1) {
      items[6].pay(); 
      println("You Bought Fanta");
    }
    else println("ERROR - Insufficent Funds (Broke?)"); 
  }
  if(mouseX >= items[7].x && mouseX <= items[7].x+175 && mouseY >= items[7].y && mouseY <= items[7].y+75) {
    if(money>2){
      items[7].pay();
      println("You Bought Lays");
    }
    else println("ERROR - Insufficent Funds (Broke?)"); 
  }
  if(mouseX >= items[8].x && mouseX <= items[8].x+175 && mouseY >= items[8].y && mouseY <= items[8].y+75) {
    if(money>2) {
      items[8].pay(); 
      println("You Bought M&M's");
    }
    else println("ERROR - Insufficent Funds (Broke?)"); 
  }
}
