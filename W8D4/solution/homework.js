// function titleize(array, callback) {
//   Array.prototype.map = function () {
//     let anser = [];
//     for (let i = 0; i < this.length; i++) {
//       anser.push(`Mx. ${this[i]} Jingleheimer Schmidt`);
//     }
//     return anser;
//   };
//   Array.prototype.forEach = function (callback) {
//     for (let i = 0; i < this.length; i++) {
//       callback(this[i]);
//     }
//   };
//   let newArry = array.map();
//   return newArry.forEach(callback);
// }

// const printCallback = function (ele) {
//   console.log(ele);
// };

// console.log(titleize(["Mary", "Brian", "Leo"], printCallback));

function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function () {
  console.log(`${this.name} elephant goes phrRRRRRRRRRRR!!!!!!!`);
};

Elephant.prototype.grow = function (num) {
  return this.height + num;
};

Elephant.prototype.addTrick = function (trick) {
  return this.tricks.push(trick);
};

Elephant.prototype.play = function () {
  let trick = this.tricks[Math.floor(Math.random() * this.tricks.length)];
  console.log(`${this.name} is  ${trick}`);
};

let ellie = new Elephant("Ellie", 185, [
  "giving human friends a ride",
  "playing hide and seek",
]);
let charlie = new Elephant("Charlie", 200, [
  "painting pictures",
  "spraying water for a slip and slide",
]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, [
  "trotting",
  "playing tic tac toe",
  "doing elephant ballet",
]);
