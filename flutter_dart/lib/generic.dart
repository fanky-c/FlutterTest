/**
 * 
 * 泛型就是解决类、接口、方法的复用性，以及对不特定数据类型的支持类型校验
 * 
 * **/


//泛型方法
//输入类型T，返回数据格式T
//getRawData<num>(111);
T getRawData<T>(T value){
  return value;
}


//泛型类
class GetClass<T>{
  List list = new List<T>();
  add(T value){
    this.list.add(value);
  }
  printClass(){
    for(var i=0; i<this.list.length; i++){
        print(this.list[i]);
    }
  }
}

//泛型接口
abstract class Cache<T>{
   void getByKey(String key);
   T setByKey(String key, T val);
}

class FileCache<T> implements Cache<T>{
  @override
  void getByKey(String key) {
     print('我是FileCache接口  key --- $key'); 
  }

  @override
  T setByKey(String key, T val) {
    print('我是FileCache接口  key --- $key; val --- $val'); 
    return val;
  }
  
}

class MemoryCache<T> implements Cache<T>{
  @override
  void getByKey(String key) {
    print('我是MemoryCache接口  key --- $key'); 
  }

  @override
  T setByKey(String key, T val) {
    print('我是MemoryCache接口  key --- $key; val --- $val'); 
    return val;
  }
}

