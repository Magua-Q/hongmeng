@Entry
@Component
struct ButtonPage {  // 自定义组件 struct 关键词 Index 组件名称
  @State message: string = 'Hello World'

  build() { // UI描述 内容 + 样式
    Row() {
      Column() {
        Button("登录").type(ButtonType.Capsule)
        // Button("登录").type(ButtonType.Normal)
        // Button("登录").type(ButtonType.Circle)
      }
      .width('100%')
    }
    .height('100%')
  }
}