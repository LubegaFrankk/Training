report 50002 "Customer Registry"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    // DefaultRenderingLayout = LayoutName;
    DefaultLayout = RDLC;
    RDLCLayout = 'xyz.rdlc';


    dataset
    {
        dataitem(Customer; Customer)
        {
            column(No_; "No.")
            {

            }
            column(Name; Name)
            {

            }
            column(Amount_Customer; Amount)
            {
            }
            column(PhoneNo_Customer; "Phone No.")
            {
            }
            column(EMail_Customer; "E-Mail")
            {
            }

            dataitem("Sales Invoice Header"; "Sales Invoice Header")
            {
                DataItemLinkReference = Customer;
                DataItemLink = "Bill-to Customer No." = field("No.");
            }

            trigger OnAfterGetRecord()
            var
                myInt: Integer;
            begin

            end;

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
                    field(creditOnly; creditOnly)
                    {
                        ApplicationArea = All;

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

    var
        myInt: Integer;
        creditOnly: Boolean;

    trigger OnInitReport()
    var
        myInt: Integer;
    begin

    end;

    trigger OnPreReport()
    var
        myInt: Integer;
    begin

    end;

    trigger OnPostReport()
    var
        myInt: Integer;
    begin

    end;

}