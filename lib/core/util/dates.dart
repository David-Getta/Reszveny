/// Naptári napok két nap között (a napszak nem számít): az óraátállítás napja 23
/// vagy 25 órás, ezért nem a helyi idők [Duration]-jéből, hanem UTC-napokból.
int calendarDaysBetween(DateTime from, DateTime to) =>
    DateTime.utc(to.year, to.month, to.day).difference(DateTime.utc(from.year, from.month, from.day)).inDays;
