//
//  StartViewController.swift
//  QVRWeekView
//
//  Created by Reinert Lemmens on 5/19/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    var calendarVC: CalendarViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        if let calendarViewController = self.tabBarController?.viewControllers?[1] as? CalendarViewController {
            calendarVC = calendarViewController
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func customizeButtonPress(_ sender: Any) {
        if let weekView = calendarVC.weekView {
            weekView.dayViewHourIndicatorColor = UIColor.blue
            weekView.dayViewHourIndicatorThickness = 9
            weekView.dayViewCellHeight = 500
            weekView.dayViewMainSeparatorColor = UIColor.red
            weekView.dayViewMainSeparatorThickness = 4
            weekView.dayViewDashedSeparatorColor = UIColor.orange
            weekView.dayViewDashedSeparatorPattern = [9, 3]
            weekView.dayViewDashedSeparatorThickness = 2
            weekView.weekendDayViewColor = UIColor.darkGray
            weekView.defaultDayViewColor = UIColor.gray

            weekView.visibleDaysInPortraitMode = 3
            weekView.visibleDaysInLandscapeMode = 9
            weekView.landscapeDayViewSideSpacing = 5
            weekView.landscapeDayViewVerticalSpacing = 40
            weekView.portraitDayViewSideSpacing = 1
            weekView.portraitDayViewVerticalSpacing = 60

            weekView.hourLabelFont = UIFont.italicSystemFont(ofSize: 5)
            weekView.hourLabelTextColor = UIColor.blue

            weekView.eventLabelMinimumScale = 0.05
            weekView.eventLabelTextColor = UIColor.green
            weekView.eventLabelFont = UIFont.italicSystemFont(ofSize: 25)

            weekView.dayLabelTextColor = UIColor.white
            weekView.dayLabelFont = UIFont.italicSystemFont(ofSize: 20)
            weekView.dayLabelShowYear = false
            
            weekView.topBarColor = UIColor.green
            weekView.defaultTopBarHeight = 70
            weekView.sideBarWidth = 10
            weekView.mainBackgroundColor = UIColor.blue

            weekView.velocityOffsetMultiplier = 0.01

            weekView.allDayEventHeight = 30
            weekView.allDayEventVerticalSpacing = 10
        }
    }

    @IBAction func testButtonPress(_ sender: Any) {
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }

}
