//
//  CityViewController.swift
//  meteo
//
//  Created by Fahim Farook on 27/4/2017.
//  Copyright © 2017 yvesbinda. All rights reserved.
//

import UIKit

class CityViewController: UIViewController {
	var city = ""
	var sub = ""
	
	var index = -1 {
		didSet {
			if pageControl != nil {
				pageControl.currentPage = index
			}
		}
	}
	
	@IBOutlet private weak var pageControl:UIPageControl!
	@IBOutlet private weak var lblCity:UILabel!
	@IBOutlet private weak var lblSub:UILabel!
    @IBOutlet private weak var lblMainTemp:UILabel!
    @IBOutlet private weak var lblMainDes:UILabel!
	@IBOutlet private weak var vwSun:UIView!
	@IBOutlet private weak var vwOverlay:UIView!
	
	// Overlaye
	
	private let fmt = DateFormatter()
	@IBOutlet private weak var lblTemp:UILabel!
	@IBOutlet private weak var lblActivity:UILabel!
	@IBOutlet private weak var btn01:UIButton!
	@IBOutlet private weak var btn02:UIButton!
	@IBOutlet private weak var btn03:UIButton!
	@IBOutlet private weak var btn04:UIButton!
	@IBOutlet private weak var btn05:UIButton!
	@IBOutlet private weak var btn06:UIButton!
	@IBOutlet private weak var btn07:UIButton!
	@IBOutlet private weak var btn08:UIButton!
	@IBOutlet private weak var btn09:UIButton!
	@IBOutlet private weak var btn10:UIButton!
	@IBOutlet private weak var btn11:UIButton!
	@IBOutlet private weak var btn12:UIButton!
	private let enabledColour = UIColor.white
	private let disabledColour = UIColor.white.withAlphaComponent(0.5)
	private var prevButton:UIButton? = nil
	
    override func viewDidLoad() {
        super.viewDidLoad()
		// Info
		fmt.dateFormat = "EEEE MMMM d"
		// Date
		var str = fmt.string(from:Date())
		// City, sub
		str += "\n" + city + ", " + sub
		lblCity.text = str
        // Get weather
        let weather = WeatherGetter()
        weather.getWeather(city:city) {info in
            // Run this code
            self.lblMainTemp.text = "\(info.tempFahrenheit)°"
            self.lblMainDes.text = info.weatherMain
        }
    }

	override func viewWillAppear(_ animated:Bool) {
		super.viewWillAppear(animated)
		// Set up overlay
		var r = view.frame
		r.origin.y -= r.size.height
		vwOverlay.frame = r
		view.addSubview(vwOverlay)
	}
	
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
	override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
		if let tch = event?.touches(for:vwSun), tch.count > 0 {
			showOverlay()
		} else if let tch = event?.touches(for:vwOverlay), tch.count > 0 {
			hideOverlay()
		}
	}
	
	// MARK:- Actions
	@IBAction func hourSelected(btn:UIButton) {
		// Disable previous button
		if let pbtn = prevButton {
			pbtn.setTitleColor(disabledColour, for: UIControlState.normal)
		}
		btn.setTitleColor(enabledColour, for:UIControlState.normal)
		prevButton = btn
	}
	
	// MARK:- Private Methods
	private func showOverlay() {
		var r = vwOverlay.frame
		r.origin.y += r.size.height
		UIView.animate(withDuration:0.5) { 
			self.vwOverlay.frame = r
		}
	}
	
	private func hideOverlay() {
		var r = vwOverlay.frame
		r.origin.y -= r.size.height
		UIView.animate(withDuration:0.5) {
			self.vwOverlay.frame = r
		}
	}
}
