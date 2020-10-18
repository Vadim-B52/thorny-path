#import <Foundation/Foundation.h>

@class FeatureARequestDTO;

NS_ASSUME_NONNULL_BEGIN

@interface FeatureAResponseDTO : NSObject

@property (nonatomic, strong, nullable) FeatureARequestDTO *request;
@property (nonatomic, copy, nullable) NSArray *pages;

@end

NS_ASSUME_NONNULL_END
