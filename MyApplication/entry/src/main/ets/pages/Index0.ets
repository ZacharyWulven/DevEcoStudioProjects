console.log('Message', 'msg2')


// 常见的三种数据类型
// 1. 字符串 string 类型
// 字符串使用 单引号或双引号
let title: string = '巨无霸汉堡'
console.log('字符串', title)

// 1.2. 数字 number 类型
let age: number = 18
console.log('年龄', age)

// 1.3 布尔 boolean
let isLogin: boolean = false
console.log('是否登录成功', isLogin)

age = 81
console.log('年龄', age)

// 2.1 常量使用 const
const PI: number = 3.1415926
console.log('PI:', PI)

const companyName: string = 'HUAWEI'
console.log('公司名称', companyName)

// 变量命名规则：
// 1 只能包含数字、字母、下划线、$, 不能以数字开头
// 2 常量用 const，变量用 let
// 3 严格区分大小写


// 3 数组：可存储多个数据
// let 数组名: 类型[] = [数据1, 数据2]
let names: string[] = ['小李', '小王']
console.log('names：', names)
console.log('1号：', names[1])
// Note：数组声明好的类型，后面存储的数据必须和他一致


// 4 函数
function buy(price: number, num: number) {
  let total: number = price * num
  return total
}

let apple = buy(2, 3)
console.log('Apple:', apple)

// 5 箭头函数
// () => {} 这是一个箭头函数
let buy2 = (price: number, num: number) => {
  let total: number = price * num
  return total
}
let apple2 = buy2(2, 3)
console.log('Apple2:', apple)

// 6 对象
// 通过 interface 接口约定 对象结构类型
/*
    interface 接口名 {
      属性1: 类型1      // 注意：定义时，这里没有逗号
      属性2: 类型2
    }
 */

// 6.1 定义接口
interface Person {
  name: string
  age: number
  weight: number

  // 定义方法类型
  sing: (songName: string) => void
  dance: () => void
}
// 6.2创建对象
let tom: Person = {
  name: 'tom',
  age: 18,
  weight: 90,

  sing: (songName: string) => {
    console.log('is singing the ', songName)
  },
  dance: () => {
    console.log('is dancing')
  }

}
// 6.3 获取属性名
console.log('体重：', tom.weight)

// 7 对象 - 方法
// 1 约定方法类型
// 2 添加方法（箭头函数）
/*
    格式：
    interface 接口名称 {
      方法名: (参数: 类型) => 返回类型
    }
 */

tom.sing('haha')

// 7 联合类型
// 语法：let 变量: 类型1 | 类型2 | 类型3 = 值

let judge: number | string = 100
console.log('考试评价：', judge)
judge = 'A+'
console.log('考试评价：', judge)

// 联合类型还可以将变量值约定在一组数据范围内进行选择
let gender: 'man' | 'woman' | 'secret' = 'man'
console.log('gender：', gender)

// 8 枚举类型
// 枚举名和枚举变体首字母大写

// 定义枚举
enum ThemeColor {
  Red = '#ff0f29',
  Orange = '#ff7100',
  Green = '#30b30e'
}

let color: ThemeColor = ThemeColor.Red
console.log('color ', color)


// 界面开发
// 往 build 里写代码，在预览器中看效果



@Entry
@Component
struct Index {
  @State message: string = 'Hello world';
  build() {
    // // 行
    // Row() {
    //   // 列
    //   Column() {
    //     // 文本 函数名(参数)
    //     Text(this.message)
    //       .fontSize(40)                // 设置字号
    //       .fontWeight(FontWeight.Bold) // 设置字重
    //       .fontColor(Color.Green)      // 设置文本颜色
    //   }
    //   .width('100%')
    // }
    // .height('100%')

    // > 从上往下布局用 Column，从左往右用 Row
    // > Note：`build()` 中有且只能有一个`容器组件`
    Column() {
      // 默认 Text 和 Row 是从左往右展示的，而其居中显示是因为没有设置宽度
      Text('小说简介')
        .width('100%')
        // .backgroundColor(Color.Grey)
        .height(40)
        .fontSize(24)
        .fontWeight(700) // 100~900 数字，越大越粗
        // .fontWeight(FontWeight.Bold)
      Row() {
        Text('都市')
          .width(50)
          .height(30)
          .backgroundColor(Color.Orange)
        Text('生活')
          .width(50)
          .height(30)
          .backgroundColor(Color.Yellow)
        Text('情感')
          .width(50)
          .height(30)
          .backgroundColor(Color.Pink)
        Text('克苏鲁')
          .width(50)
          .height(30)
          .backgroundColor(Color.Green)
      }
      .width('100%')
    }
    // width 的百分比就相当于向对父级来计算的，如果没有父级就相对于整行计算
    .width('100%')
    // 百分比需要用引号，数字直接写就行
    // .width(200)
    // .backgroundColor(Color.Pink)
  }
}