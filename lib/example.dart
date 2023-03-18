class Me {
  static final Me _singleton = new Me._internal();
  static final String _name = "MJ";

  factory Me() {
    return _singleton;
  }

  static String get name => _name;

  @override
  String toString() => "Hello, my name is $name.";

  Me._internal();
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

}