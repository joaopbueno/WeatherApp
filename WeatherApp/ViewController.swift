//
//  ViewController.swift
//  WeatherApp
//
//  Created by João Bueno on 06/09/24.
//

import UIKit

class ViewController: UIViewController {

    private lazy var customView : UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

//    override func viewWillAppear(_ animated: Bool) {
//        <#code#>
//    }
//    
//    override func viewWillDisappear(_ animated: Bool) {
//        <#code#>
//    }
//    
//    override func viewDidDisappear(_ animated: Bool) {
//        <#code#>
//    }
//    
    private func setupView() {
        view.backgroundColor = .red
        
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy() {
        
        view.addSubview(customView)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            customView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 50),
            customView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            customView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100)
        ])
    }
}

