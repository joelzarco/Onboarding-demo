//
//  OnboardingViewController.swift
//  OnboardingDemo
//
//  Created by Johel Zarco on 09/05/22.
// Template page for Onboarding

import UIKit

class OnboardingViewController: UIViewController {
    
    let emojiView = UILabel()
    let titleLabel = UILabel()
    
    let emoji: String
    let titleText: String
    let emojiHeigt : CGFloat = 250
    let spacing : CGFloat = 20
    
    init(emoji: String, titleText: String) {
        self.emoji = emoji
        self.titleText = titleText
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented - not using storyboards")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension OnboardingViewController {
    func style() {
        
        view.backgroundColor = .systemBackground
        // bigEmoji
        emojiView.translatesAutoresizingMaskIntoConstraints = false
        emojiView.contentMode = .scaleAspectFit
        emojiView.font = UIFont.systemFont(ofSize: emojiHeigt)
        emojiView.text = emoji
        
        // Label
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.preferredFont(forTextStyle: .body)
        titleLabel.adjustsFontForContentSizeCategory = true
        titleLabel.numberOfLines = 0
        titleLabel.text = titleText
    }
    
    func layout() {

        view.addSubview(emojiView)
        view.addSubview(titleLabel)

        emojiView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        emojiView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: emojiView.bottomAnchor, constant: spacing).isActive = true
        titleLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: view.safeAreaLayoutGuide.leadingAnchor, multiplier: 1).isActive = true
        view.trailingAnchor.constraint(equalToSystemSpacingAfter: titleLabel.trailingAnchor, multiplier: 1).isActive = true
        
    }
}

