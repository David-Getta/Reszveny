import 'package:flutter/material.dart';

import '../../../core/models/financial_statements.dart';
import '../../../core/util/formatters.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../../theme/app_theme.dart';

/// Éves kimutatások táblázata: sorok a tételek, oszlopok az évek.
class StatementsTable extends StatelessWidget {
  const StatementsTable({super.key, required this.statements, required this.fmt, this.currency});

  final FinancialStatements statements;
  final Fmt fmt;
  final String? currency;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = AppPalette.of(context);
    final theme = Theme.of(context);
    final years = statements.years;
    final rows = <(String, double? Function(AnnualFinancials))>[
      (l10n.labelRevenue, (y) => y.revenue),
      (l10n.labelNetIncome, (y) => y.netIncome),
      (l10n.labelTotalAssets, (y) => y.totalAssets),
      (l10n.labelTotalLiabilities, (y) => y.totalLiabilities),
      (l10n.labelEquity, (y) => y.equity),
      (l10n.labelOperatingCashFlow, (y) => y.operatingCashFlow),
    ];
    final headStyle = theme.textTheme.bodySmall?.copyWith(color: p.muted, fontWeight: FontWeight.w600);
    final cellStyle = theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columnSpacing: 20,
        horizontalMargin: 4,
        headingRowHeight: 36,
        dataRowMinHeight: 36,
        dataRowMaxHeight: 40,
        dividerThickness: 0.5,
        columns: [
          DataColumn(label: Text(l10n.labelFiscalYear, style: headStyle)),
          for (final y in years) DataColumn(label: Text('${y.fiscalYear}', style: headStyle), numeric: true),
        ],
        rows: [
          for (final (label, get) in rows)
            DataRow(
              cells: [
                DataCell(Text(label, style: theme.textTheme.bodyMedium?.copyWith(color: p.muted))),
                for (final y in years)
                  DataCell(
                    Text(fmt.compact(get(y)), style: cellStyle?.copyWith(color: (get(y) ?? 0) < 0 ? p.negative : null)),
                  ),
              ],
            ),
        ],
      ),
    );
  }
}
