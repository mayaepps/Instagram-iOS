//
//  PostTableViewCell.m
//  Instagram
//
//  Created by Maya Epps on 7/12/21.
//

#import "PostTableViewCell.h"
#import "Post.h"
#import <Parse/Parse.h>
#import <Parse/PFImageView.h>

@implementation PostTableViewCell



- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (IBAction)didTapLike:(id)sender {
    if (self.likeButton.selected) {
        self.likeButton.selected = NO;
        [self.likeButton setImage: [UIImage systemImageNamed:@"heart"] forState:UIControlStateNormal];
        int likes = self.post.likeCount.intValue;
        self.post.likeCount = [NSNumber numberWithInt:likes - 1];
        self.likesLabel.text = [NSString stringWithFormat: @"%@ likes", self.post.likeCount];
        [self.post saveInBackground];
        
    } else {
        self.likeButton.selected = YES;
        [self.likeButton setImage: [UIImage systemImageNamed:@"heart.fill"] forState:UIControlStateNormal];
        int likes = self.post.likeCount.intValue;
        self.post.likeCount = [NSNumber numberWithInt:likes + 1];
        self.likesLabel.text = [NSString stringWithFormat: @"%@ likes", self.post.likeCount];
        [self.post saveInBackground];
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

// Sets the properties of this cell using the post
- (void)setPost:(Post *)post {
    self.photoImageView.file = post.image;
    NSLog(@"Caption: %@",  post.caption);
    [self.photoImageView loadInBackground];
    
    self.authorLabel.text = post.author.username;
    self.likesLabel.text = [NSString stringWithFormat: @"%@ likes", post.likeCount];
    self.captionLabel.text = post.caption;
    self.authorTopLabel.text = post.author.username;
    _post = post; // must use _ insteam of self. because it overloads otherwise
}

@end
