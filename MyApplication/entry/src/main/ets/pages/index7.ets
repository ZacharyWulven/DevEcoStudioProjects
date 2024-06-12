// 布局元素组成
/*
  1. 边框 border
  2. 内边距 padding
  3. 内容区域
  4. 外边距
 */

/*
  内边距 padding
  作用：在组件内添加 insets，拉开内容与组件边缘之间的间距
 */

@Entry
@Component
struct Index {
  build() {
    Column() {
      // 1. padding
      // Text('蒙葛特')
      //   .backgroundColor(Color.Pink)
      //   // .padding(50)
      //   .padding({
      //     top: 20,
      //     left: 10,
      //     right: 15,
      //     bottom: 30
      //   }) // 四个方向设置不同的间距

      // 2. margin
      Row() {
        Text('曹操')
          .backgroundColor(Color.Orange)
          .margin({
            left: 10,
            right: 20
          })
        Text('满宠')
          .backgroundColor(Color.Green)
          // .margin(30) // 设置 4 个方向的外边距
          .margin({
            left: 30,//Note: 这里 left 会和 `曹操` 的 margin.left 叠加
            right: 20
          }) // 设置不同方向的 margin

        Text('赵云')
          .backgroundColor(Color.Gray)

      }

      Column() {
        Text('曹操')
          .backgroundColor(Color.Orange)
          .margin({
            top: 10,
            bottom: 20
          })
        Text('满宠')
          .backgroundColor(Color.Green)
            // .margin(30) // 设置 4 个方向的外边距
          .margin({
            top: 30,//Note: 这里 left 会和 `曹操` 的 margin.left 叠加
            bottom: 20
          }) // 设置不同方向的 margin

        Text('赵云')
          .backgroundColor(Color.Gray)

      }
    }
  }
}