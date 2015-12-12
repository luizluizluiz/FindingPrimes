//
//  ViewController.swift
//  Finding Primes
//
//  Created by Autumn on 12/2/15.
//  Copyright © 2015 luizsantos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number: UITextField!
    
    @IBOutlet weak var results: UILabel!
    
    var isPrime = true
    
    @IBAction func isItPrime(sender: AnyObject) {
        
        isPrime = true
        if let numb = Int(number.text!) {
        
            if numb == 1 || numb == 2{
                isPrime = false
            }
        
            if numb != 2 && numb != 1 {
        
                for var i = 2; i < Int(number.text!); i++ {
                    if numb % i == 0{
                        isPrime = false
                    }
                }
            }
        
            if isPrime == true{
                results.text = ("\(numb) is a Prime.")
            }else{
                results.text = ("\(numb) is not a Prime.")
            }
        }else {
        
            results.text = "Please put a whole number only"
        
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

