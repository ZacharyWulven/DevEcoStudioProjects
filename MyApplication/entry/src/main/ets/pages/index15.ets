@Entry
@Component
struct Index {
  build() {
    // Column 交叉轴的对齐方式(水平往右)
    // alignItems(HorizontalAlign.Start)
    // Column() {
    //   Text()
    //     .width(200).height(100)
    //     .backgroundColor(Color.Pink)
    //     .border({width: 2})
    //   Text()
    //     .width(200).height(100)
    //     .backgroundColor(Color.Pink)
    //     .border({width: 2})
    //     .margin({top: 5, bottom: 5})
    //   Text()
    //     .width(200).height(100)
    //     .backgroundColor(Color.Pink)
    //     .border({width: 2})
    //
    // }
    // .alignItems(HorizontalAlign.End) // 水平居右
    // .width('100%')
    // .height('100%')

    // Row 交叉轴的对齐方式(垂直往下) VerticalAlign
    //   .alignItems(VerticalAlign.Center)
    Row() {
    Text()
      .width(60).height(100)
      .backgroundColor(Color.Pink)
      .border({width: 2})
    Text()
      .width(60).height(100)
      .backgroundColor(Color.Pink)
      .border({width: 2})
      .margin({left: 5, right: 5})
    Text()
      .width(60).height(100)
      .backgroundColor(Color.Pink)
      .border({width: 2})

  }
  .alignItems(VerticalAlign.Bottom) // 水平居右
  .width('100%')
  .height('100%')
}

}
