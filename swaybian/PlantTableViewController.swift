//
//  PlantTableViewController.swift
//  midterm

import UIKit

class PlantTableViewController: UITableViewController
{
    var tag : Int = 0
    override func viewDidLoad()
    {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.isHidden = false

        //navigationController?.navigationBar.prefersLargeTitles = true //標題字變大
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return plantsss.count
    }
    var plantsss : Array<String> = [""]
    var image : Array<String> = [""]
    
    /*var plant0:[Plant] = [
        Plant(name1:"火炭母草",name2:"Polygonum chinense Linn",name3:"蓼科(Polygonaceae)蓼屬(Polygonum)", location:"台南市安定區", habitat:"中海拔山區到低山帶，水分供應較充裕之開闊地、溪谷兩旁和道路附近。", description:"",image:"火炭母草1", lat: 23.095298, long: 120.216652),
        Plant(name1:"光臘樹",name2:"Fraxinus formosana Hayata",name3:"木犀科(Oleaceae)梣屬(Fraxinus)",location:"台中市東區", habitat:"分布於低海拔季風林。北部分布於海拔1800公尺以下至500公尺及南部1800公尺以下至700公尺範圍暖溫帶闊葉林帶。", description:"木材是好的家具材料，適合作為庭園樹、行道樹。",image:"光臘樹1", lat:24.142770, long:120.694423),
        Plant(name1:"咖啡",name2:"Coffea canephora Pierre",name3:"茜草科(Rubiaceae)咖啡屬(Coffea)",location:"台南市東山區", habitat:"花蓮縣舞鶴一帶、台中縣東勢林場、中興大學的惠蓀林場、台南東山、雲林古坑、嘉義阿里山、新竹及苗栗一代。", description:"1. 食用：咖啡豆可研磨成實用的咖啡。2. 觀賞用：咖啡結實鮮紅美麗，是優美的觀賞樹。3.藥用：性味：種子：苦、澀、溫。效用：種子：健胃、興奮劑。助消化，利尿，提神。治精神倦怠，食慾不振。",image:"咖啡1", lat:23.282501, long:120.447285),
        Plant(name1:"風鈴木",name2:"Tabebuia chrysantha (Jacq.) G. Nicholson ",name3:"紫葳科(Bignoniaceae)風鈴木屬(Tabebuia)",location:"南投縣", habitat:"多栽植於庭園以供觀賞，近年來台灣中南部許多路段栽植為行道樹。嘉義市世賢路、自由路，台中縣后里鄉三豐路有種植", description:"1.園藝用植栽：被種植為庭園樹、行道樹。",image:"風鈴木1", lat:23.960998, long:120.971864),
        Plant(name1:"楊梅",name2:"Myrica rubra (Lour) Sieb. et Zucc. ",name3:"楊梅科(Myricacea)楊梅屬(Myrica)",location:"雲林縣褒忠鄉", habitat:"分佈於台灣海拔 300~1500 公尺之山麓。", description:"1. 園藝行道綠籬用：生性強健，生長緩慢，樹姿美觀，耐旱耐瘠，適合作行道樹、園景樹、誘鳥樹、綠籬。2. 食用：生食生津止渴，亦可做蜜餞、果醬。3. 樹皮含單寧甚豐，可以撮取；亦可入藥。",image:"楊梅1", lat:23.694437, long:120.310320)]
    
    var plant1:[Plant] = [
        Plant(name1:"芒果",name2:"Mangifera indica L.",name3:"漆樹科(Anacardiaceae)芒果屬(Mangifera)", location:"雲林縣褒忠鄉", habitat:"台灣被廣泛栽培為果樹及行道樹。", description:"1. 食用：在台灣芒果被廣泛栽培為果樹，以食用為主，果汁也很流行，本地種未熟果可加鹽、糖 而食。2. 行道樹：中南部很多路段種植芒果作為行道樹。2. 藥用：芒果肉含有豐富的維生素A、C和D，中醫學認為，芒果味甘、酸，性涼，有益胃止嘔、生津解渴及止暈眩等功效，甚至可治胃熱煩渴、嘔吐不適及暈車、暈船等症。 芒果核具清熱作用，只需以芒果核煎水一大碗，入茶飲用，就有退熱之效。芒果不利腎臟，患有急性或慢性腎炎的病人應忌食芒果。",image:"芒果2", lat:23.694437, long:120.310320),
        Plant(name1:"垂枝女真",name2:"Ligustrum sinense 'Pendula'",name3:"木犀科(Oleaceae)女貞屬(Ligustrum)", location:"南投縣", habitat:"偶爾可見作為庭園栽植美化", description:"1. 庭園樹、綠籬、盆栽：垂枝女貞樹姿優雅，春季開花時花團錦簇，適合作庭園的園景樹或大盆栽用。2.蜜源植物：花開時整棵樹開滿白花，常吸引很多蜜蜂和蝴蝶前來吸食花蜜。",image:"垂枝女真2", lat:23.960998, long:120.971864),
        Plant(name1:"波羅蜜",name2:"Artocarpus heterophyllus Lam.",name3:"桑科(Moraceae)波羅蜜屬(Artocarpus)", location:"台中市東區", habitat:"印度、爪哇、馬來西亞、我國南部及巴西。", description:"1.庭園樹、行道樹、綠蔭樹及果樹。2.食用：果實和種子味美，是優良果品。3.木材黃，可提取桑色素。4.藥用：性味：甘、酸、平。效用：全株：強健行氣，止咳利尿，袪火消炎。果實：解煩止渴，醒酒益氣；種子：補中氣；根：解熱止痢、為收斂劑；葉：治瘍瘡，袪瘀血。治創傷及毒蛇咬傷；樹脂：散結，消腫，止痛。",image:"波羅蜜2", lat:24.142770, long:120.694423),
        Plant(name1:"珊瑚樹",name2:"Viburnum odoratissimum Ker.",name3:"忍冬科(Caprifoliaceae)莢迷屬(Viburnum)", location:"台南市東山區", habitat:"台灣海拔之闊葉林中，中南部較多。 南部山區至恆春半島、尤以南仁山區最多。", description:"1. 庭園觀賞樹：庭園觀賞用。2. 果實可供鳥類食用。3. 防火樹種：對多種毒氣具有較強的抵抗力，非常適合作為都市的行道樹。4.藥用：性味：根、樹皮、葉：辛、涼、溫。效用：根：清熱袪濕，通經活絡，拔毒生肌。治感冒，跌打損傷，骨折，風濕。",image:"珊瑚樹2", lat:23.282501, long:120.447285),
        Plant(name1:"鐵冬青",name2:"lex rotunda Thunb.",name3:"冬青科(Aquifoliaceae)冬青屬(Ilex)", location:"台南市安定區", habitat:"台北、桃園、新竹、屏東，山區闊葉林中。", description:"1.庭園賞樹及庭栽觀賞、行道樹、觀果樹：鐵冬青樹葉厚而密，湖邊或開闊地種植此樹，能形成陰蔽的環境，又能產生多層次豐富景色的效果，是理想的園林觀賞樹種。2.一般用途：木材可供建築，枝葉作造紙糊料原料，樹皮可提製染料和栲膠，木材作細工用材；果實紅熟時，很多鳥類喜食，所以也是鳥餌植物。3.藥用：性味：葉和樹皮：苦、寒。效用：根：清熱解毒，消種止痛，止血。治感冒發熱，腎炎水腫，急性盆腔炎，癰瘡癤腫，毒蛇咬傷。外用治燙傷，濕疹，稻田皮炎；獸醫用治胃潰瘍，感冒發熱和各種痛症，熱毒，陰瘡。",image:"鐵冬青2", lat:23.095298, long:120.216652)]
    
    var plant2:[Plant] = [
        Plant(name1:"三斗石櫟",name2:"Lithocarpus hancei (Benth.) Rehd.",name3:"殼斗科(Fagaceae)柯屬(Pasania)", location:"南投縣", habitat:"生長於台灣全島中至高海拔約 800~2,600 公尺的山地、農林內，有時和台灣鐵杉呈混淆狀生長，為常見樹種。", description:"1.樹形亦優美，可供栽植為庭園樹種。2.三斗柯對氣候及土壤之適應力強，故為本省常綠闊葉林中常見之成員。3.其木材可供建築、車船及製作農具、工具柄之用。",image:"三斗石櫟3", lat:23.960998, long:120.971864),
        Plant(name1:"五掌楠",name2:"Neolitsea konishii (Hayata) Kanehira & Sasaki",name3:"樟科(Lauraceae)新木薑子屬(Neolitsea)", location:"雲林縣褒忠鄉", habitat:"特產於臺灣全島闊葉樹林中，海拔低至中海拔約 500~1,800 公尺的山地，尤以中北部較多。", description:"1.綠化美化植栽、行道樹：樹形優美為綠化環境之優良樹種。2.木材用途：木材供建築和家具之用。",image:"五掌楠3", lat:23.694437, long:120.310320),
        Plant(name1:"香葉樹",name2:"Lindera communis Hemsl.",name3:"樟科(Lauraceae)釣樟屬(Lindera )", location:"台南市安定區", habitat:"台灣產於全島平野至中海拔 2,300 公尺的闊葉林內；苗栗、南投，闊葉林內。",  description:"1.庭植觀賞用：香葉樹樹姿優美，成熟果實紅豔耀眼，可供庭植觀賞用。2.木材可供建築、造船或製優良家具。3.葉、果含芳香精油，可作香料；種子可榨油，為香皂原料。4.藥用：性味：葉、莖皮、種子油：微苦、溫。效用：根、葉：散瘀消腫，止血止痛，解毒。治跌打損傷，骨折，外傷出血，瘡癤癰腫。",image:"香葉樹3", lat:23.095298, long:120.216652),
        Plant(name1:"黃花風鈴木",name2:"Tabebuia chrysantha (Jacq.) G. Nicholson ",name3:"紫葳科(Bignoniaceae)風鈴木屬(Tabebuia)", location:"台中市東區", habitat:"多栽植於庭園以供觀賞，近年來台灣中南部許多路段栽植為行道樹。嘉義市世賢路、自由路，台中縣后里鄉三豐路有種植。", description:"1.園藝用植栽：被種植為庭園樹、行道樹。",image:"黃花風鈴木3", lat:24.142770, long:120.694423),
        Plant(name1:"楓香",name2:"Liquidambar formosana Hance",name3:"金縷梅科(Hamamelidaceae)楓香屬(Liquidambar)", location:"台南市東山區", habitat:"台灣盛產於平地至海拔 2,000 公尺地區，極為普遍。開墾蹟地多見，尤以中部山區如埔里至霧社間往往成純林相。", description:"1. 園藝樹、行道樹和高級盆景：樹幹挺直、樹形挺偉優雅，為優美的園藝樹、行道樹和高級盆景。2. 樹脂用途：樹枝受傷後流出的樹脂稱「楓香」或「楓香脂」，可做口香糖的原料，亦可入藥。3. 葉的用途：可飼天蠶蛾幼蟲。4. 木材用途：木材淡紅黃白色，年輪明顯，耐朽力強，可供建築房屋的樑柱，箱板材及一般農具及小型家具用材，或香菇之段木，亦可切碎當作培育其他蕈類的太空包；為闊葉二級木。5.藥用：性味：根：苦、溫；葉：苦、平；果：(路路通)：苦、平；白膠香：香、辛、平。效用：果：(路路通)：利水下乳，行中寬氣，袪風通路，利水除濕。治關節痛。水腫脹滿，乳少，經閉，濕疹；葉：袪風除濕：行氣止痛。治痢疾、癰腫；樹脂(白膠香)：解毒生肌，活血止痛，涼血解毒，止血生肌。治跌打損傷。癰疽腫痛。吐血，衄血，外傷出血；樹根：袪風止痛。治癰疽，瘡疥，風濕關節痛。",image:"楓香3", lat:23.282501, long:120.447285)]
    
    var plant3:[Plant] = [
        Plant(name1:"石栗",name2:"Aleurites moluccana Willd.",name3:"大戟科(Euphorbiaceae)油桐屬(Aleurites)", location:"台南市安定區", habitat:"多栽植於庭園及路旁，做為庭園綠化觀賞用。", description:"1.綠化觀賞用：石栗常被種於庭園及路旁，做為庭園樹或行道樹用。2.種子可榨油，可供食用及工業用途。3.木材用途：木材淡紅褐色，具有光澤，可做箱板材及做火柴稈的材料。4.性味：葉、種子：甘、微苦、寒，有小毒。效用：根：清熱，通經止血。葉：治經閉，外傷出血：種子：活血，潤腸。治癰瘡腫毒，閉經，腸燥便秘。",image:"石栗5", lat:23.095298, long:120.216652),
        Plant(name1:"非洲紫葳",name2:"acaranda acutifolia Humb",name3:"紫威科(Bignoniaceae)藍花楹屬(Jacaranda)", location:"南投縣", habitat:"被引進栽植為庭園樹、行道樹用", description:"1.優良園林、行道樹種：樹形很美，開藍色的花，是一種值得推廣的園林樹種。2.雕刻工藝用材：藍花楹木呈灰白色，有直紋理，較軟，無樹結，易乾，可作家具用材。",image:"非洲紫葳5", lat:23.960998, long:120.971864),
        Plant(name1:"海桐",name2:"Pittosporum tobira Ait.",name3:"海桐科(Pittosporaceae)海桐屬(Pittosporum)", location:"台中市東區", habitat:"台北、新竹、屏東、花蓮、綠島，海濱及平原闊葉林中，常見於沿海地區。",  description:"1. 花、果、樹姿具觀賞價值：常被種為海岸防風林、行道樹、綠籬、庭園美化用；可單植、列植；果實可供插花用。2.木材可做薪柴或製作小用具用。3.藥用：枝葉或樹皮能做治風疹特效藥。性味：根：苦、辛、溫；種子：苦、寒。效用：樹皮：治皮膚病；枝葉：外洗止膚養；葉：外用治疥癬；根：袪風活絡，散瘀止痛；果實：治疝痛。",image:"海桐5", lat:24.142770, long:120.694423),
        Plant(name1:"奧氏虎皮楠",name2:"Daphniphyllum glaucescens var. oldhamii Hemsl.",name3:"虎皮楠科(Daphniphyllaceae)虎皮楠屬(Daphniphyllum)", location:"台南市東山區", habitat:"台灣廣泛地分佈於低至中海拔山地約 200~1,200 公尺的山地，叢林或路旁，較常見。", description:"1.綠化美化植栽、行道樹：虎皮楠樹型優美，為良好綠化環境之園林樹。2.木材用途：其木材細緻，可作為木材加工供建築和家具之用。3.油料植物：種子含油量多，可供榨油。4.藥用：虎皮楠屬植物根及枝葉有清熱解毒，活血散瘀之效。根治感冒發熱，扁桃腺炎，脾臟腫大。枝葉治風溼骨痛，浮腫。",image:"奧氏虎皮楠5", lat:23.282501, long:120.447285),
        Plant(name1:"欖仁樹",name2:"Terminalia catappa Linn",name3:"使君子科(Combretaceae)欖仁屬(Terminalia)", location:"雲林縣褒忠鄉", habitat:"恆春半島、蘭嶼、小琉球、綠島及澎湖，各地庭園亦多栽培。", description:"1. 庭園樹、行道樹：常用作庭院遮陰植物或行道樹。2. 木材可供建築及製造器具：欖仁樹的邊材白色，心材紅褐色，質緻密而重，硬度適中，除供建築或製造器具外，蘭嶼當地居民也常以其木材建造獨木舟。3. 食用：種子之種仁，有芳香味，食之味佳；可供搾油。4. 果皮作染料：果皮含蹂質(單寧)可作黑色染料，葉及種子可藥用。5.藥用：性味：種子：苦、澀、涼；樹皮：苦、涼；葉：辛、微苦、涼。效用：種子：清熱解毒。治咽喉腫痛，痢疾，腫毒；樹皮：解毒止痢，化痰止咳，收斂止痢。治痢疾，痰熱咳嗽，瘡瘍，泄瀉；葉：袪風清熱，止咳止痛，解毒殺蟲。治感冒發熱，痰熱咳嗽，頭痛，風濕關節痛，赤痢，瘡瘍疥癩，肝炎，關節炎；嚼食葉子治喉痹及感冒。",image:"欖仁樹5", lat:23.694437, long:120.310320)]*/
    var plant0:[Plant] = [
        Plant(name1:"火炭母草",name2:"Polygonum chinense Linn",name3:"蓼科(Polygonaceae)蓼屬(Polygonum)", location:"台灣南投縣埔里鎮大學路1號", habitat:"中海拔山區到低山帶，水分供應較充裕之開闊地、溪谷兩旁和道路附近。", description:"",image:"火炭母草1", lat:24.0039838, long:120.9296894),
        Plant(name1:"光臘樹",name2:"Fraxinus formosana Hayata",name3:"木犀科(Oleaceae)梣屬(Fraxinus)",location:"台灣南投縣埔里鎮大學路1號", habitat:"分布於低海拔季風林。北部分布於海拔1800公尺以下至500公尺及南部1800公尺以下至700公尺範圍暖溫帶闊葉林帶。", description:"木材是好的家具材料，適合作為庭園樹、行道樹。",image:"光臘樹1", lat:24.0039838, long:120.9296894),
        Plant(name1:"咖啡",name2:"Coffea canephora Pierre",name3:"茜草科(Rubiaceae)咖啡屬(Coffea)",location:"台南市", habitat:"花蓮縣舞鶴一帶、台中縣東勢林場、中興大學的惠蓀林場、台南東山、雲林古坑、嘉義阿里山、新竹及苗栗一代。", description:"1. 食用：咖啡豆可研磨成實用的咖啡。2. 觀賞用：咖啡結實鮮紅美麗，是優美的觀賞樹。3.藥用：性味：種子：苦、澀、溫。效用：種子：健胃、興奮劑。助消化，利尿，提神。治精神倦怠，食慾不振。",image:"咖啡1", lat:24.0039838, long:120.9296894),
        Plant(name1:"風鈴木",name2:"Tabebuia chrysantha (Jacq.) G. Nicholson ",name3:"紫葳科(Bignoniaceae)風鈴木屬(Tabebuia)",location:"台中縣后里鄉三豐路", habitat:"多栽植於庭園以供觀賞，近年來台灣中南部許多路段栽植為行道樹。嘉義市世賢路、自由路，台中縣后里鄉三豐路有種植", description:"1.園藝用植栽：被種植為庭園樹、行道樹。",image:"風鈴木1", lat:23.960998, long:120.971864),
        Plant(name1:"楊梅",name2:"Myrica rubra (Lour) Sieb. et Zucc. ",name3:"楊梅科(Myricacea)楊梅屬(Myrica)",location:"雲林縣", habitat:"分佈於台灣海拔 300~1500 公尺之山麓。", description:"1. 園藝行道綠籬用：生性強健，生長緩慢，樹姿美觀，耐旱耐瘠，適合作行道樹、園景樹、誘鳥樹、綠籬。2. 食用：生食生津止渴，亦可做蜜餞、果醬。3. 樹皮含單寧甚豐，可以撮取；亦可入藥。",image:"楊梅1", lat:24.0039838, long:120.9296894)]
    
