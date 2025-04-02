var snowX = [100, 120, 160, 200];
var snowY = [50, 70, 40, 20];

var leafX = [100, 120, 160, 200];
var leafY = [50, 70, 40, 20];

var flowerX = [];
var flowerY = [];




setup = function() {
   size(600, 450); 
   background(164, 212, 255);
  
  
   textSize(40); 
   
    // Draw leaves
   drawLeaves();
 
   for (var i = 0; i < 10; i++) {
       flowerX.push(random(50, 550));
       flowerY.push(random(50, 400));
   }

   drawFlowers();
  
   //  ground
   fill(99, 50, 24);
   rect(-10, 300, 610, 150);
};

//  leaves
function drawLeaves() {
   fill(30, 89, 29);
   for (var i = 0; i < leafX.length; i++) {
       text("🍂", leafX[i], leafY[i]);
   }
}

// flowers
function drawFlowers() {
   fill(255, 0, 0);
   for (var i = 0; i < flowerX.length; i++) {
       text("🌸", flowerX[i], flowerY[i]);
   }
}

draw = function() {
   if(mousePressed) {
       flowerX.push(mouseX);
       flowerY.push(mouseY);
   }
};



