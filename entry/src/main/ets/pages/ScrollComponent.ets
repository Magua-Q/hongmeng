@Entry
@Component

struct ScrollComponent {
  scroll: Scroller = new Scroller();
  build() {
    Stack({
      alignContent: Alignment.BottomEnd
    }) {
      Scroll(this.scroll) {
        Column() {
            Row() {
              Text("111").height(200).width('100%').backgroundColor(Color.Red)
            }
            Row() {
              Text("2").height(200).width('100%').backgroundColor(Color.Red)
            }
            Row() {
              Text("3").height(200).width('100%').backgroundColor(Color.Red)
            }
            Row() {
              Text("4").height(200).width('100%').backgroundColor(Color.Red)
            }
            Row() {
              Text("5").height(200).width('100%').backgroundColor(Color.Red)
            }
            Row() {
              Text("6").height(200).width('100%').backgroundColor(Color.Red)
            }
            Row() {
              Text("7").height(200).width('100%').backgroundColor(Color.Red)
            }
            Row() {
              Text("8").height(200).width('100%').backgroundColor(Color.Red)
            }
          }
      }
      Button("返回顶部").margin({
        right: 15,
        bottom: 15
      }).onClick(() => {
        this.scroll.scrollEdge(Edge.Top)
      })
    }.height("100%")
    .width("100%")
  }
}