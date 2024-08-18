import promptAction from '@ohos.promptAction'
@Entry

@Component

struct Prompt {
  build() {
    Column() {
      // 1. Api提示弹簧
      Button("提示弹框").onClick(() => {
        promptAction.showToast({
          message: 'SUCCESS',
          duration: 4000,
          bottom: 200
        })
      })
      // 对话框
      Button("对话框").onClick(() => {
        promptAction.showDialog({
          title: '确认提交？',
          message: '提交后不可更改',
          buttons: [
            {
              text:'确认',
              color: '#OOF'
            },
            {
              text:'取消',
              color: '#FOO'
            }
          ]
        }).then((data) => {
          console.log(`${data.index}`)
        }).catch(() => {
          console.log('失败')
        })
      })
    }.width('100%').height("100%")
  }
}