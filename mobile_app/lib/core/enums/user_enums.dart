enum User {
  younes('younes'),
  ali('ali');

  const User(this.value);
  final String value;

  static User fromString(String value) {
    switch (value.toLowerCase()) {
      case 'younes':
        return User.younes;
      case 'ali':
        return User.ali;
      default:
        throw Exception('Unknown user');
    }
  }

  static User fromIndex(int index) {
    switch (index) {
      case 0:
        return User.younes;
      case 1:
        return User.ali;
      default:
        throw Exception('Unknown user');
    }
  }
}
