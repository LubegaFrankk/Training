page 50001 "Student Card"
{
    PageType = Card;
    SourceTable = Student;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                }
                field("Student Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Full names of the student';
                }
            }
            group("Adress & Contact")
            {
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                }

            }
            group(Personal)
            {
                field(DOB; Rec.DOB)
                {
                    ApplicationArea = All;
                    Caption = 'Date of Birth';
                }

                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}