//from suggessions
bool isContainerVisible = true;

var pics = [
  'https://i.pinimg.com/550x/c4/ab/eb/c4abebfe8f0682058c29d4ab28308648.jpg',
  'https://w0.peakpx.com/wallpaper/676/665/HD-wallpaper-bmw-m5-auto-car-competition-f90-m-power-sedan-vehicle.jpg',
  'https://carwow-uk-wp-3.imgix.net/18015-MC20BluInfinito-scaled-e1666008987698.jpg',
  'https://assets.mspimages.in/gear/wp-content/uploads/2023/01/Bugati.png',
  'https://autobizz.in/wp-content/uploads/2022/03/ImageResizer.ashx_.jpg',
  'https://img.freepik.com/premium-photo/concept-car-future_481747-2734.jpg',
  'https://img.freepik.com/premium-photo/futuristic-sports-car-neon-highway-power-ai-generative_407474-8552.jpg', //
  'https://i.pinimg.com/736x/a6/11/41/a611411ec9316fe64aee658c92072012.jpg',
  'https://carwow-uk-wp-3.imgix.net/18015-MC20BluInfinito-scaled-e1666008987698.jpg',
  'https://assets.mspimages.in/gear/wp-content/uploads/2023/01/Bugati.png',
  'https://autobizz.in/wp-content/uploads/2022/03/ImageResizer.ashx_.jpg',
  'https://img.freepik.com/premium-photo/concept-car-future_481747-2734.jpg',
  'https://img.freepik.com/premium-photo/futuristic-sports-car-neon-highway-power-ai-generative_407474-8552.jpg',

  'https://autobizz.in/wp-content/uploads/2022/03/ImageResizer.ashx_.jpg',
  'https://w0.peakpx.com/wallpaper/676/665/HD-wallpaper-bmw-m5-auto-car-competition-f90-m-power-sedan-vehicle.jpg',
  'https://carwow-uk-wp-3.imgix.net/18015-MC20BluInfinito-scaled-e1666008987698.jpg',
  'https://assets.mspimages.in/gear/wp-content/uploads/2023/01/Bugati.png',
  'https://autobizz.in/wp-content/uploads/2022/03/ImageResizer.ashx_.jpg',
  'https://img.freepik.com/premium-photo/concept-car-future_481747-2734.jpg',
  'https://img.freepik.com/premium-photo/futuristic-sports-car-neon-highway-power-ai-generative_407474-8552.jpg', //
  'https://i.pinimg.com/736x/a6/11/41/a611411ec9316fe64aee658c92072012.jpg',
  'https://carwow-uk-wp-3.imgix.net/18015-MC20BluInfinito-scaled-e1666008987698.jpg',
  'https://assets.mspimages.in/gear/wp-content/uploads/2023/01/Bugati.png',
  'https://autobizz.in/wp-content/uploads/2022/03/ImageResizer.ashx_.jpg',
  'https://img.freepik.com/premium-photo/concept-car-future_481747-2734.jpg',
  'https://img.freepik.com/premium-photo/futuristic-sports-car-neon-highway-power-ai-generative_407474-8552.jpg', //
  // 'https://i.pinimg.com/736x/a6/11/41/a611411ec9316fe64aee658c92072012.jpg',
];

var myData = [
  'My Game Booster',
  'My Boy',
  'New',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
];

var names = [
  'Your story',
  'Faizal',
  'Rahul',
  'Shan',
  'Adithya',
  "I'm_Reshma_Akka",
  'Shahanas',
  'Amal',
  'Akhil',
  'Sajin',
  'Ashik',
  'Akshai',
  'Optimuz',
  'Rijoy',
  'Faizal',
  'Rahul',
  'Shan',
  'Adithya',
  "I'm_Reshma_Akka",
  'Shahanas',
  'Amal',
  'Akhil',
  'Sajin',
  'Ashik',
  'Akshai',
  'Optimuz',
];

