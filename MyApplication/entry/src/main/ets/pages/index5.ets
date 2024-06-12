// 组件练习
/*
    构建界面思路：
    * 1 排版（分析布局）
    * 2 内容（基础组件）
    * 3 美化（属性方法）
 */


@Entry
@Component
struct Index {
  build() {
    Column({ space: 20 }) {

      Image($r('app.media.app_icon'))
        .width(50)

      TextInput({
        placeholder: '请输入用户名'
      })

      TextInput({
        placeholder: '请输入密码'
      }).type(InputType.Password)

      Button('登录')
        .width('100%')

      Row({ space: 15 }) {
        Text('前往注册')
        Text('忘记密码')
      }
    }
    .width('100%')
    .padding(40) // 设置 Column 组件 edgeInsets
  }
}