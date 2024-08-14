@Entry
@Component
struct Index {
  build() {
    Column() {
      Row() {
        Image($r('app.media.1'))
          .width(30)
        Text('个人中心')
        Image($r('app.media.icon'))
          .width(24)
      }
      .width('100%')
      .height(40)
      .backgroundColor(Color.White)
      .justifyContent(FlexAlign.SpaceBetween) // 主轴对齐方式
      .padding({  // 添加主轴间距，让左右的 icon 不那么靠边
        left: 10,
        right: 10
      })
    }
    .width('100%')
    .height('100%')
  }
}