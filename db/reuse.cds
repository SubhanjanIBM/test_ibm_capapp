namespace ibmcapapp.reuse;

type GUID: String(32);

// like strcuture in abap .APPEND str
aspect address{
    city: String(32);
    country: String(42);
    region: String(4);
}

