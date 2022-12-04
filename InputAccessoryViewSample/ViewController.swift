//
//  ViewController.swift
//  InputAccessoryViewSample
//
//  Created by ryota.hayashi on 2022/12/04.
//

import UIKit

class MessengerInputAccessoryView: UIView, UITextViewDelegate {
    @IBOutlet var textView: UITextView! {
        didSet {
            textView.delegate = self
        }
    }

    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIView.noIntrinsicMetric, height: .nan)
    }

    func textViewDidChange(_ textView: UITextView) {
        reloadInputViews()
    }
}

class ViewController: UITableViewController {

    @IBOutlet var inputAccessoryTextView: MessengerInputAccessoryView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.keyboardDismissMode = .interactive
        becomeFirstResponder()
    }

    override var inputAccessoryView: UIView? {
        return inputAccessoryTextView
    }

    override var canBecomeFirstResponder: Bool { true }
}

