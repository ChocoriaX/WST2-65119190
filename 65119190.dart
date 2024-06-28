// ----------- Person ----------- //
class Person {
  String _name;

  Person(this._name);

  String get name => _name;
  
  set name(String name) => _name = name;
}
// ------------------------------ //

// ----------- Engine ----------- //
class Engine {
  String _model;
  int _speed;

  Engine(this._model, this._speed);

  String get model => _model;
  int get speed => _speed;

  set model(String model) => _model = model;
  set speed(int speed) => _speed = speed;
  
  void displayEngineInfo(){
    print('Model: $_model');
    print('Speed: $_speed km/h');
  }
}
// ----------------------------- //

// ------------ Car ------------ //
class Car {
  String _brand;
  String _model;
  Person _owner;
  Engine _engine;

  Car(this._brand, this._model, this._owner, this._engine);
  
  String get brand => _brand;
  String get model => _model;
  Person get owner => _owner;
  Engine get engine => _engine;
  
  set brand(String brand) => _brand = brand;
  set model(String model) => _model = model;
  set owner(Person owner) => _owner = owner;
  set engine(Engine engine) => _engine = engine;
  
  void displayCarInfo(){
    print('Car: $_brand');
    _engine.displayEngineInfo();
    print('Owner: ${_owner.name}');
  }

  void run(){
    print('Car Running at ${_engine.speed} km/h');
  }
}
// ----------------------------- //

// ----------- Honda ----------- //
class Honda extends Car{
  String _color;
  
  Honda(String brand, String model, Person owner, Engine engine, this._color) : super(brand, model, owner, engine);
  
  String get color => _color;
  set(String color) => _color = color;
  
  void run(){
    var hondaspeed = 120;
    print('Honda Running at $hondaspeed km/h');
  }
  
  void displayCarInfo(){
    print('Car: $_brand');
    print('Color: $_color');
    _engine.displayEngineInfo();
    print('Owner: ${_owner.name}');
  }
}
// ----------------------------- //

void main() {
  var person = Person('Aphichet');
  var person2 = Person('Krodsuea');

  var engine = Engine('Artura', 400);
  var engine2 = Engine('Civic', 120);

  var car = Car('McLaren', 'Artura', person, engine);
  var honda = Honda('Honda', 'Civic', person2, engine2, 'Red');

  print('Car Information');
  car.displayCarInfo();
  car.run();

  print('\nHonda Information');
  honda.displayCarInfo();
  honda.run();
}
