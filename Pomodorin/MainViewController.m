//
//  MainViewController.m
//  Pomodorin
//
//  Created by Matias Mazzei on 3/24/15.
//  Copyright (c) 2015 mmazzei. All rights reserved.
//

#import "MainViewController.h"
#import "AppDelegate.h"
#import "TodayStatus.h"
#import "Record.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}

- (IBAction)startPomodoring:(id)sender {
    NSLog(@"Start pomodoring button pressed");
    [self.model startAPomodoro];

    // I'm pretty sure the app delegate is the one I implemented :)
    id delegate = [NSApp delegate];
    [delegate switchToPomodoringView];
}

- (IBAction)seeStatistics:(id)sender {
    NSLog(@"See statistics button pressed");
    [self.model.record print];
}

@end