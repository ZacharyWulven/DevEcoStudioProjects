@Entry
@Component
struct Index {
  build() {
    Column() {
      // layoutWeight 自适应伸缩: 按照权重份数，分配剩余空间

      Row() {
        Text('左边')
          .layoutWeight(1) // 总宽度减去右边的 80 后，占 1 份
          .height(40)

        Text('中间')
          .layoutWeight(2)
          .height(40)
          .backgroundColor(Color.Green)

        Text('右边')
          .width(80).height(40)
          .backgroundColor(Color.Pink)
      }
      .backgroundColor(Color.Gray)
      .margin({bottom: 20})

      Row() {
        // 平均分布例子
        Text('first')
          .layoutWeight(1) // 总宽度减去右边的 80 后，占 1 份
          .height(40)

        Text('second')
          .layoutWeight(1)
          .height(40)
          .backgroundColor(Color.Green)

        Text('third')
          .height(40)
          .layoutWeight(1)
          .backgroundColor(Color.Pink)
      }
      .backgroundColor(Color.Gray)
    }
    .width('100%')
    .height('100%')
    .padding(20)

  }

}
