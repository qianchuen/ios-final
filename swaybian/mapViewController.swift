//
//  mapViewController.swift
//  swaybian
//
//  Created by Eugene Liu on 6/27/18.
//  Copyright © 2018 csie. All rights reserved.
//

import UIKit
import MapKit
class mapViewController: UIViewController
{

    @IBOutlet weak var mapView1: MKMapView!
    var plants: Plant = Plant()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        /*let annotation = MKPointAnnotation()
        annotation.title = plants.name1
        annotation.subtitle = plants.name2
        //annotation.coordinate = plants.location.coordinate
        annotation.coordinate = CLLocationCoordinate2D(latitude: plants.lat, longitude: plants.long)
        self.mapView.showAnnotations([annotation], animated: true)
        self.mapView.selectAnnotation(annotation, animated: true)*/
        //let geoCoder = CLGeocoder()

        //print(plants.location)
        
            let geoCoder = CLGeocoder()
            
            //print(location)
            geoCoder.geocodeAddressString(plants.location, completionHandler: {placemarks, error in
                if let error = error
                {
                    print("Geocoder error: \(error.localizedDescription)")
                    return
                }
                if let placemarks = placemarks
                {
                    let placemark = placemarks[0]
                    
                    let annotation = MKPointAnnotation()
                    if let location = placemark.location
                    {
                        annotation.coordinate = location.coordinate
                        self.mapView1.addAnnotation(annotation)
                        
                        //let region = MKCoordinateRegionMakeWithDistance(annotation.coordinate, 250, 250)
                        //self.mapView.setRegion(region, animated: false)
                    }
                }
            })
            
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
