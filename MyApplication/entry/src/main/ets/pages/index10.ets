@Entry
@Component
struct Index {
  build() {
    Column() {
      // 1 正圆 (头像)
      Image($r('app.media.startIcon'))
        .width(100)
        .height(100)      // 宽高一样
        .borderRadius(50) // 圆角为高度的一半
        .padding(5)
        .backgroundColor(Color.Pink)
        .margin({
          bottom: 30
        })

      // 2 胶囊按钮
      Text('今天还没打开~')
        .height(50)
        .borderRadius(25)
        .backgroundColor(Color.Pink)
        .width(200)

    }
    // .backgroundColor(Color.Black)
    .width('100%')
    .padding(30)
  }
}