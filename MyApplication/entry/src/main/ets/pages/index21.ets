@Entry
@Component
struct Index {
  build() {
    Column({ space: 20 }) {
      Button({type: ButtonType.Circle}) {
        Image($r('app.media.ic_public_bluetooth_filled'))
          .width(35)
      }
      .width(50)
      .backgroundColor(Color.Red)
      // .type(ButtonType.Capsule) 等于初始化时候的 type 设置
      .onClick(() => { // 事件方法
        console.log("u click the button")
      })
    }
    .width('100%')
    .height('100%')
    .padding(20)   // 内边距，四边 20
    .justifyContent(FlexAlign.Center)

  }

}