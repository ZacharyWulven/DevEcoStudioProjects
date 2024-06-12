
// svg 使用
// svg 官方图片库 https://developer.huawei.com/consumer/cn/design/harmonyos-icon/
// svg 特点：
//   1. 任意放大缩小不失真
//   2. 可以修改颜色


@Entry
@Component
struct Index {
  build() {
    Column({ space: 20 }) {
      // svg 图片
      Image($r('app.media.ic_gallery_create'))
        .width(100)
        .fillColor('#584fde') // 修改 svg 颜色

      Image($r('app.media.ic_gallery_create'))
        .width(100)
        .fillColor('#247058')


    }
    .width('100%')
    .padding(40) // 设置 Column 组件 edgeInsets
  }
}