var comment = [
  ' I love Cars 💕',
  ' Cars are the best 💯',
  ' 🙏 Dont Pray for Love\nOnly for Cars 🙏',
  ' ♥️ Go Ride ♥️',
  ' ❤️‍🔥 Happy With My Car 💢',
  ' Dont Panic',
  ' Best Moments',
  ' Dont Forgive',
  ' Never Give Up',
  ' I am No 1',
  ' Top 10',
  ' Hungry!!!',
  ' UnForgettable moments',
  ' I love Cars 💕',
  ' Cars are the best 💯',
  ' 🙏 Dont Pray for Love\nOnly for Cars 🙏',
  ' ♥️ Go Ride ♥️',
  ' ❤️‍🔥 Happy With My Car 💢',
  ' Dont Panic',
  ' Best Moments',
  ' Dont Forgive',
  ' Never Give Up',
  ' I am No 1',
  ' Top 10',
  ' Hungry!!!',
  ' UnForgettable moments',
];

List<Map<String, dynamic>> personDatas = [
  {'name': 'Samsung'},
  {'name': 'iPhone'},
  {'name': 'One_Plus'},
  {
    'name': 'Brototype',
    'subtitle': 'Brototype',
    'pics':
        'https://cdn.pixabay.com/photo/2014/09/07/21/58/cyborg-438398_640.jpg',
  },
  {
    'name': 'callmeshazzam',
    'subtitle': 'Shaz Mohamed',
    'subtext': '2 new posts 🔵',
    'pics':
        'https://cdn.pixabay.com/photo/2019/05/14/16/07/young-4202743_1280.jpg',
  },
  {
    'name': 'mich_koco',
    'subtitle': 'mich',
    'subtext': '8 new posts',
    'pics':
        'https://cdn.pixabay.com/photo/2016/10/02/19/50/brain-1710293_640.png',
  },
];

List<Map<String, dynamic>> lisOfDatas = [
  {
    'names': 'BMW India',
    'picture':
        'https://cdn.pixabay.com/photo/2016/08/15/18/18/bmw-1596080_1280.png',
    'follower1': 'Audi India',
    'follower2': 'Dodge',
    'followerpic1':
        'https://cdn.pixabay.com/photo/2020/05/12/06/32/forza-horizon-4-5161489_640.jpg',
    'followerpic2':
        'https://cdn.pixabay.com/photo/2023/04/29/08/43/automobile-7958065_640.jpg',
  },
  {
    'names': '_car_bhakthan_007',
    'picture':
        'https://carwow-uk-wp-3.imgix.net/18015-MC20BluInfinito-scaled-e1666008987698.jpg',
    'follower1': 'Faizal',
    'follower2': 'Reshma',
    'followerpic1':
        'https://w0.peakpx.com/wallpaper/676/665/HD-wallpaper-bmw-m5-auto-car-competition-f90-m-power-sedan-vehicle.jpg',
    'followerpic2':
        'https://s1.cdn.autoevolution.com/images/news/brian-s-r34-skyline-gt-r-gets-supra-orange-widebody-look-in-furious-rendering-158365-7.jpg'
  },
  {
    'names': '_sky_line_R34_',
    'picture':
        'https://s1.cdn.autoevolution.com/images/news/brian-s-r34-skyline-gt-r-gets-supra-orange-widebody-look-in-furious-rendering-158365-7.jpg',
    'follower1': 'Rahul',
    'follower2': 'Adithya',
    'followerpic1':
        'https://carwow-uk-wp-3.imgix.net/18015-MC20BluInfinito-scaled-e1666008987698.jpg',
    'followerpic2':
        'https://cdn.pixabay.com/photo/2017/04/23/16/47/sports-car-2254265_640.jpg',
  },
  {
    'names': '_the_mustang_kid_',
    'picture':
        'https://cdn.pixabay.com/photo/2017/04/23/16/47/sports-car-2254265_640.jpg',
    'follower1': 'Shan',
    'follower2': 'Akhil',
    'followerpic1':
        'https://assets.mspimages.in/gear/wp-content/uploads/2023/01/Bugati.png',
    'followerpic2':
        'https://cdn.pixabay.com/photo/2019/10/19/03/50/bmw-4560531_640.jpg',
  },
  {
    'names': 'B_M_W_rockey_',
    'picture':
        'https://cdn.pixabay.com/photo/2019/10/19/03/50/bmw-4560531_640.jpg',
    'follower1': 'Akshai',
    'follower2': 'Amal',
    'followerpic1':
        'https://autobizz.in/wp-content/uploads/2022/03/ImageResizer.ashx_.jpg',
    'followerpic2':
        'https://carwow-uk-wp-3.imgix.net/18015-MC20BluInfinito-scaled-e1666008987698.jpg',
  },

  {
    'names': '_Racer_kid_',
    'picture':
        'https://cdn.pixabay.com/photo/2014/09/07/22/34/car-race-438467_640.jpg',
    'follower1': '_iAm_Abinandh_',
    'follower2': 'Rockey',
    'followerpic1':
        'https://cdn.pixabay.com/photo/2017/12/28/23/41/car-3046424_640.jpg',
    'followerpic2':
        'https://cdn.pixabay.com/photo/2016/07/27/00/58/car-1544342_640.jpg',
  },

  ///
  {
    'names': '_the_Rider_King_',
    'picture':
        'https://cdn.pixabay.com/photo/2016/04/21/22/49/suv-1344716_640.jpg',
    'follower1': 'Akshai',
    'follower2': 'Amal',
    'followerpic1':
        'https://cdn.pixabay.com/photo/2016/03/23/07/44/bmw-1274292_640.jpg',
    'followerpic2':
        'https://carwow-uk-wp-3.imgix.net/18015-MC20BluInfinito-scaled-e1666008987698.jpg',
  },
  {
    'names': "_i'm_rider_",
    'picture':
        'https://cdn.pixabay.com/photo/2016/07/28/00/05/auto-1546749_640.jpg',
    'follower1': 'Akshai',
    'follower2': 'Amal',
    'followerpic1':
        'https://autobizz.in/wp-content/uploads/2022/03/ImageResizer.ashx_.jpg',
    'followerpic2':
        'https://carwow-uk-wp-3.imgix.net/18015-MC20BluInfinito-scaled-e1666008987698.jpg',
  },
];

