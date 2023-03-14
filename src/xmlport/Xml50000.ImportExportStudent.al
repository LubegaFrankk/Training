xmlport 50000 "Import/Export Student"
{
    Format = VariableText;
    TextEncoding = UTF8;
    TableSeparator = ' ';


    schema
    {
        textelement(Root)
        {
            tableelement(Student; Student)
            {
                fieldelement(No; Student."No.")
                {

                }
                fieldelement(FName; Student."First Name")
                {

                }
                fieldelement(LName; Student."Last Name")
                {

                }
                fieldelement(DOB; Student.DOB)
                {

                }
                fieldelement(Email; Student.Email)
                {

                }
            }
        }
    }

    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {

                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {

                }
            }
        }
    }

    var
        myInt: Integer;
}