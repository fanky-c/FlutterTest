 //dart中方法的基本使用

 /**
  * 函数的作用域 global外面一层是无法访问内部inner的方法
 */
  void global(){
    void inner(){
      print('我是内部方法， 外面无法调用');
    }
  }


 /**
  * 方法的可选参数 []
  * 方法的形参默认值 sex = '男'
  */
 String printUserInfo(String username,[String sex = '男',int age]){
   return "姓名:$username---性别:$sex--年龄:$age";
 }



 /**
  * 定义一个命名参数的方法
  */
String printUserInfoByObject(String username, {int age = 10, String sex = '女'}){
   if(sex == '女'){
      return '我是非常可爱，姓名：$username --- 性别：$sex --- 年龄：$age';
   }
   return '我是非常帅气，姓名：$username --- 性别：$sex --- 年龄：$age';
}
