//
//  ViewController.m
//  QuickDemo
//
//  Created by iOS Camp on 8/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize greenBox;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.greenBox.frame = CGRectMake(200, 200, 50, 200);
    
    [UIView animateWithDuration:2.0 
                          delay:1.0 
                        options:UIViewAnimationCurveEaseInOut 
                     animations:^{
                         self.greenBox.frame = CGRectMake(200, 200, 50, 200);
                     } 
                     completion:^(BOOL finished) {
                         NSLog(@"Animation Finished");
                     }
     ];
    
    
//    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
//    
//    NSArray *colors = [NSArray arrayWithObjects:@"Red",@"Green",@"Blue", nil];
//    
//    [dictionary setObject:colors forKey:@"Colors"];
//    
//    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
//    
//    NSString *basePath = [paths lastObject];
//    
//    NSString *fullPath = [basePath stringByAppendingPathComponent:@"saved.plist"];
//    
//    [dictionary writeToFile:fullPath atomically:YES];
//    
//    NSDictionary *newDictionary = [NSDictionary dictionaryWithContentsOfFile:fullPath];
//    NSLog(@"newDictionary %@", newDictionary);
    
}

- (void)viewDidUnload
{
    [self setGreenBox:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
