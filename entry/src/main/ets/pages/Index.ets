
// 系统组件 Row Column Text 等等 ArkTs
// 属性方法 fontSize fontWeight
// 事件方法 .onClick(() =>{})
@Entry
@Component
struct Index {  // 自定义组件 struct 关键词 Index 组件名称
  @State message: string = '你好鸿蒙'

  build() { // UI描述 内容 + 样式
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}