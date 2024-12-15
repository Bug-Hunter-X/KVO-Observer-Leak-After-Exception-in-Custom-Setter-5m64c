In Objective-C, a subtle error can occur when using KVO (Key-Value Observing) with custom setter methods that perform additional actions besides setting the property. If the setter method throws an exception, the KVO observation might not be properly unregistered, leading to crashes or unexpected behavior later.  This is particularly insidious because the immediate exception might be masked or handled elsewhere, leaving the unregistered observer as a time bomb.