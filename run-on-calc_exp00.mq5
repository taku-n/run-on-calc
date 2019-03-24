#include <Charts/Chart.mqh>
#include <Trade/SymbolInfo.mqh>

void OnStart()
{
    CSymbolInfo *c_symbol_info = new CSymbolInfo();

    c_symbol_info.Name("EURUSD");

    //c_symbol_info.Refresh();
    Print("RefreshRates() => ", c_symbol_info.RefreshRates());

    delete c_symbol_info;

    CChart *c_chart = new CChart();
    c_chart.Attach();

    Print("ChartId() => ", c_chart.ChartId());

    Print("Mode(CHART_LINE) => ", c_chart.Mode(CHART_LINE));
    Print("Mode(CHART_CANDLES) => ", c_chart.Mode(CHART_CANDLES));

    ENUM_TIMEFRAMES enum_timeframes = c_chart.Period();

    for (;;) {
        //Print("SetSymbolPeriod => ", c_chart.SetSymbolPeriod(NULL, PERIOD_M2));
        Print("SetSymbolPeriod => ",
                c_chart.SetSymbolPeriod(NULL, enum_timeframes));
        Sleep(1000);
    }

    c_chart.Detach();
    delete c_chart;
}
