@Entry
@Component

struct ImageComponent {
  build() {
    Column({
      space: 10
    }) {
      // 1. 图片类型为url地址
      /**
       *  注意事项
       *  在真机是需要配置网络访问权限
       *  module.json5
       */
      Image("https://pic.rmb.bdstatic.com/bjh/240816/dump/112023433a77f2b31c50ff84ce2dcad0.gif").height(100);
    //  2. 资源文件 -- base/media
      Image($r("app.media.icon")).width(100);
    //  3. 资源文件 -- resouces/rawfile
      Image($rawfile("1.png")).width(150);
    //   4. 自定义目录
      Image("/assets/images/icon.png").width(200)
    }
      .height("100%")
      .width("100%")
  }
}