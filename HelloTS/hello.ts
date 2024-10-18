// 创建tsconfig.json。 输入命令tsc --init

console.log('hello world !');


// 可选参数: 调用时未传可选参数，则该参数值为 undefined
function getPersonInfo(name: string, age: number, gender?: string): string {
    if (gender === undefined) {
        gender = '未知'
    }
    return `name: ${name}, age: ${age}, gender: ${gender}`;
}

console.log(getPersonInfo('Tom', 21));
console.log(getPersonInfo('Tom', 21, 'man'));


// 默认参数
function getPersonInfo2(name: string, age: number, gender: string = '未知'): string {
    return `name: ${name}, age: ${age}, gender: ${gender}`;
}

console.log(getPersonInfo('Tom', 21));

// 任意类型
function println(message: any) {
    console.log(message);
}

println(1);
println('abc');

function print(message: any): void {
    console.log(message);
}
console.log(print(1));

function sum(a: number, b: number) {
    return a + b;
}
console.log(sum(1, 2));

console.log('-----------------------');

// 匿名函数
let arr: number[] = [1, 2, 3, 4, 5];
arr.forEach(function (number) {
    console.log(number);
});
console.log('-----------------------');

// arr.forEach(print)

arr.forEach(item => console.log(item));


// Classes
class Person {
    private id: number;
    protected name: string;
    public age: number = 18;

    constructor(id: number, name: string) {
        this.id = id
        this.name = name
    }

    introduce(): string {
        return `hello, I'm ${this.name}, I'm ${this.age} years old.`
    }
}

let p = new Person(1, 'Zack')
println(p.introduce())

class Utils {

    static toLowerCase(str: string) {
        return str.toLowerCase();
    }

}

println(Utils.toLowerCase('HELLO'))


// 继承
class Student extends Person {

    classNum: string;

    constructor(id: number, name: string, classNum: string) {
        super(id, name);
        this.classNum = classNum
    }

    introduce(): string {

        return super.introduce() + 'I am a student'
    }
}

let s = new Student(1, 'tom', '三年二班');
println(s);
println(s.introduce());


// 访问修饰符


// 接口

interface Human {
    id: number;
    name: string;
    age: number;

    introduce(): void;
}

class Man implements Human {
    id: number;
    name: string;
    age: number;

    constructor (id: number, name: string, age: number) {
        this.id = id;
        this.name = name;
        this.age = age;
    }

    introduce(): void {
        console.log('Hello, I am a Man');
    }

}

// 模块化，导入/导出
export function hello() {
    console.log('hello module A');
}

export const helloText = 'hello world!';
const num = 1;

// 模块化，默认导入/导出

// export default function sayHello() {
//     console.log('say hello');
// }

export default function() {
    console.log('say hello');
}