import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class KPIDataSource extends DataGridSource {
  List<DataGridRow> _kpiData = [];
  int? selectedRowIndex;

  KPIDataSource() {
    _kpiData = _generateKPIData();
  }

  List<DataGridRow> _generateKPIData() {
    List<DataGridRow> rows = [];
    
    // Add department rows
    _addDepartmentRow(rows, 'Üretim', 'İstanbul', 156);
    _addDepartmentRow(rows, 'Lojistik', 'Ankara', 142);
    _addDepartmentRow(rows, 'Bakım', 'İzmir', 168);
    _addDepartmentRow(rows, 'Kalite', 'Bursa', 134);
    _addDepartmentRow(rows, 'İdari', 'Antalya', 145);
    
    // Add total row
    rows.add(_generateTotalRow());
    
    return rows;
  }

  void _addDepartmentRow(List<DataGridRow> rows, String department, String location, int baseHours) {
    final List<int> monthlyHours = List.generate(12, (index) => 17 + (index % 9));
    final int total = monthlyHours.reduce((a, b) => a + b);
    
    rows.add(DataGridRow(cells: [
      DataGridCell<String>(columnName: 'department', value: department),
      DataGridCell<String>(columnName: 'location', value: location),
      ...List.generate(12, (index) => 
        DataGridCell<int>(columnName: 'month${index + 1}', value: monthlyHours[index])),
      DataGridCell<int>(columnName: 'total', value: total),
    ]));
  }

  DataGridRow _generateTotalRow() {
    return DataGridRow(cells: [
      DataGridCell<String>(columnName: 'department', value: ''),
      DataGridCell<String>(columnName: 'location', value: 'Aylık Toplam'),
      ...List.generate(12, (index) => 
        DataGridCell<int>(columnName: 'month${index + 1}', value: 105)),
      DataGridCell<int>(columnName: 'total', value: 1260),
    ]);
  }

  @override
  List<DataGridRow> get rows => _kpiData;

  @override
  DataGridCell getCell(int rowIndex, String columnName) {
    return _kpiData[rowIndex].getCells().firstWhere((cell) => cell.columnName == columnName);
  }

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    bool isLastRow = rows.indexOf(row) == rows.length - 1;
    bool isSelected = rows.indexOf(row) == selectedRowIndex;
    
    return DataGridRowAdapter(
      color: isSelected ? const Color(0xFFAD1457).withValues(alpha: 0.2) : null,
      cells: row.getCells().map<Widget>((cell) {
        // Define different text styles based on column
        TextStyle cellStyle;
        if (cell.columnName == 'department') {
          cellStyle = GoogleFonts.inter(
            color: const Color(0xFFB39DDB).withValues(alpha: 0.95), // Soft purple
            fontSize: 13,
            fontWeight: isLastRow ? FontWeight.bold : FontWeight.w600,
          );
        } else if (cell.columnName == 'location') {
          cellStyle = GoogleFonts.inter(
            color: const Color(0xFF4DD0E1).withValues(alpha: 0.95), // Cyan
            fontSize: 13,
            fontWeight: isLastRow ? FontWeight.bold : FontWeight.w600,
          );
        } else if (cell.columnName == 'total') {
          cellStyle = GoogleFonts.inter(
            color: const Color(0xFFFFD54F).withValues(alpha: 0.95), // Gold
            fontSize: 13,
            fontWeight: FontWeight.w600,
          );
        } else {
          cellStyle = GoogleFonts.inter(
            color: Colors.white.withValues(alpha: 0.85),
            fontSize: 13,
            fontWeight: isLastRow ? FontWeight.bold : FontWeight.normal,
          );
        }

        return MouseRegion(
          onEnter: (_) => notifyListeners(),
          onExit: (_) => notifyListeners(),
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
            decoration: BoxDecoration(
              color: isSelected ? const Color(0xFFAD1457).withValues(alpha: 0.2) : null,
              border: Border(
                right: BorderSide(
                  color: Colors.white.withValues(alpha: 0.1),
                  width: 1,
                ),
                bottom: BorderSide(
                  color: Colors.white.withValues(alpha: 0.1),
                  width: 1,
                ),
              ),
            ),
            child: Text(
              cell.value.toString(),
              style: cellStyle,
            ),
          ),
        );
      }).toList()
    );
  }
}

class KPITable extends StatefulWidget {
  final bool isCollapsed;
  final VoidCallback onToggleCollapse;

  const KPITable({
    super.key,
    required this.isCollapsed,
    required this.onToggleCollapse,
  });

  @override
  State<KPITable> createState() => _KPITableState();
}

class _KPITableState extends State<KPITable> {
  final KPIDataSource _dataSource = KPIDataSource();

  Widget _buildColumnHeader(String text) {
    final TextStyle headerStyle = GoogleFonts.inter(
      color: Colors.white.withValues(alpha: 0.7),
      fontSize: 13,
      fontWeight: FontWeight.w500,
    );

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      child: Text(
        text,
        style: headerStyle,
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  List<GridColumn> _buildColumns() {
    return [
      GridColumn(
        columnName: 'department',
        width: 120,
        allowSorting: false,
        label: _buildColumnHeader('İş Birimi'),
      ),
      GridColumn(
        columnName: 'location',
        width: 120,
        allowSorting: false,
        label: _buildColumnHeader('Lokasyon'),
      ),
      ...List.generate(
        12,
        (index) => GridColumn(
          columnName: 'month${index + 1}',
          width: 100,
          allowSorting: false,
          label: _buildColumnHeader(_getMonthName(index)),
        ),
      ),
      GridColumn(
        columnName: 'total',
        width: 120,
        allowSorting: false,
        label: _buildColumnHeader('Toplam'),
      ),
    ];
  }

  String _getMonthName(int index) {
    const months = [
      'Ocak', 'Şubat', 'Mart', 'Nisan', 'Mayıs', 'Haziran',
      'Temmuz', 'Ağustos', 'Eylül', 'Ekim', 'Kasım', 'Aralık'
    ];
    return months[index];
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isCollapsed) {
      return const SizedBox.shrink();
    }

    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF2A2D3E),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: SfDataGrid(
        source: _dataSource,
        columns: _buildColumns(),
        gridLinesVisibility: GridLinesVisibility.both,
        headerGridLinesVisibility: GridLinesVisibility.both,
        columnWidthMode: ColumnWidthMode.none,
        rowHeight: 45,
        headerRowHeight: 40,
        frozenColumnsCount: 2,
        selectionMode: SelectionMode.single,
        navigationMode: GridNavigationMode.row,
        defaultColumnWidth: 80,
        onCellTap: (details) {
          if (details.rowColumnIndex.rowIndex - 1 < _dataSource.rows.length - 1) {
            setState(() {
              _dataSource.selectedRowIndex = details.rowColumnIndex.rowIndex - 1;
              _dataSource.notifyListeners();
            });
          }
        },
      ),
    );
  }
}

class DataGridStyle {
  final Color headerColor;
  final Color cellColor;
  final Color gridLineColor;
  final TextStyle headerTextStyle;
  final TextStyle cellTextStyle;

  const DataGridStyle({
    required this.headerColor,
    required this.cellColor,
    required this.gridLineColor,
    required this.headerTextStyle,
    required this.cellTextStyle,
  });
}