//  'comment':'I like cars and they are awesome.',

List addPics = [
  'https://cdn.pixabay.com/photo/2019/07/07/14/03/fiat-500-4322521_1280.jpg',
  'https://cdn.pixabay.com/photo/2017/09/01/20/23/ford-2705402_640.jpg',
  'https://cdn.pixabay.com/photo/2014/09/07/22/34/car-race-438467_640.jpg',
  'https://cdn.pixabay.com/photo/2015/05/28/23/12/auto-788747_640.jpg',
  'https://cdn.pixabay.com/photo/2012/11/02/13/02/car-63930_640.jpg',
  'https://cdn.pixabay.com/photo/2016/04/01/12/16/car-1300629_640.png',
  'https://cdn.pixabay.com/photo/2017/03/27/14/56/auto-2179220_640.jpg',
  'https://cdn.pixabay.com/photo/2017/12/28/23/41/car-3046424_640.jpg',
  'https://cdn.pixabay.com/photo/2015/08/13/17/24/vintage-1950s-887273_640.jpg',
  'https://cdn.pixabay.com/photo/2016/03/11/02/08/speedometer-1249610_640.jpg',
  'https://cdn.pixabay.com/photo/2020/07/19/09/55/man-5419522_640.jpg',
  'https://cdn.pixabay.com/photo/2019/07/24/23/09/car-4361321_640.jpg',
  'https://cdn.pixabay.com/photo/2020/09/06/07/37/car-5548242_640.jpg',
  'https://cdn.pixabay.com/photo/2016/07/27/00/58/car-1544342_640.jpg',
  'https://cdn.pixabay.com/photo/2017/11/04/17/13/ferrari-360-2918130_640.jpg',
  'https://cdn.pixabay.com/photo/2015/06/20/13/55/man-815795_640.jpg',
  'https://cdn.pixabay.com/photo/2016/09/06/13/37/maserati-gran-turismo-1649119_640.jpg',
  'https://cdn.pixabay.com/photo/2017/03/17/11/50/car-2151324_640.jpg',
  'https://cdn.pixabay.com/photo/2016/11/19/11/26/automotive-1838744_640.jpg',
  'https://cdn.pixabay.com/photo/2016/11/18/12/52/automobile-1834278_640.jpg',
  'https://cdn.pixabay.com/photo/2018/02/21/03/15/bmw-m4-3169357_640.jpg',
  'https://cdn.pixabay.com/photo/2015/09/04/23/09/bmw-923028_640.jpg',
  'https://cdn.pixabay.com/photo/2016/03/26/22/51/car-1281697_640.jpg',
  'https://cdn.pixabay.com/photo/2015/11/30/12/50/auto-1070251_640.jpg',
  'https://cdn.pixabay.com/photo/2016/04/21/22/49/suv-1344716_640.jpg',
  'https://cdn.pixabay.com/photo/2016/03/23/07/44/bmw-1274292_640.jpg',
  'https://cdn.pixabay.com/photo/2016/04/24/10/48/sports-car-1349139_640.jpg',
  'https://cdn.pixabay.com/photo/2018/07/12/16/05/bmw-3533813_640.jpg',
  'https://cdn.pixabay.com/photo/2016/07/28/00/05/auto-1546749_640.jpg',
  'https://cdn.pixabay.com/photo/2016/05/02/23/44/bmw-1368280_640.jpg',
];

