var op = ["+", "-", "*", "/", ""];
// var op = ["*", ""];
for (var i = 1000; i < 10000; i++) {
  var c = String(i);
  for (var j = 0; j < op.length; j++) {
    for (var k = 0; k < op.length; k++) {
      for (var l = 0; l < op.length; l++) {
        val = c.charAt(3) + op[j] + c.charAt(2) + op[k] + c.charAt(1) + op[l] + c.charAt(0);
        if (val.length > 4) {
          if (i == eval(val)) {
            console.log(val + " = " + i);
          }
        }
      }
    }
  }
}