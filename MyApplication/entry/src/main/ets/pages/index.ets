@Entry
@Component
struct Index {
  build() {
    Column() {
      Text('直面天命')
        .height(200) // 单位是 vp
        .width(300)  // 单位是 vp
        .backgroundColor(Color.Pink)
        .backgroundImage($r('app.media.startIcon'))
        .backgroundImagePosition(Alignment.Center)
          // 1. 直接写死，只设置宽或高，然后会自适应
        // .backgroundImageSize({
        //   width: 150,
        //   // height: 100
        // })

          /*
           2. 通过枚举方式
             2.1 Contain: 等比例缩放，展示整张图片，可能会有留白
             2.2 Cover: 等比例缩放，让图片铺满整个容器，不会留白，
             但可能有部分内容显示不全
             2.3 Auto: 原始尺寸，默认
         */
        .backgroundImageSize(ImageSize.Cover)
    }
    .width('100%')
    .padding(30)
  }
}