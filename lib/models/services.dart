class Service{
  String name;
  int dayCount;
  int price;

  Service(this.name, this.dayCount, this.price);
}

List<Service> services = [
  Service('ПЦР-тест на определение РНК коронавируса стандартный', 2, 1800),
  Service('Клинический анализ крови с лейкоцитарной формулировкой', 1, 690),
  Service('Биохимический анализ крови, базовый', 1, 2440),
  Service('Взятие крови из центральной вены', 3, 1500),
  Service('Магнитно-резонансная томография головного мозга', 5, 6800),
  Service('Продувание слуховой трубы', 1, 920),
  Service('Эпиляция ресниц', 1, 300)
];

List<Service> basket = [];
List<int> basketCount = [];