
@Entry
@Component
struct AlertDialogExample {
  build() {
    Column({ space: 5 }) {
      Button('one button dialog')
        .onClick(() => {
          AlertDialog.show(
            {
              title: 'title',
              message: 'text',
              autoCancel: true,
              alignment: DialogAlignment.Center,
              gridCount: 4,
              offset: { dx: 0, dy: -20 },
              cancel: () => {
                console.info('Closed callbacks')
              }
            })
        })
      Button("日期").onClick(() => {
        DatePickerDialog.show({
          start: new Date('1990-1-1'),
          end: new Date('2050-1-1'),
          selected: new Date('2024-8-18'),
          onCancel: () => {
            console.log('cancel')
          },
          onChange: (value: DatePickerResult) => {
            console.log(`${value.year}-${value.month}-${value.day}`)
          },
          onAccept: (value: DatePickerResult) => {
          }
        })
      })
    }.width('100%').margin({ top: 5 }).backgroundColor(0x317aff)
  }
}