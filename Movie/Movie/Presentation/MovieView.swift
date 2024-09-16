import UIKit

class NewView: UIView {
  
  // MARK: - UIElements
  private let mainStackView = UIStackView()
  private let labelsStack = UIStackView()
  
  
  private lazy var questionTitleLabel: UILabel = {
    let element = UILabel()
    element.text = "Вопрос:"
    element.font = .ysBigMedium
    element.textColor = .ypWhite
    element.numberOfLines = 0
    element.translatesAutoresizingMaskIntoConstraints = false
    return element
  }()
  
  private lazy var counterLabel: UILabel = {
    let element = UILabel()
    element.text = "1/10"
    element.textColor = .ypWhite
    element.setContentHuggingPriority(UILayoutPriority(252), for: .horizontal)
    element.setContentHuggingPriority(.defaultHigh, for: .horizontal)
    element.translatesAutoresizingMaskIntoConstraints = false
    return element
  }()
  
  private lazy var imageView: UIImageView = {
    let element = UIImageView()
    element.contentMode = .scaleAspectFill
    element.backgroundColor = .ypWhite
    element.layer.borderWidth = 8
    element.layer.cornerRadius = 20
    element.layer.masksToBounds = true
    element.translatesAutoresizingMaskIntoConstraints = false
    return element
  }()
  
  private lazy var viewForQuestion: UIView = {
    let element = UIView()
    element.translatesAutoresizingMaskIntoConstraints = false
    return element
  }()
  
  private lazy var questionLabel: UILabel = {
    let element = UILabel()
    element.text = "Рейтинг этого фильма меньше чем 5?"
    element.font = .ysBold
    element.textColor = .ypWhite
    element.numberOfLines = 2
    element.textAlignment = .center
    element.translatesAutoresizingMaskIntoConstraints = false
    return element
  }()
  
  private lazy var buttonsStack: UIStackView = {
    let element = UIStackView()
    element.axis = .horizontal
    element.alignment = .fill
    element.distribution = .fillEqually
    element.spacing = 20
    element.translatesAutoresizingMaskIntoConstraints = false
    return element
  }()
  
  private lazy var noButton: UIButton = {
    let element = UIButton(type: .system)
    element.setTitle("Нет", for: .normal)
    element.setTitleColor(.ypBlack, for: .normal)
    element.titleLabel?.font = .ysBigMedium
    element.backgroundColor = .ypWhite
    element.layer.cornerRadius = 15
    element.addTarget(self, action: #selector(noButtonClicked), for: .touchUpInside)
    element.translatesAutoresizingMaskIntoConstraints = false
    return element
  }()
  
  private lazy var yesButton: UIButton = {
    let element = UIButton(type: .system)
    element.setTitle("Да", for: .normal)
    element.setTitleColor(.ypBlack, for: .normal)
    element.titleLabel?.font = .ysBigMedium
    element.backgroundColor = .ypWhite
    element.layer.cornerRadius = 15
    element.addTarget(self, action: #selector(yesButtonClicked), for: .touchUpInside)
    element.translatesAutoresizingMaskIntoConstraints = false
    return element
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    setupUI()
    configureSubviews()
    setupConstraints()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

//  MARK: - Set Views and Constraints
private extension NewView {
  func setupUI() {
    // Main Stack View
    mainStackView.translatesAutoresizingMaskIntoConstraints = false
    mainStackView.axis = .vertical
    mainStackView.distribution = .fill
    mainStackView.alignment = .fill
    mainStackView.spacing = 20
    mainStackView.translatesAutoresizingMaskIntoConstraints = false
    
    // Label Stack View
    labelsStack.translatesAutoresizingMaskIntoConstraints = false
    labelsStack.distribution = .fill
    labelsStack.alignment = .fill
  }
  
  func configureSubviews() {
    
  }
  
  func setupConstraints() {
    NSLayoutConstraint.activate([
      
    ])
  }
}
