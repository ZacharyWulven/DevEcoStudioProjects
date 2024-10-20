import { UIContext } from '@ohos.arkui.UIContext'

@Entry
@Component
struct Index {
  @State isOn: boolean = false;

  build() {
    Column({ space: 20 }) {
      if (this.isOn) {
        Image($r('app.media.ic_public_bluetooth_filled'))
          .width(250)
          .height(250)
          .margin({top: 10})
      } else {
        Image($r('app.media.ic_public_bluetooth_off_filled'))
          .width(250)
          .height(250)
          .margin({top: 10})
      }

      Row({ space: 20}) {
        Button('关闭')
          .onClick(() => {
              this.isOn = false
          })
        Button('开启')
          .onClick(() => {
            this.isOn = true
          })
      }

    }
    .width('100%')
    .height('100%')
    .padding(20)   // 内边距，四边 20
    .backgroundColor(Color.Gray)
    .backgroundImage($r('app.media.DS'))
    .backgroundImageSize(ImageSize.Cover)
    .justifyContent(FlexAlign.SpaceBetween)

  }

}