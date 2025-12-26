//
//  CMLabel.swift
//  InitProject
//
//  Created by QuangAnh on 26/12/25.
//

import UIKit

class CMLabel: UILabel {
    
    var contentInsets: UIEdgeInsets = .zero {
        didSet { invalidateIntrinsicContentSize() }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    override func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by:contentInsets))
    }
    
    override var intrinsicContentSize: CGSize {
        var size = super.intrinsicContentSize
        size.width += contentInsets.left + contentInsets.right
        size.height += contentInsets.top + contentInsets.bottom
        return size
    }
    
    private func setup() {
        
    }
}



