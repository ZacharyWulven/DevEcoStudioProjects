@Entry
@Component
struct Index {
  build() {
    Column() {
      // 1 背景图
      Text('直面天命')
        .height(100)
        .width(200)
        .borderRadius(25)
        .backgroundColor(Color.Pink)
        // 设置背景图 .backgroundImage(图片地址, 平铺方式枚举) 默认不平铺
        .backgroundImage($r('app.media.startIcon'), ImageRepeat.NoRepeat)
        .backgroundImagePosition({x: 100, y: 50})
        .backgroundImagePosition(Alignment.Center)
    }
    .width('100%')
    .padding(30)
  }
}