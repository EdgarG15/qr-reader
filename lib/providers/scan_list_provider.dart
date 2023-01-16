import 'package:flutter/widgets.dart';
import 'package:qr_reader/providers/db_provider.dart';

class ScanListProvider extends ChangeNotifier {
  List<ScanModel> scans = [];
  String tipoSeleccionado = 'http';

  nuevoScan(String valor) async {
    final nuevoScan = ScanModel(valor: valor);
    final id = await DBProvider.db.nuevoScan(nuevoScan);
    //Asignacion del id de la base de datos
    nuevoScan.id = id;
    if (tipoSeleccionado == nuevoScan.tipo) {
      scans.add(nuevoScan);
    }
    notifyListeners();
  }

  cargarScans() async {
    var scans = await DBProvider.db.getEveryone();
    scans = [...scans];
    notifyListeners();
  }

  cargarScansPorTipo(String tipo) async {
    var scans = await DBProvider.db.getTipo(tipo);
    scans = [...scans];
    tipoSeleccionado = tipo;
    notifyListeners();
  }

  borrarTodos() async {
    await DBProvider.db.deleteAll();
    scans = [];
    notifyListeners();
  }

  borrarScanPorId(int id) async {
    await DBProvider.db.deleteScan(id);
    cargarScansPorTipo(tipoSeleccionado);
    notifyListeners();
  }
}
