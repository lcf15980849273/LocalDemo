//
//  CLChatEmojiView.swift
//  Potato
//
//  Created by AUG on 2019/10/25.
//

import UIKit
import SnapKit

class CLChatEmojiView: UIView {
    ///itemๅคงๅฐ
    var itemSize: CGSize = CGSize(width: 45, height: 45)
    ///emojiๆฐ็ป
    var emojiArray: [String] = [
        "๐","๐","๐","๐","๐","๐","๐","๐คฃ","โบ๏ธ","๐","๐","๐","๐","๐","๐","๐","๐","๐","๐","๐","๐",
        "๐","๐","๐","๐ค","๐","๐","๐","๐","๐","๐","๐","๐","โน๏ธ","๐ฃ","๐","๐ซ","๐ฉ","๐ข","๐ญ","๐ค","๐ ",
        "๐ก","๐ณ","๐ฑ","๐จ","๐ฐ","๐ฅ","๐","๐ค","๐ค","๐คฅ","๐ถ","๐","๐","๐ฌ","๐","๐ฏ","๐ฆ","๐ง","๐ฎ","๐ฒ","๐ด",
        "๐คค","๐ช","๐ต","๐ค","๐คข","๐คง","๐ท","๐ค","๐ค","๐ค","๐ค ","๐","๐ฟ","๐น","๐บ","๐คก","๐ฉ","๐ป","๐","โ ๏ธ","๐ฝ",
        "๐พ","๐ค","๐","๐บ","๐ธ","๐น","๐ป","๐ผ","๐ฝ","๐","๐ฟ","๐พ","๐","๐","๐","๐ค","๐","๐","๐","โ๏ธ","๐ค",
        "๐ค","๐ค","โ๏ธ","๐ค","๐","๐","๐","๐","๐","โ๏ธ","โ๏ธ","๐ค","๐","๐","๐","๐ค","๐ช","๐","โ๏ธ","๐","๐",
        "๐","๐","๐","๐","๐","๐","๐ฃ","๐","๐","๐ฃ","๐ค","๐ฅ","๐ถ","๐ง","๐ฆ","๐ฉ","๐จ","๐ฑโโ๏ธ","๐ฑโโ","๐ต","๐ด",
        "๐ฒ","๐ณโโ๏ธ","๐ณโโ","๐ฎโโ๏ธ","๐ฎโโ","๐ทโโ๏ธ","๐ทโโ","๐โโ๏ธ","๐โโ","๐ต๏ธโโ๏ธ","๐ฉโโ๏ธ","๐จโโ๏ธ","๐ฉโ๐พ","๐จโ๐พ","๐ฉโ๐ณ","๐จโ๐ณ","๐ฉโ๐","๐จโ๐","๐ฉโ๐ค","๐จโ๐ค","๐ฉโ๐ซ",
        "๐จโ๐ซ","๐ฉโ๐ญ","๐จโ๐ญ","๐ฉโ๐ป","๐จโ๐ป","๐ฉโ๐ผ","๐จโ๐ผ","๐ฉโ๐ง","๐จโ๐ง","๐ฉโ๐ฌ","๐จโ๐ฌ","๐ฉโ๐จ","๐จโ๐จ","๐ฉโ๐","๐จโ๐","๐ฉโโ๏ธ","๐จโโ๏ธ","๐ฉโ๐","๐จโ๐","๐ฉโโ๏ธ","๐จโโ๏ธ",
        "๐ฐ","๐คต","๐ธ","๐คด","๐คถ","๐","๐ผ","๐คฐ","๐โโ๏ธ","๐โโ","๐โโ","๐โโ๏ธ","๐โโ","๐โโ๏ธ","๐โโ","๐โโ๏ธ","๐โโ","๐โโ๏ธ","๐คฆโโ๏ธ","๐คฆโโ๏ธ","๐คทโโ๏ธ",
        "๐คทโโ๏ธ","๐โโ","๐โโ๏ธ","๐โโ","๐โโ๏ธ","๐โโ","๐โโ๏ธ","๐โโ","๐โโ๏ธ","๐","๐คณ","๐","๐บ","๐ฏโโ","๐ฏโโ๏ธ","๐ด","๐ถโโ๏ธ","๐ถโโ","๐โโ๏ธ","๐โโ","๐ซ",
        "๐ญ","๐ฌ","๐","๐ฉโโค๏ธโ๐ฉ","๐จโโค๏ธโ๐จ","๐","๐ฉโโค๏ธโ๐โ๐ฉ","๐จโโค๏ธโ๐โ๐จ","๐ช","๐จโ๐ฉโ๐ง","๐จโ๐ฉโ๐งโ๐ฆ","๐จโ๐ฉโ๐ฆโ๐ฆ","๐จโ๐ฉโ๐งโ๐ง","๐ฉโ๐ฉโ๐ฆ","๐ฉโ๐ฉโ๐ง","๐ฉโ๐ฉโ๐งโ๐ฆ","๐ฉโ๐ฉโ๐ฆโ๐ฆ","๐ฉโ๐ฉโ๐งโ๐ง","๐จโ๐จโ๐ฆ","๐จโ๐จโ๐ง","๐จโ๐จโ๐งโ๐ฆ",
        "๐จโ๐จโ๐ฆโ๐ฆ","๐จโ๐จโ๐งโ๐ง","๐ฉโ๐ฆ","๐ฉโ๐ง","๐ฉโ๐งโ๐ฆ","๐ฉโ๐ฆโ๐ฆ","๐ฉโ๐งโ๐ง","๐จโ๐ฆ","๐จโ๐ง","๐จโ๐งโ๐ฆ","๐จโ๐ฆโ๐ฆ","๐จโ๐งโ๐ง","๐","๐","๐","๐","๐","๐","๐","๐ ","๐ก",
        "๐ข","๐","๐","๐ฉ","๐","๐","โ","๐","๐","๐","๐","๐ผ","๐","๐","๐ถ"
    ]
    ///็นๅปemojiๅๆ
    var didSelectEmojiCallBack: ((String) -> ())?
    ///ๅ ้คๅๆ
    var didSelectDeleteCallBack: (() -> ())?
    ///ๅ้ๅๆ
    var didSelectSendCallBack: (() -> ())?
    ///้ด้
    var columnMargin: CGFloat {
        get {
            let column = Int(collectionViewWidth / itemSize.width)
            return collectionViewWidth.truncatingRemainder(dividingBy: itemSize.width) / CGFloat(column + 1)
        }
    }
    ///ๆงไปถ้ซๅบฆ
    var height: CGFloat {
        get {
            return 6 * itemSize.height + columnMargin * 5 + safeAreaEdgeInsets.bottom
        }
    }
    ///ๆงไปถๅฎฝๅบฆ
    private var emojiViewWidth: CGFloat {
        get {
            return screenWidth
        }
    }
    ///collectionViewๅฎฝๅบฆ
    private var collectionViewWidth: CGFloat {
        get {
            return (emojiViewWidth - safeAreaEdgeInsets.left - safeAreaEdgeInsets.right)
        }
    }
    ///ๆฐๆฎ
    private var emojiDataSource = [CLChatEmojTextItem]()
    ///layout
    private lazy var emojiLayout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = columnMargin
        layout.minimumInteritemSpacing = columnMargin * 0.5
        layout.sectionInset = UIEdgeInsets(top: 0, left: columnMargin, bottom: 44, right: columnMargin)
        layout.scrollDirection = .vertical
        return layout
    }()
    ///collectionView
    private lazy var collectionView: UICollectionView = {
        let view = UICollectionView(frame: CGRect.zero, collectionViewLayout: emojiLayout)
        view.register(CLChatEmojiTextCell.classForCoder(), forCellWithReuseIdentifier: CLChatEmojiTextCell.cellReuseIdentifier())
        if #available(iOS 11.0, *) {
            view.contentInsetAdjustmentBehavior = .never
        }
        view.delegate = self
        view.dataSource = self
        view.backgroundColor = UIColor.clear
        view.showsVerticalScrollIndicator = true
        view.showsHorizontalScrollIndicator = false
        return view
    }()
    ///ๅ ้คๆ้ฎ
    private lazy var deleteButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .white
        view.clipsToBounds = true
        view.layer.cornerRadius = 3
        view.addTarget(self, action: #selector(deleteButtonAction), for: .touchUpInside)
        let longPressGestureRecognizer = UILongPressGestureRecognizer.init(target: self, action: #selector(handleLongPress(gesture:)))
        view.addGestureRecognizer(longPressGestureRecognizer)
        return view
    }()
    ///ๅ้ๆ้ฎ
    private lazy var sendButton: UIButton = {
        let view = UIButton()
        view.setTitle("ๅ้", for: .normal)
        view.setTitle("ๅ้", for: .selected)
        view.setTitle("ๅ้", for: .highlighted)
        view.titleLabel?.font = PingFangSCMedium(16)
        view.clipsToBounds = true
        view.layer.cornerRadius = 3
        view.addTarget(self, action: #selector(sendButtonAction), for: .touchUpInside)
        return view
    }()
    ///่ๆฏ
    private lazy var hiddenView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    ///ๅบ้จๅฎๅจๅบๅ
    private lazy var bottomSafeView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    ///ๆฏๅฆๅฏไปฅๅ ้ค
    var isCanDelete: Bool = true {
        didSet {
            if isCanDelete != oldValue {
                deleteButton.isUserInteractionEnabled = isCanDelete
                let image = isCanDelete ? UIImage(named: "deleteHIcon") : UIImage(named: "deleteIcon")
                deleteButton.setImage(image, for: .normal)
                deleteButton.setImage(image, for: .selected)
                deleteButton.setImage(image, for: .highlighted)
            }
        }
    }
    ///ๆฏๅฆๅฏไปฅๅ้
    var isCanSend: Bool = true {
        didSet {
            if isCanSend != oldValue {
                let textColor: UIColor = isCanSend ? .white : .hex("#CCCCCC")
                let backgroundColor: UIColor = isCanSend ? .themeColor : .white
                sendButton.isUserInteractionEnabled = isCanSend
                sendButton.setTitleColor(textColor, for: .normal)
                sendButton.setTitleColor(textColor, for: .selected)
                sendButton.setTitleColor(textColor, for: .highlighted)
                sendButton.backgroundColor = backgroundColor
            }
        }
    }
    ///ๅฎๆถๅจ
    private var timer: CLGCDTimer?
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = CGRect(x: 0, y: 0, width: emojiViewWidth, height: height)
        initData()
        initUI()
        makeConstraints()
        setNeedsLayout()
        layoutIfNeeded()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
extension CLChatEmojiView {
    private func initUI() {
        isCanDelete = false
        isCanSend = false
        addSubview(collectionView)
        addSubview(bottomSafeView)
        addSubview(hiddenView)
        addSubview(deleteButton)
        addSubview(sendButton)
    }
    private func makeConstraints() {
        collectionView.snp.makeConstraints { (make) in
            make.left.right.top.equalToSuperview()
            make.bottom.equalTo(bottomSafeView.snp.top)
        }
        bottomSafeView.snp.makeConstraints { (make) in
            make.left.right.bottom.equalToSuperview()
            make.height.equalTo(safeAreaEdgeInsets.bottom)
        }
        deleteButton.snp.makeConstraints { (make) in
            make.size.equalTo(CGSize(width: 55, height: 30))
            make.bottom.equalTo(collectionView.snp.bottom).offset(-7.5)
            make.right.equalTo(sendButton.snp.left).offset(-8)
        }
        sendButton.snp.makeConstraints { (make) in
            make.size.equalTo(CGSize(width: 55, height: 30))
            make.bottom.equalTo(collectionView.snp.bottom).offset(-7.5)
            make.right.equalTo(-15)
        }
        hiddenView.snp.makeConstraints { (make) in
            make.top.left.equalTo(deleteButton)
            make.bottom.right.equalTo(sendButton)
        }
    }
    private func initData() {
        emojiDataSource.append(contentsOf: emojiArray.map({ (text) -> CLChatEmojTextItem in
            let item = CLChatEmojTextItem()
            item.emoji = text
            return item
        }))
    }
    
    @objc private func handleLongPress(gesture : UILongPressGestureRecognizer!) {
        if gesture.state == .ended || gesture.state == .cancelled || gesture.state == .failed {
            timer?.cancel()
        }else if (gesture.state == .began) {
            timer = CLGCDTimer.init(interval: 0.1, action: {[weak self] (_) in
                DispatchQueue.main.async {
                    self?.didSelectDeleteCallBack?()
                }
            })
            timer?.start()
        }
    }
}
extension CLChatEmojiView {
    @objc private func deleteButtonAction() {
        didSelectDeleteCallBack?()
    }
    @objc private func sendButtonAction() {
        didSelectSendCallBack?()
    }
}
extension CLChatEmojiView {
    ///ๆขๅคๅๅง็ถๆ
    func restoreInitialState() {
        collectionView.setContentOffset(.zero, animated: false)
    }
}
extension CLChatEmojiView: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let emoji = emojiDataSource[indexPath.row].emoji, let cell = collectionView.cellForItem(at: indexPath), cell.alpha == 1.0 else {
            return
        }
        didSelectEmojiCallBack?(emoji)
    }
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        let cellRect = cell.convert(cell.bounds, to: self)
        let hiddenRect = hiddenView.convert(hiddenView.bounds, to: self)
        cell.alpha = hiddenRect.intersects(cellRect) ? max(0, 1.0 - (cellRect.maxY - hiddenRect.minY) / (45 * 0.45)) : 1.0
    }
}
extension CLChatEmojiView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return emojiDataSource.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return emojiDataSource[indexPath.row].dequeueReusableCell(collectionView: collectionView, indexPath: indexPath)
    }
}
extension CLChatEmojiView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return itemSize
    }
}
extension CLChatEmojiView: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        for cell in collectionView.visibleCells {
            let cellRect = cell.convert(cell.bounds, to: self)
            let hiddenRect = hiddenView.convert(hiddenView.bounds, to: self)
            cell.alpha = hiddenRect.intersects(cellRect) ? max(0, 1.0 - (cellRect.maxY - hiddenRect.minY) / (45 * 0.45)) : 1.0
        }
    }
}
