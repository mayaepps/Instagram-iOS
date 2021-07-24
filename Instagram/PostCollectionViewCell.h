//
//  PostCollectionViewCell.h
//  
//
//  Created by Maya Epps on 7/21/21.
//

#import <UIKit/UIKit.h>
#import <Parse/PFImageView.h>

NS_ASSUME_NONNULL_BEGIN

@interface PostCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet PFImageView *postImage;

@end

NS_ASSUME_NONNULL_END
