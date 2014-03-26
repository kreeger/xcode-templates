//
//  ___PROJECTNAME___ // ___FILEBASENAME___.m
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()

/**
 Common initialization code.
 */
- (void)setup;

@end

@implementation ___FILEBASENAMEASIDENTIFIER___

#pragma mark - Lifecycle

- (instancetype)init {
    self = [super init];
    if (!self) return nil;
    [self setup];
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (!self) return nil;
    [self setup];
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (!self) return nil;
    [self setup];
    return self;
}

- (void)setup {

}

#pragma mark - Properties

#pragma mark - Private properties

#pragma mark - Methods

#pragma mark - Private methods

@end
