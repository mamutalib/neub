// const car = { 
//     type: "Lamborghini", 
//     model: "500",
//     color: "Red"
// };

// console.log(car.color);


// const bd = {
//     type: "Bangaldesh",
//     captain: "Sakib Al Hasan",
//     vice_captain:"Atif Hussain"
// };

// console.log(bd.captain)
// console.log(bd.type)


// const bds = {
//     type: "Sakib Al Hasan",
//     do1: "Batsman",
//     do2:"Bowler",

//     doing: function(){
//         return this.do1+" "+ this.do2;
//     }
// }

// console.log(bds.doing());


// const math = {
//     sum: function(a,b){
//         return a+b
//     }
// }

// console.log(math.sum(10,20));

// const math2 = {
//     a:10000000000,
//     b:20,
//     sum: function(){
//         return this.a+this.b;
//     }
// }
// console.log(math2.sum());

let str = "Ayon Dey sir";
let len = str.length;

console.log(len)

let str2 = "Ayon Dey \"sir\"";

console.log(str2)

let str3 = "Shahriar Hussain";
let str4 = str3.slice(0,3);

console.log(str4)


let txt = "Please visit at office, office and office";
let txt2 = txt.replace("office","home");
let txt3 = txt.replace(/office/g, "gym");

console.log(txt)
console.log(txt2);
console.log(txt3);


let txt5 = "plesse visit at Office"
let txt6 = txt5.replace(/office/i, "gym");
console.log(txt6)