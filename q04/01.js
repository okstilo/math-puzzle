function cutbar(n, m, current) {
  if (current >= n) {
    return 0;
  } else if (current < m) {
    return 1 + cutbar(n, m, current * 2);
  } else {
    return 1 + cutbar(n, m, current + m);
  }
}

console.log(cutbar(20, 3, 1));
console.log(cutbar(100, 5, 1));
