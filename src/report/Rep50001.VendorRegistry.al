report 50001 "Vendor Registry"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    // DefaultRenderingLayout = LayoutName;
    DefaultLayout = RDLC;
    RDLCLayout = 'VendorRegistry.rdl';

    dataset
    {
        dataitem(DataItemName; Vendor)
        {
            column(No_; "No.")
            {

            }
            column(Name; Name)
            {

            }
            column(E_Mail; "E-Mail")
            {

            }
            column(Balance__LCY_; "Balance (LCY)")
            {

            }

            dataitem("Purch. Inv. Header"; "Purch. Inv. Header")
            {
                DataItemLink = "Pay-to Vendor No." = field("No.");

            }

        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(Licensed; Licensed)
                    {

                    }
                    field(initi; initi)
                    {

                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    // rendering
    // {
    //     layout(LayoutName)
    //     {
    //         Type = RDLC;
    //         LayoutFile = 'mylayout.rdl';
    //     }
    // }
    trigger OnPreReport()
    var
        myInt: Integer;
    begin
        if Licensed = true then Message('all are licensed');
    end;

    trigger OnInitReport()
    var
        myInt: Integer;
    begin
        if initi = true then Message('On init trigger has been fired');
    end;

    var
        myInt: Integer;
        Licensed: Boolean;
        initi: Boolean;
}