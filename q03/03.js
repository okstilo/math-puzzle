var N = 100;
var cards = new Array(100)
for (var i = 0; i < N; i++) {
  cards[i] = false
}

for (var i = 2; i <= N; i++) {
  var j = i - 1;
  while (j < cards.length) {
    cards[j] = !cards[j];
    j += i
  }
}

for (var i = 0; i < N; i++) {
  if (!cards[i]) {
    console.log(i + 1);
  }
}
