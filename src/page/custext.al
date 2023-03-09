tableextension 50009 CustomerExt extends Customer

{
    fields
    {
        // Add changes to table fields heret
        field(50000; "Student No."; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = Student."No.";

        }
        modify("Home Page")
        {
            trigger OnAfterValidate()
            var
                myInt: Integer;
            begin
                Message('Yeelloo');
            end;
        }
    }

    var
        myInt: Integer;
}