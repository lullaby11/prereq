//
//  ViewController.h
//  Prereq for Overdue Assignment
//
//  Created by Juan Manuel Marín Cobo on 05/10/14.
//  Copyright (c) 2014 Juan Manuel Marín Cobo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextViewDelegate>

@property (strong, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;

- (IBAction)processButtonPressed:(UIButton *)sender;

@end

