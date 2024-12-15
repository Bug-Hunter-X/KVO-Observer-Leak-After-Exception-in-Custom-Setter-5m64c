The solution involves using a @try-@catch block within the custom setter to ensure that the observer is removed even if an exception occurs:

```objectivec
@interface MyClass : NSObject
@property (nonatomic, strong) NSString *myString;
@end

@implementation MyClass

- (void)setMyString:(NSString *)newString {
    @try {
        // Perform additional actions here before setting the property
        if ([newString isEqualToString:@