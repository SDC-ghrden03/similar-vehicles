const faker = require('faker');
const Pics = require('./seeds/seedPictures.js');

var pictures = Pics.pics
var index = Math.floor(Math.random() * pictures.length);
console.log(pictures[index]);