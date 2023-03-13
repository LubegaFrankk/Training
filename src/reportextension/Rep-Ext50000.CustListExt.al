reportextension 50000 "CustListExt" extends "Customer - List"
{
    dataset
    {
        add(Customer)
        {
            column(Student_No_; "Student No.")
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
    // rendering
    // {
    //     layout(LayoutName)
    //     {
    //         Type = RDLC;
    //         LayoutFile = 'mylayout.rdl';
    //     }
    // }
}