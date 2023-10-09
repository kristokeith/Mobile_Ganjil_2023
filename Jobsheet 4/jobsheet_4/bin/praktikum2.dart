void main(List<String> args) {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = <dynamic>{}; // Creates a map, not a set.

  names1.add("Keith C");
  names2.add("2141720217");
  names3.addAll(names1);
  names3.addAll(names2);

  print(names1);
  print(names2);
  print(names3);
}
