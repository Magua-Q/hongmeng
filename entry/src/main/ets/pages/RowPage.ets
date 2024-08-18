@Entry
@Component
struct RowPage {
  build() {
    Row ({ space: 10}) {
      Column(){
        Text("Left")
      }.height(60).width(40).backgroundColor(Color.Blue)
      Column(){
        Text("Center")
      }.height(60).width(50).backgroundColor(Color.Blue)
      Column(){
        Text("Right")
      }.height(60).width(40).backgroundColor(Color.Blue)
    }.height("100%")
    .width("100%").justifyContent(FlexAlign.Center).alignItems(VerticalAlign.Bottom)
  }
}