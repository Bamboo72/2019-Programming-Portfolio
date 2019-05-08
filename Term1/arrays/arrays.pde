//Jacob Schwartz 10/8/18



////AN ARRAY WITH 100 INTEGERS FROM 1 TO 100
// int[] nums = new int[101];
//for(int i = 0; i < nums.length; i += 1){
//nums[i] = i;
//println(nums[i]);
//}
////printArray(nums);


////AN ARRAY WITH RANDOM NUMBERS BETWEEN 1 AND 100
//int[] nums = new int[101];
//for(int i = 0; i < nums.length; i += 1){
//nums[i] = int(random(100));
//println(nums[i]);
//}
////printArray(nums);

int [] nums = {5, 4, 2, 7, 6, 8, 5, 2, 8, 14};

////Problem #1
//for (int i = 0; i < nums.length ; i++ ){
//nums[i]=int(sq(nums[i]));
//println(nums[i]);
//}
////printArray(nums);

////Problem #2
//for (int i = 0; i<nums.length; i++){
//nums[i] += int(random(10));
//println(nums[i]);
//}
////printArray(nums);

////Problem #3
//for (int i = 0; i<nums.length-1; i++){
//nums[i] += nums[i+1];
//println(nums[i]);
//}
////printArray(nums);

////Problem #4
//int total = 0;
//for (int i = 0; i<nums.length; i++){
//total += nums[i];
//}
//println(total);

////Problem #5
//int x,y,w,h;

//void setup() {
//  size(200,200);
//x = 50;
//y = 50;
//w = 100;
//h = 75;
//}

//void draw(){
//background(255);
//stroke(0);
//if(mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h){
//  fill(255,0,0);
//} else {
//fill(127);
//}
//rect(x,y,w,h);
//}

//Problem #6
int x,y,w,h;

void setup() {
  size(200,200);
x = 50;
y = 50;
w = 100;
h = 75;
}

void draw(){
background(255);
stroke(0);
if(mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h){
  fill(255,0,0);
} else {
fill(127);
}
rect(x,y,w,h);
}
