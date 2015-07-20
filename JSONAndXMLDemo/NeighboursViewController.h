//
//  NeighboursViewController.h
//  JSONAndXMLDemo
//
//  Created by Gabriel Theodoropoulos on 24/7/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>


@interface NeighboursViewController : UIViewController <MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

- (IBAction)changeMapType:(id)sender;
- (IBAction)zoomIn:(id)sender;

@property (nonatomic, strong) NSString *geonameID;

@end