    var plant1:[Plant] = [
        Plant(name1:"芒果",name2:"Mangifera indica L.",name3:"漆樹科(Anacardiaceae)芒果屬(Mangifera)", location:"雲林縣褒忠鄉", habitat:"台灣被廣泛栽培為果樹及行道樹。", description:"1. 食用：在台灣芒果被廣泛栽培為果樹，以食用為主，果汁也很流行，本地種未熟果可加鹽、糖 而食。2. 行道樹：中南部很多路段種植芒果作為行道樹。2. 藥用：芒果肉含有豐富的維生素A、C和D，中醫學認為，芒果味甘、酸，性涼，有益胃止嘔、生津解渴及止暈眩等功效，甚至可治胃熱煩渴、嘔吐不適及暈車、暈船等症。 芒果核具清熱作用，只需以芒果核煎水一大碗，入茶飲用，就有退熱之效。芒果不利腎臟，患有急性或慢性腎炎的病人應忌食芒果。",image:"芒果2", lat:24.0039838, long:120.9296894),
        Plant(name1:"垂枝女真",name2:"Ligustrum sinense 'Pendula'",name3:"木犀科(Oleaceae)女貞屬(Ligustrum)", location:"南投縣", habitat:"偶爾可見作為庭園栽植美化", description:"1. 庭園樹、綠籬、盆栽：垂枝女貞樹姿優雅，春季開花時花團錦簇，適合作庭園的園景樹或大盆栽用。2.蜜源植物：花開時整棵樹開滿白花，常吸引很多蜜蜂和蝴蝶前來吸食花蜜。",image:"垂枝女真2",lat:24.0039838, long:120.9296894),
        Plant(name1:"波羅蜜",name2:"Artocarpus heterophyllus Lam.",name3:"桑科(Moraceae)波羅蜜屬(Artocarpus)", location:"台中市東區", habitat:"印度、爪哇、馬來西亞、我國南部及巴西。", description:"1.庭園樹、行道樹、綠蔭樹及果樹。2.食用：果實和種子味美，是優良果品。3.木材黃，可提取桑色素。4.藥用：性味：甘、酸、平。效用：全株：強健行氣，止咳利尿，袪火消炎。果實：解煩止渴，醒酒益氣；種子：補中氣；根：解熱止痢、為收斂劑；葉：治瘍瘡，袪瘀血。治創傷及毒蛇咬傷；樹脂：散結，消腫，止痛。",image:"波羅蜜2", lat:24.142770, long:120.694423),
        Plant(name1:"珊瑚樹",name2:"Viburnum odoratissimum Ker.",name3:"忍冬科(Caprifoliaceae)莢迷屬(Viburnum)", location:"台南市東山區", habitat:"台灣海拔之闊葉林中，中南部較多。 南部山區至恆春半島、尤以南仁山區最多。", description:"1. 庭園觀賞樹：庭園觀賞用。2. 果實可供鳥類食用。3. 防火樹種：對多種毒氣具有較強的抵抗力，非常適合作為都市的行道樹。4.藥用：性味：根、樹皮、葉：辛、涼、溫。效用：根：清熱袪濕，通經活絡，拔毒生肌。治感冒，跌打損傷，骨折，風濕。",image:"珊瑚樹2", lat:24.0039838, long:120.9296894),
        Plant(name1:"鐵冬青",name2:"lex rotunda Thunb.",name3:"冬青科(Aquifoliaceae)冬青屬(Ilex)", location:"台南市安定區", habitat:"台北、桃園、新竹、屏東，山區闊葉林中。", description:"1.庭園賞樹及庭栽觀賞、行道樹、觀果樹：鐵冬青樹葉厚而密，湖邊或開闊地種植此樹，能形成陰蔽的環境，又能產生多層次豐富景色的效果，是理想的園林觀賞樹種。2.一般用途：木材可供建築，枝葉作造紙糊料原料，樹皮可提製染料和栲膠，木材作細工用材；果實紅熟時，很多鳥類喜食，所以也是鳥餌植物。3.藥用：性味：葉和樹皮：苦、寒。效用：根：清熱解毒，消種止痛，止血。治感冒發熱，腎炎水腫，急性盆腔炎，癰瘡癤腫，毒蛇咬傷。外用治燙傷，濕疹，稻田皮炎；獸醫用治胃潰瘍，感冒發熱和各種痛症，熱毒，陰瘡。",image:"鐵冬青2", lat:24.0039838, long:120.9296894)]
    
