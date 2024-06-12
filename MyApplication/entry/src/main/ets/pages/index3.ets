
// 界面开发
// 往 build 里写代码，在预览器中看效果

// Image 组件
// 1. 网络图片: Image('https://www.itheima.com/images/logo.png')

// 2. 本地图片, 本地图片一般放在 entry/src/main/resources/base/media/
// Image($r('app.media.文件名'))

@Entry
@Component
struct Index {
  @State message: string = 'Hello world';
  build() {
    Column() {
      // 1. 网络图片
      Image('https://www.itheima.com/images/logo.png')
        .width(200) // 给宽或高后，会自适应
      Text('logo!!!')
        .width(200)
      Row() {
        // 2. 本地图片
        Image($r('app.media.icon'))
          .width(50)
        Text('logo!!!')
          .width(200)
      }
      .width(200)
    }
  }
}