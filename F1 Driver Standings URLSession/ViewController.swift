//
//  ViewController.swift
//  F1 Driver Standings URLSession
//
//  Created by Angus Muller on 30/05/2022.
//

import UIKit

class ViewController: UIViewController {
    
    let viewModel = DriverStandingsViewModel(f1Repository: F1Repository(f1Service: F1APIService()))

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        viewModel.refresh { (error) in
            DispatchQueue.main.async {
                if let error = error {
                    print(error)
                }
                print(self.viewModel.allDriverStandings())
            }
            
        }
    }


}

