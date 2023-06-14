import 'package:flutter/material.dart';
import './models/category.dart';
import './models/trip.dart';

const Categories_data = const [
  Category(
    id: 'c1',
    title: 'جبال',
    imageUrl:
        'https://images.unsplash.com/photo-1575728252059-db43d03fc2de?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTh8fG1vdW5hdGluc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=',
  ),
  Category(
    id: 'c2',
    title: 'بحيرات',
    imageUrl:
        'https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bGFrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),
  Category(
    id: 'c3',
    title: 'شواطىء',
    imageUrl:
        'https://images.unsplash.com/photo-1493558103817-58b2924bce98?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTAxfHxiZWFjaHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),
  Category(
    id: 'c4',
    title: 'صحارى',
    imageUrl:
        'https://images.unsplash.com/photo-1473580044384-7ba9967e16a0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8ZGVzZXJ0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),
  Category(
    id: 'c5',
    title: 'أماكن تاريخية',
    imageUrl:
        'https://images.unsplash.com/photo-1467269204594-9661b134dd2b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NjR8fHRyYXZlbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),
  Category(
    id: 'c6',
    title: 'متاحف',
    imageUrl:
        'https://images.unsplash.com/photo-1605540436563-5bca919ae766?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8c2tpaW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),
];

const Trips_data = const [
  Trip(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'جبل الطويلات',
    tripType: TripType.Exploration,
    season: Season.Summer,
    imageUrl:
        'https://images.unsplash.com/photo-1655580314492-434e80cce356?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1969&q=80',
    duration: 4,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'تناول الافطار البدوي ثم التسلق لقمة الجبل',
      'قضاء يوم كامل على سطح الجبل و الاستمتاع بالأنشطة البدوية و تناول الفطار و الغداء على الطريقة البدوية',
      'قضاء سهرة بدوية و الاستمتاع بالشواء و الأغاني',
      'زيارة السوق البدوية',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: false,
    price: '3000',
    Vprice: '5000',
    hotel: 'Hilton',
    Vhotel: 'MSV',
  ),
  Trip(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: 'جبل الطور ',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1586136024106-79e64b8d7e42?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8JUQ4JUFDJUQ4JUE4JUQ5JTg0JTIwJUQ4JUE3JUQ5JTg0JUQ4JUI3JUQ5JTg4JUQ4JUIxJTIwJUQ4JUIzJUQ5JThBJUQ5JTg2JUQ4JUE3JUQ4JUExfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
    duration: 3,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'الاقامة بفندق الأربعين و التحرك لزيارة وادي الأربعين ثم عمل سفاري مساء و العودة',
      'زيارة حجر موسى المحاط بسور من الحجارة',
      'زيارة دير سانت كاترين و مشاهدة المتعلقات التاريخية للملوك',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: true,
    price: '2500',
    Vprice: '4500',
    hotel: '',
    Vhotel: '',
  ),
  Trip(
    id: 'm3',
    categories: [
      'c1',
    ],
    title: 'جبال سانت كاترين',
    tripType: TripType.Recovery,
    season: Season.Summer,
    imageUrl:
        'https://cdn.elwatannews.com/watan/840x473/12243450791578637419.jpg',
    duration: 3,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'زيارة دير سانت كاترين و الكنيسة الأثرية  ',
      'تسلق الجبل و الاستمتاع بالثلج و المناظر الطبيعية',
      'عمل سفاري و رياضة التزحلق',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
    price: '2700',
    Vprice: '4700',
    hotel: '',
    Vhotel: '',
  ),
  Trip(
    id: 'm4',
    categories: [
      'c2',
    ],
    title: 'بحيرة قارون',
    tripType: TripType.Activities,
    season: Season.Summer,
    imageUrl:
        'https://static.srpcdigital.com/styles/1037xauto/public/2022/12/14/94974.jpg',
    duration: 4,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'زيارة بحيرة قارون',
      'زيارة محمية وادي الريان',
      'زيارة شلالات وادي الريان',
      'ممارسة رياضة التزحلق على الرمال',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: false,
    price: '3200',
    Vprice: '5200',
    hotel: '',
    Vhotel: '',
  ),
  Trip(
    id: 'm5',
    categories: [
      'c2',
    ],
    title: 'بحيرة ناصر',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/282146167.jpg?k=e7a3d776cba7fb7782b7776ee668cb3d9ededdcb7a52e4b67b58114e123016fa&o=&hp=1',
    duration: 3,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'جولة في بحيرة ناصر',
      'زيارة السد العالي',
      'زيارة خزان أسوان',
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
    price: '2600',
    Vprice: '4600',
    hotel: '',
    Vhotel: '',
  ),
  Trip(
    id: 'm6',
    categories: [
      'c2',
    ],
    title: 'بحيرة البرلس',
    tripType: TripType.Exploration,
    season: Season.Summer,
    imageUrl:
        'https://www.ootlah.com/wp-content/uploads/2022/06/6_0000_Shakhlouba-egypt.webp',
    duration: 2,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'جولة في بحيرة البرلس',
      'زيارة قرية الشخلوبة و الاستمتاع بالطبيعة',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: false,
    price: '1700',
    Vprice: '3700',
    hotel: '',
    Vhotel: '',
  ),
  Trip(
    id: 'm7',
    categories: [
      'c3',
    ],
    title: 'خليج نعمة',
    tripType: TripType.Exploration,
    season: Season.Summer,
    imageUrl:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/63/d3/00/spiaggia.jpg?w=1200&h=-1&s=1',
    duration: 3,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'نزول المياه الصافية و الاستمتاع بالشاطيء',
      'عمل سفاري و الغداء بالصحراء',
      'حضور حفلة بدوية',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
    price: '4000',
    Vprice: '6000',
    hotel: '',
    Vhotel: '',
  ),
  Trip(
    id: 'm8',
    categories: [
      'c3',
    ],
    title: 'خليج فيورد طابا',
    tripType: TripType.Recovery,
    season: Season.Summer,
    imageUrl:
        'https://voyagearabia.com/wp-content/uploads/2019/05/1-24-768x509.jpg',
    duration: 3,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'الاستمتاع بالمياه الصافية و التقاط الصور',
      'زيارة جبال و وديان طابا',
      'ممارسة السنوركلينج',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
    price: '5000',
    Vprice: '7000',
    hotel: '',
    Vhotel: '',
  ),
  Trip(
    id: 'm9',
    categories: [
      'c3',
    ],
    title: 'شاطىء عجيبة',
    tripType: TripType.Exploration,
    season: Season.Summer,
    imageUrl:
        'https://images.unsplash.com/photo-1519602035691-16ac091344ef?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjE1fHxiZWFjaHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 3,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'الاستمتاع بالمياه الصافية',
      'صعود جبل عجيبة',
      'زيارة الأماكن الأثرية المشهورة',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: false,
    price: '2650',
    Vprice: '4650',
    hotel: '',
    Vhotel: '',
  ),
  Trip(
    id: 'm10',
    categories: [
      'c4',
    ],
    title: 'صحراء الواحات البحرية',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/86/87/6a/bahariya-oasis.jpg?w=1100&h=-1&s=1',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'عمل سفاري و تناول الافطار و الغداء البدوي',
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
    price: '780',
    Vprice: '1000',
    hotel: '',
    Vhotel: '',
  ),
  Trip(
    id: 'm11',
    categories: [
      'c4',
    ],
    title: 'الصحراء البيضاء',
    tripType: TripType.Activities,
    season: Season.Summer,
    imageUrl:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/74/c9/68/white-desert.jpg?w=1200&h=-1&s=1',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'استكشاف الصحراء و عمل سفاري و تناول الغداء البدوي',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: false,
    price: '922',
    Vprice: '1250',
    hotel: '',
    Vhotel: '',
  ),
  Trip(
    id: 'm12',
    categories: [
      'c4',
    ],
    title: 'صحراء واحة سيوة',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/%D8%B9%D9%8A%D9%86_%D8%A7%D8%A8%D9%88_%D8%B4%D8%B1%D9%88%D9%81_%D9%88%D8%A7%D8%AD%D8%A9_%D8%B3%D9%8A%D9%88%D9%87.jpg/1280px-%D8%B9%D9%8A%D9%86_%D8%A7%D8%A8%D9%88_%D8%B4%D8%B1%D9%88%D9%81_%D9%88%D8%A7%D8%AD%D8%A9_%D8%B3%D9%8A%D9%88%D9%87.jpg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'استكشاف الصحراء و عمل سفاري و تناول الغداء البدوي و نزول مياه الواحة للاستشفاء',
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
    price: '592',
    Vprice: '975',
    hotel: '',
    Vhotel: '',
  ),
  Trip(
    id: 'm13',
    categories: [
      'c5',
    ],
    title: 'مجمع أهرامات الجيزة',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
        'https://cdn.alweb.com/thumbs/travel/article/fit710x532/%D8%A7%D9%84%D8%A3%D9%87%D8%B1%D8%A7%D9%85%D8%A7%D8%AA-%D8%A3%D9%87%D9%85-%D9%85%D8%B9%D9%84%D9%85-%D8%B3%D9%8A%D8%A7%D8%AD%D9%8A-%D8%B9%D9%84%D9%8A%D9%83-%D8%B2%D9%8A%D8%A7%D8%B1%D8%AA%D9%87-%D9%81%D9%8A-%D9%85%D8%B5%D8%B1.jpg',
    duration: 30,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
    price: '1500',
    Vprice: '2000',
    hotel: '',
    Vhotel: '',
  ),
  Trip(
    id: 'm14',
    categories: [
      'c5',
    ],
    title: 'المدينة الثانية',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1467269204594-9661b134dd2b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NjR8fHRyYXZlbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 30,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    price: '1500',
    Vprice: '',
    hotel: '',
    Vhotel: '',
  ),
  Trip(
    id: 'm15',
    categories: [
      'c5',
    ],
    title: 'المدينة القديمة',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1519923041107-e4dc8d9193da?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Njd8fG9sZCUyMGNpdHl8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 30,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    price: '1500',
    Vprice: '3500',
    hotel: '',
    Vhotel: '',
  ),
  Trip(
    id: 'm16',
    categories: [
      'c6',
    ],
    title: 'رياضة التثلج',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1605540436563-5bca919ae766?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8c2tpaW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 30,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    price: '1500',
    Vprice: '3500',
    hotel: '',
    Vhotel: '',
  ),
  Trip(
    id: 'm17',
    categories: [
      'c6',
    ],
    title: 'القفز المظلي',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1601024445121-e5b82f020549?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTJ8fHBhcmFjaHV0ZSUyMGp1bXBpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 30,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    price: '1500',
    Vprice: '3500',
    hotel: '',
    Vhotel: '',
  ),
];
