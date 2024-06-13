@Entry
@Component
struct Index {
  build() {
    Column() {
      Image($r('app.media.ic_gallery_create'))
        .width(100)
        .fillColor('#ff5860')
        .margin({
          bottom: 20
        })

      Text('直面天命')
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .margin({
          bottom: 60
        })

      Button('QQ 登录')
        .width('100%')
        .margin({
          bottom: 20
        })

      Button('微信登录')
        .width('100%')
        .backgroundColor('#ddd')
        .fontColor('#000')
    }
    .width('100%')
    .padding(30)
  }
}