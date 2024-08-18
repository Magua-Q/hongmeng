
@Entry
@Component

struct TextInputPage {
  build() {
    Column({
      space: 10
    }) {
      TextInput({
        placeholder:"请输入用户名"
      })
      TextInput({
        placeholder:"请输入密码"
      }).type(InputType.Password)
        .onChange((value) =>{
          console.log(value)
        })
      Button("登录").onClick(() => {
        AlertDialog.show({
          message: "success"
        })
      })
    }.height("100%").width("100%")
    .padding({
      left: 20,
      right: 20,
      top: 20
    })
  }
}