// 输入框：TextInput(参数对象)
// 参数对象: placeholder 提示文本
// 属性方法: .type(InputType.xxx) 设置输入框 type 类型
//   type 值:
//      Normal: 基本输入模式，无特殊限制
//      Password: 密码输入模式

// 按钮：
// Button('按钮文本')

@Entry
@Component
struct Index {
  build() {
    // space 设置 Column 中子元素的间距
    Column({ space: 20 }) {
      TextInput({
        placeholder: '请输入用户名'
      })

      TextInput({
        placeholder: '请输入密码'
      }).type(InputType.Password)

      Button('登录')
        .width(200)
    }
  }
}