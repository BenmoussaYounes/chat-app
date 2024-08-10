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
}
