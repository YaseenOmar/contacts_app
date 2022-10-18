

class Contact {
  String _name ;
  String _num;

  Contact(this._name, this._num);

  String get num => _num;

  set num(String value) {
    _num = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}
