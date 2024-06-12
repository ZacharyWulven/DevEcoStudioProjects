@Entry
@Component
struct Index {
  build() {
    Column() {
      Text('HarmonyOS 开发')
        .width('100%')
        .fontColor(Color.Black)
        .fontSize(24)
        .lineHeight(50)
        .fontWeight(FontWeight.Bold)

      Text('学习基础知识：学习 TypeScript 的不同类型和类型运算符，' +
        '了解其作用和用法。 探讨高级话题：理解 TypeScript 复杂的类型系统，' +
        '学习如何安全地处理错误和构建异步程序。 ' + '联系实际应用：' +
        '在你钟爱的前后端框架中使用 TypeScript，' +
        '把现有的 JavaScript 项目迁移到 TypeScript，' +
        '以及在生产环境中运行 TypeScript 应用。')
        .width('100%')
        .lineHeight(24)
        .textOverflow({
            overflow: TextOverflow.Ellipsis
        })
        // 必须配合 maxLines 才有效果
        // 如果设置 overflow: TextOverflow.MARQUEE 则 maxLines 就没有用了
        .maxLines(3)
    }
    .width('100%')
  } 
}