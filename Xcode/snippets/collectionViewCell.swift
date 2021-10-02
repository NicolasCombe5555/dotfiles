final class <#Something#>Cell: UICollectionViewCell {
    // MARK: - Properties

    // MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
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
