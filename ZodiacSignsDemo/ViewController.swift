import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var ZodiacCollV: UICollectionView!
    
    //Zodiac Signs
    //राशि  चिन्ह
    
    //Zodiac Image Array
    let ZodImgArr = ["Aquarius","Aries","Cancer","Capricorn","Gemini","Leo","Libra","Pisces","Sagittarius","Scorpio","Taurus","Virgo"]
    //Zodiac Hindi Name Array
    let ZodHindiNameArr = ["कुंभ","मेष","कर्क","मकर","मिथुन","सिंह","तूळ","मीन","धनु","वृश्चिक","वृषभ","कन्या"]
    //Zodiac English Name Array
    let ZodEnglishNameArr = ["Aquarius","Aries","Cancer","Capricorn","Gemini","Leo","Libra","Pisces","Sagittarius","Scorpio","Taurus","Virgo"]
    //Zodiac Hindi Date Array
    let ZodHindiDateArr = ["जनवरी २० - फरवरी १८","मार्च २१ - अप्रैल १९","जून २१ - जुलाई २२","दिसम्बर २२ - जनवरी १९","मई २१ - जून २०","जुलाई २३ - अगस्त २२","सितम्बर २३ - अक्टूबर २२","फरवरी १९ - मार्च २०","नवम्बर २२ - दिसम्बर २१","अक्टूबर २३ - नवम्बर २१","अप्रैल २० - मई २०","अगस्त २३ - सितम्बर २२"]
    //Zodiac English Date Array
    let ZodEnglishDateArr = ["Jan 20 - Feb 18","Mar 21 - Apr 19","Jun 21 - Jul 22","Dec 22 - Jan 19","May 21 - Jun 20","Jul 23 - Aug 22","Sep 23 - Aug 22","Feb 19 - Mar 20","Nov 22 - Dec 21","Oct 23 - Nov 21","Apr 20 - May 20","Aug 23 - Sep 22"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return ZodImgArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ZodiacCVC", for: indexPath) as! ZodiacCVC
        cell.zodiacImg.image = UIImage(named: ZodImgArr[indexPath.row])
        //cell.zodiacNameLbl.text = ZodHindiNameArr[indexPath.row]
        cell.zodiacNameLbl.text = ZodEnglishNameArr[indexPath.row]
        //cell.zodiacDateLbl.text = ZodHindiDateArr[indexPath.row]
        cell.zodiacDateLbl.text = ZodEnglishDateArr[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: floor((collectionView.frame.size.width-20)/2), height: 176)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat
    {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat
    {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets
    {
        return UIEdgeInsets(top: 7, left: 7, bottom: 7, right: 7)
    }
}

class ZodiacCVC: UICollectionViewCell
{
    @IBOutlet weak var zodiacImg: UIImageView!
    @IBOutlet weak var zodiacNameLbl: UILabel!
    @IBOutlet weak var zodiacDateLbl: UILabel!
}
