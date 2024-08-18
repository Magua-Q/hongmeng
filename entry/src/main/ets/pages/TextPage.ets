@Entry
@Component
struct Index {  // 自定义组件 struct 关键词 Index 组件名称
  @State message: string = 'Hello World'

  build() { // UI描述 内容 + 样式
    Column({space: 10}) {
      Text(this.message)
      Text(this.message)
      Text(this.message)
      Text(this.message)
      Text(this.message)
    }.height("100%").width("100%")
    .justifyContent(FlexAlign.SpaceEvenly)
    .alignItems(HorizontalAlign.Center).borderColor(1)
  }
}