List<Map<String, dynamic>> statusItems = [
  {
    'name': '_iam_the_legend',
    'pics':
        'https://cdn.pixabay.com/photo/2020/07/19/09/55/man-5419522_640.jpg',
  },
  {
    'name': '_the_dodge_kid',
    'pics':
        'https://cdn.pixabay.com/photo/2017/09/01/20/23/ford-2705402_640.jpg'
  },
  {
    'name': '_dream_rider_',
    'pics':
        'https://cdn.pixabay.com/photo/2014/09/07/22/34/car-race-438467_640.jpg'
  },
  {
    'name': '_pro_gamier_',
    'pics': 'https://cdn.pixabay.com/photo/2015/05/28/23/12/auto-788747_640.jpg'
  },
  {
    'name': 'kaztro_yt',
    'pics': 'https://cdn.pixabay.com/photo/2012/11/02/13/02/car-63930_640.jpg'
  },
  {
    'name': 'psyco_boy',
    'pics': 'https://cdn.pixabay.com/photo/2016/04/01/12/16/car-1300629_640.png'
  },
  {
    'name': '_blind_king_',
    'pics':
        'https://cdn.pixabay.com/photo/2017/03/27/14/56/auto-2179220_640.jpg'
  },
  {
    'name': 'mrz_thoppi',
    'pics':
        'https://cdn.pixabay.com/photo/2016/05/02/23/43/acronym-bmw-1368279_640.jpg'
  },
  {
    'name': 'optimuz_prime',
    'pics':
        'https://cdn.pixabay.com/photo/2016/03/11/02/08/speedometer-1249610_640.jpg'
  },
  {
    'name': 'bumble_bee',
    'pics':
        'https://cdn.pixabay.com/photo/2019/07/07/14/03/fiat-500-4322521_1280.jpg'
  },
  {
    'name': 'rockey_bhai',
    'pics': 'https://cdn.pixabay.com/photo/2019/07/24/23/09/car-4361321_640.jpg'
  },
  {
    'name': 'path_finder',
    'pics': 'https://cdn.pixabay.com/photo/2020/09/06/07/37/car-5548242_640.jpg'
  },
  {
    'name': 'ayinu_legend',
    'pics': 'https://cdn.pixabay.com/photo/2016/07/27/00/58/car-1544342_640.jpg'
  },
  {
    'name': 'm4_tech',
    'pics':
        'https://cdn.pixabay.com/photo/2017/11/04/17/13/ferrari-360-2918130_640.jpg'
  },
  {
    'name': 'tech_wiser',
    'pics': 'https://cdn.pixabay.com/photo/2015/06/20/13/55/man-815795_640.jpg'
  },
  {
    'name': '_mich_coco_',
    'pics':
        'https://cdn.pixabay.com/photo/2016/09/06/13/37/maserati-gran-turismo-1649119_640.jpg'
  },
  {
    'name': 'trolly_words',
    'pics': 'https://cdn.pixabay.com/photo/2017/03/17/11/50/car-2151324_640.jpg'
  },
  {
    'name': 'the_dark_rider',
    'pics':
        'https://cdn.pixabay.com/photo/2016/11/19/11/26/automotive-1838744_640.jpg'
  },
];

