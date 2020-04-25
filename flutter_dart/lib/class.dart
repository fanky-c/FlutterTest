// dart中类的基本使用

class Person{
  //公共属性
  String name = 'chao';
  int age = 10;
  
  //私有属性
  String _sex = '男';

  //默认构造方法
  //初始化属性
  Person(String name, int age):name='超',age=10{
     this.name = name;
     this.age = age;
  }
  
  //默认构造方法简写
  //Person(this.name, this.age);

  //命名构造函数
  Person.eat(){
    print('我是命名构造函数');
  }
  
  //公共方法
  String say(){
     return '我叫${this.name}, 我今年${this.age}';
  }
  

  get myName{
    return this.name;
  }

  set myAge(int age){
    this.age = age;
  }
  
  //私有方法
  void _think(){
     print('我是私有方法， ${this.name}正在思考中....');
  }

}