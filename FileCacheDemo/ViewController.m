
#import "ViewController.h"
#import "cacheManeger.h"

static NSString *const kETagImageURL = @"https://sfault-avatar.b0.upaiyun.com/427/427/427427170-1030000000459007_big64";


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *iconView;

@end

@implementation ViewController

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    
    [[cacheManeger getInstance]getData:^(NSData *data) {
        self.iconView.image = [UIImage imageWithData:data];
    } imageUrl:[NSURL URLWithString:kETagImageURL]];
}



@end