    var plant2:[Plant] = [
        Plant(name1:"三斗石櫟",name2:"Lithocarpus hancei (Benth.) Rehd.",name3:"殼斗科(Fagaceae)柯屬(Pasania)", location:"南投縣", habitat:"生長於台灣全島中至高海拔約 800~2,600 公尺的山地、農林內，有時和台灣鐵杉呈混淆狀生長，為常見樹種。", description:"1.樹形亦優美，可供栽植為庭園樹種。2.三斗柯對氣候及土壤之適應力強，故為本省常綠闊葉林中常見之成員。3.其木材可供建築、車船及製作農具、工具柄之用。",image:"三斗石櫟3", lat:24.0039838, long:120.9296894),
        Plant(name1:"五掌楠",name2:"Neolitsea konishii (Hayata) Kanehira & Sasaki",name3:"樟科(Lauraceae)新木薑子屬(Neolitsea)", location:"雲林縣褒忠鄉", habitat:"特產於臺灣全島闊葉樹林中，海拔低至中海拔約 500~1,800 公尺的山地，尤以中北部較多。", description:"1.綠化美化植栽、行道樹：樹形優美為綠化環境之優良樹種。2.木材用途：木材供建築和家具之用。",image:"五掌楠3", lat:23.694437, long:120.310320),
        Plant(name1:"香葉樹",name2:"Lindera communis Hemsl.",name3:"樟科(Lauraceae)釣樟屬(Lindera )", location:"台南市安定區", habitat:"台灣產於全島平野至中海拔 2,300 公尺的闊葉林內；苗栗、南投，闊葉林內。",  description:"1.庭植觀賞用：香葉樹樹姿優美，成熟果實紅豔耀眼，可供庭植觀賞用。2.木材可供建築、造船或製優良家具。3.葉、果含芳香精油，可作香料；種子可榨油，為香皂原料。4.藥用：性味：葉、莖皮、種子油：微苦、溫。效用：根、葉：散瘀消腫，止血止痛，解毒。治跌打損傷，骨折，外傷出血，瘡癤癰腫。",image:"香葉樹3", lat:23.095298, long:120.216652),
        Plant(name1:"黃花風鈴木",name2:"Tabebuia chrysantha (Jacq.) G. Nicholson ",name3:"紫葳科(Bignoniaceae)風鈴木屬(Tabebuia)", location:"台中市東區", habitat:"多栽植於庭園以供觀賞，近年來台灣中南部許多路段栽植為行道樹。嘉義市世賢路、自由路，台中縣后里鄉三豐路有種植。", description:"1.園藝用植栽：被種植為庭園樹、行道樹。",image:"黃花風鈴木3", lat:24.142770, long:120.694423),
        Plant(name1:"楓香",name2:"Liquidambar formosana Hance",name3:"金縷梅科(Hamamelidaceae)楓香屬(Liquidambar)", location:"台南市東山區", habitat:"台灣盛產於平地至海拔 2,000 公尺地區，極為普遍。開墾蹟地多見，尤以中部山區如埔里至霧社間往往成純林相。", description:"1. 園藝樹、行道樹和高級盆景：樹幹挺直、樹形挺偉優雅，為優美的園藝樹、行道樹和高級盆景。2. 樹脂用途：樹枝受傷後流出的樹脂稱「楓香」或「楓香脂」，可做口香糖的原料，亦可入藥。3. 葉的用途：可飼天蠶蛾幼蟲。4. 木材用途：木材淡紅黃白色，年輪明顯，耐朽力強，可供建築房屋的樑柱，箱板材及一般農具及小型家具用材，或香菇之段木，亦可切碎當作培育其他蕈類的太空包；為闊葉二級木。5.藥用：性味：根：苦、溫；葉：苦、平；果：(路路通)：苦、平；白膠香：香、辛、平。效用：果：(路路通)：利水下乳，行中寬氣，袪風通路，利水除濕。治關節痛。水腫脹滿，乳少，經閉，濕疹；葉：袪風除濕：行氣止痛。治痢疾、癰腫；樹脂(白膠香)：解毒生肌，活血止痛，涼血解毒，止血生肌。治跌打損傷。癰疽腫痛。吐血，衄血，外傷出血；樹根：袪風止痛。治癰疽，瘡疥，風濕關節痛。",image:"楓香3", lat:23.282501, long:120.447285)]
    
