class ItePaths {
  static String authorityITE = 'ensenada.tecnm.mx';

  static List<String> _unencodedPathsCarrers = [
    '/lic-en-administracion/',
    '/ing-electromecanica/',
    '/ing-electronica/',
    '/ing-gestion-empresarial/',
    '/ing-industrial/',
    '/ing-mecatronica/',
    '/ing-sistemas-computacionales/',
  ];

  static String getUnencodeCarrers(Enum? career) {
    return career == null ? '' : _unencodedPathsCarrers[career.index];
  }
}
