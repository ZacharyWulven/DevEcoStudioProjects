console.log('Message', 'msg2')


// 常见的三种数据类型
// 1. 字符串 string 类型
// 字符串使用 单引号或双引号
let title: String = '巨无霸汉堡'
console.log('字符串', title)

// 1.2. 数字 number 类型
let age: Number = 18
console.log('年龄', age)

// 1.3 布尔 boolean
let isLogin: Boolean = false
console.log('是否登录成功', isLogin)

age = 81
console.log('年龄', age)

// 2.1 常量使用 const
const PI: Number = 3.1415926
console.log('PI:', PI)

const companyName: String = 'HUAWEI'
console.log('公司名称', companyName)

// 变量命名规则：
// 1 只能包含数字、字母、下划线、$, 不能以数字开头
// 2 常量用 const，变量用 let
// 3 严格区分大小写


// 3 数组：可存储多个数据
// let 数组名: 类型[] = [数据1, 数据2]
let names: String[] = ['小李', '小王']
console.log('names：', names)
console.log('1号：', names[1])
// Note：数组声明好的类型，后面存储的数据必须和他一致


// 4 函数

@Entry
@Component
struct Index {
  @State message: string = 'Hello world';

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}