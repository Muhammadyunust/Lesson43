//
//  ViewController.swift
//  Lesson43
//
//  Created by Mukhammadyunus on 2/6/20.
//  Copyright © 2020 Mukhammadyunus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var colors: [UIColor] = [#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1), #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1), #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1), #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1), #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1), #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "FirstTableCell", bundle: nil), forCellReuseIdentifier: "FirstTableCell")
        tableView.delegate = self
        tableView.dataSource = self
    }


}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 25
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FirstTableCell", for: indexPath) as! FirstTableCell
        colors.shuffle()
        colors.shuffle()
        colors.shuffle()
        cell.vView.backgroundColor = colors[0]
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
//        cell.transform = CGAffineTransform(scaleX: 0.7, y: 0.7)
//        cell.alpha = 0.6
        
        UIView.transition(with: (cell as! FirstTableCell).vView, duration: 0.4, options: .transitionFlipFromRight, animations: nil, completion: nil)
        
        
//        UIView.animate(withDuration: 0.5, delay: 0.1, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
//            cell.transform = .identity
//            cell.alpha = 1
//
//        }, completion: nil)
        
        
    }
    
    
}
