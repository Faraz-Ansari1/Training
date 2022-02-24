//
//  ViewController.swift
//  NavigationBar
//
//  Created by daffolapmac-82 on 22/02/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title="Nav-Bar Items"
       // view.backgroundColor = .systemGray
        
        let button = UIButton(type: UIButton.ButtonType.system)
        button.center = view.center
        button.backgroundColor = .systemBlue
        button.setTitle("Go to View 2", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        configureItems()
        
    }
    
    private func configureItems(){
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem(image: UIImage(systemName: "person.circle"),
                            style: .done,
                            target: self,
                            action: nil),
            
            UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: nil)
                                               ]
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .done, target: self, action: nil)
    }

    @objc func didTapButton(){
        let vc = UIViewController()
        vc.title = "View 2"
        vc.view.backgroundColor = .systemGreen
        vc.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign OFF",
                                                               style: .done,
                                                               target: self,
                                                               action: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
}

