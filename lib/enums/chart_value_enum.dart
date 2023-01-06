enum ChartValueEnum {
  CARBONMONO,
  NITROGENOXIDE,
  NITROGENDIOXIDE,
  SULPHURDIOXIDE,
  PARTICULATEMATTER,

}

extension ChartEnumExtension on ChartValueEnum {

  String get name {
    switch (this) {
      case ChartValueEnum.CARBONMONO:
        return 'Carbon Monooxide';
      case ChartValueEnum.NITROGENOXIDE:
        return 'Nitrogen Oxide';
      case ChartValueEnum.NITROGENDIOXIDE:
        return 'Nitrogen DiOxide';
      case ChartValueEnum.SULPHURDIOXIDE:
        return 'Sulphur DiOxide';
      case ChartValueEnum.PARTICULATEMATTER:
        return 'Particulate Matter';
    }
  }

  void talk() {
    print('meow');
  }
}