#property script_show_inputs

input int MILLISECONDS = 1000;

int OnStart()
{
    for (;;) {
        Print("ChartSetSymbolPeriod(0, NULL, ", Period(), ") => ",
                ChartSetSymbolPeriod(0, NULL, Period()));

        Sleep(MILLISECONDS);
    }

    return 0;
}
