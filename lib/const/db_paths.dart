class DbPaths {
  static String authority = 'ite-ensenada-default-rtdb.firebaseio.com';
  static List<String> _unencodedPaths = [
    '/career/administracion.json',
    '/career/electromecanica.json',
    '/career/electronica.json',
    '/career/gestion.json',
    '/career/industrial.json',
    '/career/mecatronica.json',
    '/career/sistemas.json',
  ];
  static String getUnencodedPath(Enum career) {
    return _unencodedPaths[career.index];
  }
}
