import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/scan_list_provider.dart';

class ScanButtom extends StatelessWidget {
  const ScanButtom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 10,
      onPressed: () async {
        String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#3D8BEF',
          'Cancelar',
          false,
          ScanMode.QR,
        );
        //const barcodeScanRes = 'https://fernando-herrera.com';
        final scanListProvider =
            // ignore: use_build_context_synchronously
            Provider.of<ScanListProvider>(context, listen: false);
        // ignore: unused_local_variable
        final nuevoScan = await scanListProvider.nuevoScan(barcodeScanRes);
        //scanListProvider.nuevoScan('geo:15.33,15.66');
      },
      child: const Icon(Icons.filter_center_focus),
    );
  }
}
