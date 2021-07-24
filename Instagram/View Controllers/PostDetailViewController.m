//
//  PostDetailViewController.m
//  Pods
//
//  Created by Maya Epps on 7/21/21.
//

#import "PostDetailViewController.h"
#import "Post.h"
#import <Parse/PFImageView.h>

@interface PostDetailViewController ()

@property (weak, nonatomic) IBOutlet PFImageView *photoImage;
@property (weak, nonatomic) IBOutlet UILabel *authorLabel;
@property (weak, nonatomic) IBOutlet UILabel *captionLabel;
@property (weak, nonatomic) IBOutlet UILabel *timestampLabel;
@property (weak, nonatomic) IBOutlet UILabel *likesLabel;

@end

@implementation PostDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.photoImage.file = self.post.image;
    self.authorLabel.text = self.post.author.username;
    self.captionLabel.text = self.post.caption;
    self.timestampLabel.text = self.post.updatedAt.description;
    self.likesLabel.text = [NSString stringWithFormat: @"%@ likes", self.post.likeCount];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
