class Person {
  String name;
  int age;
  String myWork;
  Person(this.name, this.age, this.myWork);
  void work(){
    print('我来父类 ---- 我的工作是: ${this.myWork}');
  }
  void say(){
    print('我的名字是:${this.name}, 我今年:${this.age}');
    this._cry();
  }
  void _cry(){
    print('我是私有方法_cry()');
  }
}