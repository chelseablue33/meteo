//
//  CityPageViewController.swift
//  meteo
//
//  Created by Fahim Farook on 27/4/2017.
//  Copyright © 2017 yvesbinda. All rights reserved.
//

import UIKit

class CityPageViewController:UIPageViewController, UIPageViewControllerDataSource {
	private lazy var pages: [CityViewController] = {
		return [self.newCityVC(city:"Brooklyn", sub:"NY"), self.newCityVC(city:"Paris", sub:"FRA"), self.newCityVC(city:"San Francisco", sub:"CA"), self.newCityVC(city:"Denver", sub:"CO"), self.newCityVC(city:"Rome", sub:"ITA")]
	}()
	
    override func viewDidLoad() {
        super.viewDidLoad()
		dataSource = self
		if let vc = pages.first {
			setViewControllers([vc], direction:.forward, animated: true, completion: nil)
		}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

	// MARK:- Private Methods
	private func newCityVC(city:String, sub:String) -> CityViewController {
		let vc = UIStoryboard(name:"Main", bundle:nil).instantiateViewController(withIdentifier:"CityView") as! CityViewController
		vc.title = city
		vc.city = city
		vc.sub = sub
		return vc
	}
	
	// MARK:- UIPageViewController Delegates
	func pageViewController(_ pageViewController:UIPageViewController, viewControllerBefore viewController:UIViewController) -> UIViewController? {
		guard let ndx = pages.index(of:viewController as! CityViewController) else {
			return nil
		}
		let prevNdx = ndx - 1
		guard prevNdx >= 0 else {
			return nil
		}
		guard pages.count > prevNdx else {
			return nil
		}
		let vc = pages[prevNdx]
		vc.index = prevNdx
		return vc
	}
	
	func pageViewController(_ pageViewController:UIPageViewController, viewControllerAfter viewController:UIViewController) -> UIViewController? {
		guard let ndx = pages.index(of:viewController as! CityViewController) else {
			return nil
		}
		let nextNdx = ndx + 1
		let count = pages.count
		guard count != nextNdx else {
			return nil
		}
		guard count > nextNdx else {
			return nil
		}
		let vc = pages[nextNdx]
		vc.index = nextNdx
		return vc
	}
}
