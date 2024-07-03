//
//  RootPageViewController.swift
//  PageViewControllerDemo
//
//  Created by Vishal Jagtap on 02/07/24.
//

import UIKit

class RootPageViewController: UIPageViewController, UIPageViewControllerDataSource {

    lazy var viewControllerList : [UIViewController] = {
        let firstVC = self.storyboard?.instantiateViewController(identifier: "FirstVC") as! FirstViewController
        let secondVC = self.storyboard?.instantiateViewController(identifier: "SecondVC") as! SecondViewController
        let thirdVC = self.storyboard?.instantiateViewController(identifier: "ThirdVC") as! ThirdViewController
        return [firstVC,secondVC,thirdVC]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        
        if let firstViewController = viewControllerList.first{
            self.setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let currentIndex = viewControllerList.index(of: viewController)
        let previousIndex = currentIndex! - 1
        if ((previousIndex>=0) && (viewControllerList.count > previousIndex)){
            return viewControllerList[previousIndex]
        } else {
            return viewControllerList[currentIndex!]
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let currentindex = viewControllerList.index(of: viewController)
        let nextIndex = currentindex! + 1
        if (viewControllerList.count > nextIndex){
            return viewControllerList[nextIndex]
        } else {
            return viewControllerList[currentindex!]
        }
    }
}
