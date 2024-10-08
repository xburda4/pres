mixin Shouting {
  String? shout;

  prepareShout(String shout) {
    this.shout = shout;
  }

  String shouting() {
    if (shout == null) {
      return "Default scream!";
    }
    return shout!;
  }
}
