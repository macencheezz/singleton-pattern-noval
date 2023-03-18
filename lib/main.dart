class Me {
  static final Me _singleton = new Me._internal();
  static final String _name = "MJ";
  /* factory is important because it promises to return */
  /*but it doesnt promise to make a new one */
  factory Me() {
    return _singleton;
  }
  /* the constructor is automatically called */
  /* once object is created */
  static String get name => _name;
  /* this is the private static variable */

  @override
  String toString() => "Hello, my name is $name.";

  Me._internal();
  /* initialization logic */
}

void main() {
  var mj = Me();
  var anotherMJ = Me();

  print(mj);
  print(anotherMJ);

  var samenessCheck = identical(mj, anotherMJ)
      ? "We are both the same ${Me.name}."
      : "We are NOT the same. I mean, just look at us.";
  print(samenessCheck);
  /*its identical function of two object such as arguments and return */

}