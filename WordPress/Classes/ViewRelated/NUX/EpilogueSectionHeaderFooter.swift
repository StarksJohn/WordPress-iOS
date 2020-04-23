import UIKit

class EpilogueSectionHeaderFooter: UITableViewHeaderFooterView {
    static let identifier = "EpilogueSectionHeaderFooter"

    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet weak var trailingConstraint: NSLayoutConstraint!
    @IBOutlet var titleLabel: UILabel?

    override func awakeFromNib() {
        super.awakeFromNib()
        titleLabel?.textColor = .textSubtle
    }
}
