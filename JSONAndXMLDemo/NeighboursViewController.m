//
//  NeighboursViewController.m
//  JSONAndXMLDemo
//
//  Created by Gabriel Theodoropoulos on 24/7/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import "NeighboursViewController.h"
#import "AppDelegate.h"

@interface NeighboursViewController ()


@end


@implementation NeighboursViewController



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self prepareMapWithCountryDetailsDictionary:self.countryDetailsDictionary];   

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)prepareMapWithCountryDetailsDictionary:(NSDictionary *)dictionary {
    
    double north = [[dictionary objectForKey:@"north"] doubleValue];
    double east = [[dictionary objectForKey:@"east"] doubleValue];
    double south = [[dictionary objectForKey:@"south"] doubleValue];;
    double west = [[dictionary objectForKey:@"west"] doubleValue];;
    
    
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    CLLocationCoordinate2D centerLocation;
    
    centerLocation = CLLocationCoordinate2DMake((north + south)/2, (east + west)/2);
    span = MKCoordinateSpanMake(north - south, east - west);
    region = MKCoordinateRegionMake(centerLocation, span);
    
    self.mapView.region = region;
    
}


- (IBAction)changeMapType:(id)sender {
    if (self.mapView.mapType == MKMapTypeStandard) {
        self.mapView.mapType = MKMapTypeSatellite;
    }
    else {
        self.mapView.mapType = MKMapTypeStandard;
    }
}



@end
