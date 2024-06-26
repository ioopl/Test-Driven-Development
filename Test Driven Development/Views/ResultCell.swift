import UIKit

class ResultCell: UITableViewCell {
  @UsesAutoLayout
  private(set) var resultLabel: UILabel = {
    let resultLabel = UILabel()
    resultLabel.font = UIFont.boldSystemFont(ofSize: 17.0)
    resultLabel.numberOfLines = 0
    return resultLabel
  }()

  required init?(coder aDecoder: NSCoder) {
    NSCoder.fatalErrorNotImplemented()
  }

  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    backgroundColor = UIColor.systemBackground
    selectionStyle = .none

    addSubview(resultLabel)

    resultLabel.topAnchor.constraint(equalTo: topAnchor, constant: Layout.standard).activate()
    resultLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Layout.standard).activate()
    resultLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: Layout.standard * -1.0).activate()
  }

  func configure(result: String) {
    resultLabel.text = result
  }
}
