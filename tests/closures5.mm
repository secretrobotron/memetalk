/* Shadowing identifiers within nested closures */
module foo() {

  fun x(g) {
    return g()(10);
  }

  fun main() {
    var z = 9;
    var f = fun() {
      var y = 10;
      return fun(x) { z + x + y };
    };
    var w = fun() {
      var z = 1000;
      return z;
    };
    var j = w();
    var k = x(f);
    return x(f);
  }
}
