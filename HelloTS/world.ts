// 解决方法 1：导入重命名, 使用 `as` 关键字
// import { hello as helloFromA, helloText } from "./hello";

// helloFromA()


// 解决方法 2：创建模块对象

import * as A from "./hello"

A.hello()
A.helloText

import helloFromA from "./hello"

helloFromA()