    var plant3:[Plant] = [
        Plant(name1:"石栗",name2:"Aleurites moluccana Willd.",name3:"大戟科(Euphorbiaceae)油桐屬(Aleurites)", location:"台南市安定區", habitat:"多栽植於庭園及路旁，做為庭園綠化觀賞用。", description:"1.綠化觀賞用：石栗常被種於庭園及路旁，做為庭園樹或行道樹用。2.種子可榨油，可供食用及工業用途。3.木材用途：木材淡紅褐色，具有光澤，可做箱板材及做火柴稈的材料。4.性味：葉、種子：甘、微苦、寒，有小毒。效用：根：清熱，通經止血。葉：治經閉，外傷出血：種子：活血，潤腸。治癰瘡腫毒，閉經，腸燥便秘。",image:"石栗5", lat:23.095298, long:120.216652),
        Plant(name1:"非洲紫葳",name2:"acaranda acutifolia Humb",name3:"紫威科(Bignoniaceae)藍花楹屬(Jacaranda)", location:"南投縣", habitat:"被引進栽植為庭園樹、行道樹用", description:"1.優良園林、行道樹種：樹形很美，開藍色的花，是一種值得推廣的園林樹種。2.雕刻工藝用材：藍花楹木呈灰白色，有直紋理，較軟，無樹結，易乾，可作家具用材。",image:"非洲紫葳5", lat:23.960998, long:120.971864),
        Plant(name1:"海桐",name2:"Pittosporum tobira Ait.",name3:"海桐科(Pittosporaceae)海桐屬(Pittosporum)", location:"台中市東區", habitat:"台北、新竹、屏東、花蓮、綠島，海濱及平原闊葉林中，常見於沿海地區。",  description:"1. 花、果、樹姿具觀賞價值：常被種為海岸防風林、行道樹、綠籬、庭園美化用；可單植、列植；果實可供插花用。2.木材可做薪柴或製作小用具用。3.藥用：枝葉或樹皮能做治風疹特效藥。性味：根：苦、辛、溫；種子：苦、寒。效用：樹皮：治皮膚病；枝葉：外洗止膚養；葉：外用治疥癬；根：袪風活絡，散瘀止痛；果實：治疝痛。",image:"海桐5", lat:24.142770, long:120.694423),
        Plant(name1:"奧氏虎皮楠",name2:"Daphniphyllum glaucescens var. oldhamii Hemsl.",name3:"虎皮楠科(Daphniphyllaceae)虎皮楠屬(Daphniphyllum)", location:"台南市東山區", habitat:"台灣廣泛地分佈於低至中海拔山地約 200~1,200 公尺的山地，叢林或路旁，較常見。", description:"1.綠化美化植栽、行道樹：虎皮楠樹型優美，為良好綠化環境之園林樹。2.木材用途：其木材細緻，可作為木材加工供建築和家具之用。3.油料植物：種子含油量多，可供榨油。4.藥用：虎皮楠屬植物根及枝葉有清熱解毒，活血散瘀之效。根治感冒發熱，扁桃腺炎，脾臟腫大。枝葉治風溼骨痛，浮腫。",image:"奧氏虎皮楠5", lat:23.282501, long:120.447285),
        Plant(name1:"欖仁樹",name2:"Terminalia catappa Linn",name3:"使君子科(Combretaceae)欖仁屬(Terminalia)", location:"雲林縣褒忠鄉", habitat:"恆春半島、蘭嶼、小琉球、綠島及澎湖，各地庭園亦多栽培。", description:"1. 庭園樹、行道樹：常用作庭院遮陰植物或行道樹。2. 木材可供建築及製造器具：欖仁樹的邊材白色，心材紅褐色，質緻密而重，硬度適中，除供建築或製造器具外，蘭嶼當地居民也常以其木材建造獨木舟。3. 食用：種子之種仁，有芳香味，食之味佳；可供搾油。4. 果皮作染料：果皮含蹂質(單寧)可作黑色染料，葉及種子可藥用。5.藥用：性味：種子：苦、澀、涼；樹皮：苦、涼；葉：辛、微苦、涼。效用：種子：清熱解毒。治咽喉腫痛，痢疾，腫毒；樹皮：解毒止痢，化痰止咳，收斂止痢。治痢疾，痰熱咳嗽，瘡瘍，泄瀉；葉：袪風清熱，止咳止痛，解毒殺蟲。治感冒發熱，痰熱咳嗽，頭痛，風濕關節痛，赤痢，瘡瘍疥癩，肝炎，關節炎；嚼食葉子治喉痹及感冒。",image:"欖仁樹5", lat:23.694437, long:120.310320)]

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell" //當初在Ｍainstoryboard的cell的indentifer為Cell
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! PlantTableViewCell

