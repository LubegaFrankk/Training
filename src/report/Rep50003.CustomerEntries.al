report 50003 "Customer Entries"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    // DefaultRenderingLayout = LayoutName;
    DefaultLayout = RDLC;
    RDLCLayout = 'Customer Entries.rdl';
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
            column(HasEntries; HasEntries)
            {

            }



            dataitem("Cust. Ledger Entry"; "Cust. Ledger Entry")
            {
                DataItemLink = "Customer No." = field("No.");
                DataItemLinkReference = Customer;
                //PrintOnlyIfDetail = false;
#pragma warning disable AL0379
                column(DocumentNo_CustLedgerEntry; "Document No.")
                {
                }
                column(DocumentType_CustLedgerEntry; "Document Type")
                {
                }
                column(PostingDate_CustLedgerEntry; "Posting Date")
                {
                }
                column(Amount_CustLedgerEntry; Amount)
                {
                }
                column(CurrencyCode_CustLedgerEntry; "Currency Code")
                {
                }
                column(AmountLCY_CustLedgerEntry; "Amount (LCY)")
                {
                }
                column(Description_CustLedgerEntry; Description)
                {
                }
#pragma warning restore AL0379

            }

            // trigger OnPreDataItem()
            // var
            //     myInt: Integer;
            // begin
            //     HasEntries := false;
            // end;

            trigger OnAfterGetRecord()
            var
                myInt: Integer;
                RecCustLedEnt: Record "Cust. Ledger Entry";
            begin
                HasEntries := false;
                RecCustLedEnt.Reset();
                RecCustLedEnt.SetRange("Customer No.", Customer."No.");
                if RecCustLedEnt.FindFirst() then
                    HasEntries := true;
                // else
                //     HasEntries := false;
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
                    // field(Name; SourceExpression)
                    // {
                    //     ApplicationArea = All;

                    // }
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
        HasEntries: Boolean;
}