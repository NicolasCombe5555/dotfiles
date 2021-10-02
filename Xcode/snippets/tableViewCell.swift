final class <#Something#>Cell: UITableViewCell {
    // MARK: - Properties

    // MARK: - Lifecycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configureView() {
        setConstraints()
    }

    private func setConstraints() {
    }

    // MARK: - Model
}
