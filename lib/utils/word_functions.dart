String days(int count){
  final int remainder = count % 10;
  if(count%100 != 11 && count%100 != 12 && count%100 != 13 && count%100 != 14){
    if(remainder == 1) {
      return 'день';
    }
    else {
      if (remainder >= 2 && remainder <= 4) {
        return 'дня';
      }
      else{
        return 'дней';
      }
    }
  }
  else{
      return 'дней';
  }
}

String patient(int count){
  final int remainder = count % 10;
  if(count%100 != 11 && count%100 != 12 && count%100 != 13 && count%100 != 14){
    if(remainder == 1) {
      return 'пациент';
    }
    else {
      if (remainder >= 2 && remainder <= 4) {
        return 'пациента';
      }
      else{
        return 'пациентов';
      }
    }
  }
  else{
    return 'пациентов';
  }
}