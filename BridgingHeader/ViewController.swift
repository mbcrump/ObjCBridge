//
//  ViewController.swift
//  BridgingHeader
//
//  Created by Michael Crump on 7/15/15.
//  Copyright (c) 2015 Michael Crump. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let chart = TKChart(frame: CGRectInset(self.view.bounds, 15, 15))
        chart.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight
        self.view.addSubview(chart)
        
        var items = [TKChartDataPoint]()
        for i in 0..<8 {
            items.append(TKChartDataPoint(x:Int(arc4random()%100), y:(i+1)))
        }
        
        let series = TKChartBarSeries(items:items)
        series.style.paletteMode = TKChartSeriesStylePaletteMode.UseItemIndex
        series.selectionMode = TKChartSeriesSelectionMode.DataPoint
        
        chart.allowAnimations = true
        
        chart.addSeries(series)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}



