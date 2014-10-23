//
//  JKViewController.m
//  JKSpriteKitTest
//
//  Created by Guest User on 10/22/14.
//  Copyright (c) 2014 JoshKutsko. All rights reserved.
//

#import "JKViewController.h"
#import "JKMyScene.h"
#import "JKSceneView.h"


@implementation JKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Configure the view.
    SKView * skView = (SKView *)[[JKSceneView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height/2)];
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
    
    // Create and configure the scene.
    SKScene * scene = [[JKMyScene alloc] initWithSize:skView.bounds.size];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    // Present the scene.
    [skView presentScene:scene];
    [self.view addSubview:skView];
}

- (BOOL)shouldAutorotate
{
    return YES;
}


-(IBAction)loadUpGameScene:(id)sender
{
    // Configure the view.
    SKView * skView = (SKView *)self.view;
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;

    // Create and configure the scene.
    SKScene * scene = [JKMyScene sceneWithSize:skView.bounds.size];
    scene.scaleMode = SKSceneScaleModeAspectFill;

    // Present the scene.
    [skView presentScene:scene];

}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

@end
