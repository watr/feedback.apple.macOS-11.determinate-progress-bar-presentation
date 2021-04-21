# feedback.apple.macOS-11.determinate-progress-bar-presentation

[Video](./screenshots/determinate-progress-indicator.mov)

## Issue 1: Progress bar can not display exactly min value when 'uses threaded animation' property value is true

![ Min value with threaded animation: :bug: ](./screenshots/min-value_threaded.png)

![ Min value with NOT threaded animation: Expected ](./screenshots/min-value_not-threaded.png)

## Issue 2: Progress bar become hidden when 'uses threaded animation' property value is false and window is NOT 'key window'

![ Threaded and key window: Expected ](./screenshots/threaded_key-window.png)

![ Threaded and NOT key window: Expected ](./screenshots/threaded_not-key-window.png)

![ NOT threaded and key window: Expected ](./screenshots/not-threaded_key-window.png)

![ NOT threaded and NOT key window: :bug: ](./screenshots/not-threaded_not-key-window.png)
