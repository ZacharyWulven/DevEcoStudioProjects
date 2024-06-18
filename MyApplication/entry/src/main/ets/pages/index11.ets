@Entry
@Component
struct Index {
  build() {
    Column() {
      Text('直面天命')
        .height(200) // 单位是 vp
        .width(300)  // 单位是 vp
        .width('300vp') // 也可这么写，因为默认是 vp 所以可以直接写 300
        .borderRadius(25)
        .backgroundColor(Color.Pink)
        // 设置背景图 .backgroundImage(图片地址, 平铺方式枚举) 默认不平铺
        .backgroundImage($r('app.media.startIcon'), ImageRepeat.NoRepeat)
          /*
           1. 传入对象，坐标值，例：{x: 10, y: 50}
           Note：坐标值的单位和宽高的默认单位不同，显示出来大小会不同
           因为 backgroundImagePosition 目前只支持 px，
           所以可以使用 vp2px 函数将 vp 转为 px
           一般默认单位都是 `vp`，推荐统一使用 vp
         */
        .backgroundImagePosition({
          x: vp2px(150), y: vp2px(100)
        })
        // 2. 传入 Alignment 枚举
        // .backgroundImagePosition(Alignment.Center)
    }
    .width('100%')
    .padding(30)
  }
}