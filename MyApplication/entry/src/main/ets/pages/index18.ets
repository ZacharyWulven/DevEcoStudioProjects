@Entry
@Component
struct Index {
  build() {
    Column() {
      Column() {
        Image($r('app.media.hk'))
          .width('100%')
          .backgroundColor('#efefef')
          .borderRadius({
            topLeft: 5,
            topRight: 5
          })

        Text('今晚吃这个 | 每日艺术分享 No.43')
          .fontSize(14)
          .fontWeight(600)
          .lineHeight(22)
          .height(60)
          .margin({
            left: 10,
            right: 10
          })

        // 底部
        Row() {
          // 头像、昵称
          Row({ space: 5}) {
            Image($r('app.media.1'))
              .width(10)
              .borderRadius(8)

            Text('插画师分享地点')
              .fontSize(10)
              .fontColor('#999')
          }
          .layoutWeight(1)

          Row({ space: 5 }) {
            Image($r('app.media.app_icon'))
              .width(12)
              .fillColor('#999')

            Text('23000')
              .fontSize(10)
              .fontColor('#666')

          }

        }
        .padding({
          left: 15,
          right: 15
        })

      }
      .width(200)
      .padding({
        bottom: 15
      })
      .backgroundColor(Color.White)
      .borderRadius(5)

    }
    .width('100%')
    .height('100%')
    .padding(20)
    .backgroundColor(Color.Gray)


  }

}
