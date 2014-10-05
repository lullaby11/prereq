//
//  ViewController.m
//  Prereq for Overdue Assignment
//
//  Created by Juan Manuel Marín Cobo on 05/10/14.
//  Copyright (c) 2014 Juan Manuel Marín Cobo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%@",self.textView.text);
    
    self.textView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if([text isEqualToString:@"\n"])
    {
        [self.textView resignFirstResponder];
        return NO;
    } else {
        return YES;
    }
}

- (IBAction)processButtonPressed:(UIButton *)sender
{
    NSDate *date = self.datePicker.date;
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    
    NSString *stringFromDate = [formatter stringFromDate:date];
    NSLog(@"%@",stringFromDate);
    NSLog(@"%@",[NSDate date]);
    int timeInterval = [date timeIntervalSince1970];
    NSLog(@"%i",timeInterval);
}
@end
