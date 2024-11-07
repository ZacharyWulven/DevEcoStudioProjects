@Component
export struct CustomButton {

  tintColor: Color = Color.Green

  build() {
    Button({ type : ButtonType.Circle }) {
      Image($r('app.media.ic_public_close'))
    }
    .width(40).height(40)
    .backgroundColor(this.tintColor)
  }
}