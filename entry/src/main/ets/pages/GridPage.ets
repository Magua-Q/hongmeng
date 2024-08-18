@Entry
@Component
struct GridPage {  // 自定义组件 struct 关键词 Index 组件名称
  @State message: string = 'Hello World'

  build() { // UI描述 内容 + 样式
      Column({space: 10}) {
        Grid() {
          GridItem(){
            Text("1").backgroundColor(Color.Orange)
          }
          GridItem(){
            Text("2").backgroundColor(Color.Red)
          }
          GridItem(){
            Text("3").backgroundColor(Color.Blue)
          }

          GridItem(){
            Text("4").backgroundColor(Color.Orange)
          }
          GridItem(){
            Text("5").backgroundColor(Color.Red)
          }
          GridItem(){
            Text("6").backgroundColor(Color.Blue)
          }
          GridItem(){
            Text("7").backgroundColor(Color.Orange)
          }
          GridItem(){
            Text("8").backgroundColor(Color.Orange)
          }
          GridItem(){
            Text("9").backgroundColor(Color.Orange)
          }
        }.width("100%").height(300)
        .columnsTemplate("1fr 1fr 1fr")
        .rowsTemplate("1fr 2fr 1fr")
        .columnsGap(5)
        .rowsGap(5)
      }
      .width('100%')
    .height('100%')
  }
}