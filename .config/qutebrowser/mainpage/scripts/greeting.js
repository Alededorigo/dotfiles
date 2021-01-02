var today = new Date();
var hour = today.getHours();

var g1 = 'おやすみなさい ';
var g2 = 'おはようございます ';
var g3 = 'こんにちは ';
var g4 = 'こんばんは ';
var g5 = 'こんばんは ';
var g6 = 'こんばんは ';

// Define the hours of the greetings
if (hour >= 23 && hour < 5) {
    document.getElementById('greetings').innerText = g1;
} else if (hour >= 6 && hour < 12) {
    document.getElementById('greetings').innerText = g2;
} else if (hour >= 12 && hour < 17) {
    document.getElementById('greetings').innerText = g3;
} else  {
    document.getElementById('greetings').innerText = g4;
}