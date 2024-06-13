// 3 边框 border

@Entry
@Component
struct Index {
  build() {
    Column() {
      Text('未发货')
        .padding(5)
        .border({
          width: 1, // 宽度（必须设置）
          color: Color.Red,  // 颜色
          style: BorderStyle.Dashed // 样式
        })
        .margin({
          bottom: 30
        })

      Text('单边框')
        .padding(5)
        // 可根据 left right top bottom 设置 4 个方向的边框
        .border({
          width: { left: 1, right: 2},
          color: Color.Red,
          style: { left: BorderStyle.Solid, right: BorderStyle.Dotted}
        })
        .margin({
          bottom: 30
        })


      Text('圆角语法-统一数值')
        .width(100)
        .height(60)
        .backgroundColor(Color.Pink)
        .borderRadius(5) // 4个角圆角相同
        .margin({
          bottom: 30
        })

      Text('圆角语法-对象')
        .width(100)
        .height(60)
        .backgroundColor(Color.Pink)
        .borderRadius({
          topLeft: 10,
          topRight: 20,
          bottomLeft: 30,
          bottomRight: 40
        })

      Text('VIP')
        .width(100)
        .height(60)
        .backgroundColor(Color.Orange)
        .borderRadius({
          topLeft: 20,
          bottomRight: 20
        })
        .padding(20)

    }
    .padding(20)
  }
}