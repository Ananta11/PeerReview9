//
//  ViewController.m
//  PeerReview9
//
//  Created by Ananta Shahane on 7/5/17.
//  Copyright © 2017 Ananta Shahane. All rights reserved.
//

#import "ViewController.h"
#import "MapKit/MapKit.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet MKMapView *Mapkit;
@property (weak, nonatomic) IBOutlet UIWebView *Webkit;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *URL = [NSURL URLWithString:@"https://www.apple.com/ipad-pro/"];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    [self.Webkit loadRequest:request];
    
    double absissa = 37.3318;
    double ordinate = -122.0312;
    MKPointAnnotation *Coordiantes = [[MKPointAnnotation alloc] init];
    Coordiantes.coordinate = CLLocationCoordinate2DMake(absissa, ordinate);
    Coordiantes.title = @"Apple Campus, Cupertino";
    
    [self.Mapkit addAnnotation:Coordiantes];
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(Coordiantes.coordinate, 10000, 10000);
    MKCoordinateRegion adjusted = [self.Mapkit regionThatFits:region];
    [self.Mapkit setRegion:adjusted animated:YES];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
