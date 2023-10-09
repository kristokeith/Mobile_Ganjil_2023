void main(List<String> args) {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  print(gifts);
  print(nobleGases);

  gifts['thirds'] = 'Keith Cahyawiyanata';
  gifts['fourth'] = '2141720217';

  nobleGases[2] = 'Keith Cahyawiyanata';
  nobleGases[10] = '2141720217';

  mhs1["first"] = "Keith Cahyawiyanata";
  mhs1["second"] = "2141720217";

  mhs2[1] = "Keith Cahyawiyanata";
  mhs2[2] = "2141720217";

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
