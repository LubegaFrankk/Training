reportextension 50000 "CustListExt" extends "Customer - List"
{
    RDLCLayout = 'CustListExt.rdl';
    dataset
    {
        add(Customer)
        {
            column(Student_No_; "Student No.")
            {


            }
            column(DisplayMessage; DisplayMessage)
            {

            }
        }
        // Add changes to dataitems and columns here
    }

    requestpage
    {
        layout
        {

            addfirst(Content)
            {
                field(Taxable; Taxable)
                {

                }

            }
        }
        // Add changes to the requestpage here
    }

    var
        Taxable: Boolean;
        DisplayMessage: Label 'I have Successfully Exteneded This Report';
    // rendering
    // {
    //     layout(LayoutName)
    //     {
    //         Type = RDLC;
    //         LayoutFile = 'mylayout.rdl';
    //     }
    // }
}