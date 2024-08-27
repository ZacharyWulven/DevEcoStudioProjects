// 交叉轴案例

@Entry
@Component
struct Index {
  build() {
    Column() {
      Row() {
        // 左侧列
        Column({ space: 8}) {
          Text('玩一玩')
            .fontSize(18)
            .fontWeight(700)
            // .margin({bottom: 5})

          Text('签到领卡 ｜ 超级好玩')
            .fontSize(18)
            .fontColor('#999')
        }
        .alignItems(HorizontalAlign.Start)

        // 右侧行
        Row({ space: 10}){
          Image($r('app.media.app_icon'))
            .width(40)
            .backgroundColor('#efefef')

          Image($r('app.media.ic_gallery_create'))
            .width(30)
            .fillColor('#888')

        }
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .padding({
        left: 15, right: 15
      })
        .width('100%')
        .height(80)
        .backgroundColor('#fff')
        .borderRadius(10)


    }
    .padding(10)
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
  }
}