        // Configure the cell...
        cell.plantlabel.text = plantsss[indexPath.row]
        //plantLabel為PlantTableViewCell宣告的參數顯示對應植物
        cell.plantimage.image = UIImage(named: image[indexPath.row])
        //plantimage為PlantTableViewCell宣告的參數顯示對應植物圖片
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPlantDetail"{
            if let indexPath = tableView.indexPathForSelectedRow
            {
                let destinationController = segue.destination as! PlantDetailViewController
                //destinationController.plantImageName = image[indexPath.row]
                //plantImageNamr為PlantDetailViewController宣告的參數指定其對應植物圖片
                
                if (tag == 0){
                    destinationController.plants = plant0[indexPath.row]
                }
                else if (tag == 1){
                    destinationController.plants = plant1[indexPath.row]
                }
                else if (tag == 2){
                    destinationController.plants = plant2[indexPath.row]
                }
                else if (tag == 3){
                    destinationController.plants = plant3[indexPath.row]
                }
            }
        }
    }
    
    
    /*override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = butterfly[indexPath.row]
        cell.imageView?.image = UIImage(named: image[indexPath.row])
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showimage" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! ShowbutterflyViewController
                if (tag == 0){
                    destinationController.butterfly = butterflies0[indexPath.row]
                }
                else if (tag == 1){
                    destinationController.butterfly = butterflies1[indexPath.row]
                }
                else if (tag == 2){
                    destinationController.butterfly = butterflies2[indexPath.row]
                }
                
            }
        }
    }
    */
    
  //  var plant:[Plant]=[Plant(name:"",typt:"",location:"",image:"")]
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
