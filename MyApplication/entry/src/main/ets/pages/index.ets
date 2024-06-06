@Entry
@Component
struct Index {
   build() {
    Column() {
      Text('诸葛亮')
        .fontColor(Color.Green)
        .fontSize(24)
        .height(40)
        .width('100%')

      Row() {
        Text('置顶')
          .fontColor('#DF3C50')
          .width(40)
        Text('学院')
          .fontColor('#00a1a1')
          .width(40)
        Text('3999评论')
          .fontColor('#0f3c5f')
      }
      .width('100%')
    }

  }
}