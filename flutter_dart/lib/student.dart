import './person.dart';

//extends 继承关键词
/**
 * 1. extends 继承关键词
 * 1. 子类会继承父类里面可见的属性和方法 但是不会继承构造函数
 * 1. 
 * **/
class Stundent extends Person {
  String sex;

  /*
      1. 构造方法无法继承
      2. 可以通过super调用父类构造方法
  */
  Stundent(String name, int age, String myWork, String sex) : super(name, age, myWork){
    this.sex = sex;
  }

  void run(){
    //调用父类的方法
    super.say();
  }
  
  /**
   *  1. 静态方法和静态属性通过类名方法，不能实例化访问
   *  2. 静态方法不能访非静态属性和方法
   *  3. 非静态方法可以方法静态属性和方法
  */
  static int score = 10;

  static void cry(){
    print('我好伤心的哭了, 因为我的分数是：$score');
  }
  
  //重写父类的方法
  @override
  void work(){
     print('我来子类 ---- 我的工作是: ${this.myWork}');
  }
  
}