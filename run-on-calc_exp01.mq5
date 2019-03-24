#include <Charts/Chart.mqh>

void OnStart()
{
    while (Period() != PERIOD_M2) {
        CChart *c_chart = new CChart();

        c_chart.Attach();

        Print("SetSymbolPeriod(NULL, ", c_chart.Period(), ") => ",
                c_chart.SetSymbolPeriod(NULL, c_chart.Period()));

        c_chart.Detach();

        Sleep(2000);

        delete c_chart;
    }
}