List uploads = [
  'https://cdn.pixabay.com/photo/2019/07/07/14/03/fiat-500-4322521_1280.jpg',
  'https://cdn.pixabay.com/photo/2017/09/01/20/23/ford-2705402_640.jpg',
  'https://cdn.pixabay.com/photo/2014/09/07/22/34/car-race-438467_640.jpg',
  'https://cdn.pixabay.com/photo/2015/05/28/23/12/auto-788747_640.jpg',
  'https://cdn.pixabay.com/photo/2012/11/02/13/02/car-63930_640.jpg',
  'https://cdn.pixabay.com/photo/2016/04/01/12/16/car-1300629_640.png',
  'https://cdn.pixabay.com/photo/2017/03/27/14/56/auto-2179220_640.jpg',
  'https://cdn.pixabay.com/photo/2017/12/28/23/41/car-3046424_640.jpg',
  'https://cdn.pixabay.com/photo/2015/08/13/17/24/vintage-1950s-887273_640.jpg',
  'https://cdn.pixabay.com/photo/2016/03/11/02/08/speedometer-1249610_640.jpg',
  'https://cdn.pixabay.com/photo/2020/07/19/09/55/man-5419522_640.jpg',
  'https://cdn.pixabay.com/photo/2019/07/24/23/09/car-4361321_640.jpg',
  'https://cdn.pixabay.com/photo/2020/09/06/07/37/car-5548242_640.jpg',
  'https://cdn.pixabay.com/photo/2016/07/27/00/58/car-1544342_640.jpg',
  'https://cdn.pixabay.com/photo/2017/11/04/17/13/ferrari-360-2918130_640.jpg',
  'https://cdn.pixabay.com/photo/2015/06/20/13/55/man-815795_640.jpg',
  'https://cdn.pixabay.com/photo/2016/09/06/13/37/maserati-gran-turismo-1649119_640.jpg',
  'https://cdn.pixabay.com/photo/2017/03/17/11/50/car-2151324_640.jpg',
  'https://cdn.pixabay.com/photo/2016/11/19/11/26/automotive-1838744_640.jpg',
  'https://cdn.pixabay.com/photo/2016/11/18/12/52/automobile-1834278_640.jpg',
  'https://cdn.pixabay.com/photo/2018/02/21/03/15/bmw-m4-3169357_640.jpg',
  'https://cdn.pixabay.com/photo/2015/09/04/23/09/bmw-923028_640.jpg',
  'https://cdn.pixabay.com/photo/2016/03/26/22/51/car-1281697_640.jpg',
  'https://cdn.pixabay.com/photo/2015/11/30/12/50/auto-1070251_640.jpg',
  'https://cdn.pixabay.com/photo/2016/04/21/22/49/suv-1344716_640.jpg',
  'https://cdn.pixabay.com/photo/2016/03/23/07/44/bmw-1274292_640.jpg',
  'https://cdn.pixabay.com/photo/2016/04/24/10/48/sports-car-1349139_640.jpg',
  'https://cdn.pixabay.com/photo/2018/07/12/16/05/bmw-3533813_640.jpg',
  'https://cdn.pixabay.com/photo/2016/07/28/00/05/auto-1546749_640.jpg',
  'https://cdn.pixabay.com/photo/2016/05/02/23/44/bmw-1368280_640.jpg',
  'https://w0.peakpx.com/wallpaper/676/665/HD-wallpaper-bmw-m5-auto-car-competition-f90-m-power-sedan-vehicle.jpg',
  'https://carwow-uk-wp-3.imgix.net/18015-MC20BluInfinito-scaled-e1666008987698.jpg',
  'https://assets.mspimages.in/gear/wp-content/uploads/2023/01/Bugati.png',
  'https://autobizz.in/wp-content/uploads/2022/03/ImageResizer.ashx_.jpg',
  'https://img.freepik.com/premium-photo/concept-car-future_481747-2734.jpg',
  'https://img.freepik.com/premium-photo/futuristic-sports-car-neon-highway-power-ai-generative_407474-8552.jpg', //
  'https://i.pinimg.com/736x/a6/11/41/a611411ec9316fe64aee658c92072012.jpg',
  'https://carwow-uk-wp-3.imgix.net/18015-MC20BluInfinito-scaled-e1666008987698.jpg',
  'https://assets.mspimages.in/gear/wp-content/uploads/2023/01/Bugati.png',
  'https://autobizz.in/wp-content/uploads/2022/03/ImageResizer.ashx_.jpg',
  'https://img.freepik.com/premium-photo/concept-car-future_481747-2734.jpg'
];
