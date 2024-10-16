import { UIContext } from '@ohos.arkui.UIContext'

@Entry
@Component
struct Index {
  // 一个登录页面
  build() {
    Column() {
      // 顶部
      Row() {
        Image($r('app.media.ic_public_close'))
          .width(20)
          .backgroundColor(Color.White)
        Text('帮助')
          .fontColor('#fff3')
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween) // 一左一右

      // logo
      Image($r('app.media.MMF'))
        .width(250)
        .height(250)
        .margin({top: 10})




      Row() {

      }


    }
    .width('100%')
    .height('100%')
    .padding(20)   // 内边距，四边 20
    .backgroundColor(Color.Gray)
    .backgroundImage($r('app.media.DS'))
    .backgroundImageSize(ImageSize.Cover)

  }

}
