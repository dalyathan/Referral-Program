// ignore_for_file: file_names
class DummyGraphData {
  static List<String> periods = [
    'Today',
    'Last Week',
    'This Month',
  ];
  static Map<String, String> get(String period) {
    return {
      periods[0]: {
        "12 AM": "850",
        "3 AM": "920",
        "6 AM": "480",
        "9 AM": "1060",
        "12 PM": "609",
        "3 PM": "190",
        "6 PM": "470",
        "9 PM": "780",
      },
      periods[1]: {
        'Sat': '410',
        'Sun': '170',
        'Mon': '567',
        'Tue': '190',
        'Wed': '210',
        'Thu': '190',
        'Fri': '105'
      },
      periods[2]: {
        "Week 1": "1700",
        "Week 2": "2400",
        "Week 3": "1800",
        "Week 4": "1800",
      }
    }[period]!;
  }
}
