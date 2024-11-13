import { Font } from '@ohos.arkui.UIContext'

@Entry
@Component
struct Fruits {
  @State options: string[] = ["Apple", "Cherry", "Banana", "Orange"]
  @State answer: string = "____?"

  build() {
    Column({ space: 20 }) {
      Row() {
        Text('你最喜欢的水果是')
          .fontSize(25)
          .fontWeight(FontWeight.Bold)
        Text(this.answer)
          .fontSize(25)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.Green)

      }

      ForEach(this.options, (item: string) => {
        Button(item)
          .width(100)
          .backgroundColor(Color.Green)
          .onClick(() => {
            this.answer = item
          })
      })

    }
    .width('100%')
    .height('100%')
    .padding(20)   // 内边距，四边 20
    .justifyContent(FlexAlign.Center)

  }

}