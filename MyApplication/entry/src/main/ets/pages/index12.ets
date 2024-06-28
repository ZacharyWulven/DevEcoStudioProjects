@Entry
@Component
struct Index {
  build() {
    Column() {
      Text()
        .height(200) // 单位是 vp
        .width(300)  // 单位是 vp
        .backgroundColor(Color.Pink)
        .border({ width: 2})

      Text()
        .height(200) // 单位是 vp
        .width(300)  // 单位是 vp
        .backgroundColor(Color.Pink)
        .border({ width: 2})

      Text()
        .height(200) // 单位是 vp
        .width(300)  // 单位是 vp
        .backgroundColor(Color.Pink)
        .border({ width: 2})
    }
    .width('100%')
    .height('100%')
    /*
        设置主方向对齐方式
        justifyCOntent(枚举flexalign)
        1. Start 排布主方向，主轴起始位置对齐
        2. Center 主轴居中对齐
        3. End 主轴结位置中对齐
        4. SpaceBetween first/last 子元素贴边显示，中间元素均匀分布
        5. SpaceAround  每个子元素上下都有间隙
        6. SpaceEvenly 均匀 margin
     */
    // .justifyContent(FlexAlign.Center)
    // .justifyContent(FlexAlign.SpaceBetween)
    // .justifyContent(FlexAlign.SpaceAround)
    .justifyContent(FlexAlign.SpaceEvenly)

  }
}