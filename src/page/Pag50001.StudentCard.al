page 50001 "Student Card"
{
    PageType = Card;
    SourceTable = Student;
    PromotedActionCategories = 'New, Process,Report,Navigate,Approved, xyz, trial';


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
                    ToolTip = 'Sir name of the student';
                }
                field("Student Name"; Rec."Student Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Full names of the student';
                    Importance = Promoted;
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
                    Importance = Promoted;
                }

            }
            group(Personal)
            {
                field(DOB; Rec.DOB)
                {
                    ApplicationArea = All;
                    Caption = 'Date of Birth';
                    Importance = Additional;
                }

                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    Importance = Additional;

                }
            }
        }
    }


    actions
    {
        area(Creation)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                Caption = 'New Student';
                RunObject = page "Student Card";
                Promoted = true;
                PromotedCategory = Category4;

                trigger OnAction()
                begin

                end;
            }
            action(ActionName1)
            {
                ApplicationArea = All;

                Caption = 'Customer';
                RunObject = page "Customer Card";

                trigger OnAction()
                begin

                end;
            }
        }
        area(Navigation)
        {
            action(ActionName3)
            {
                ApplicationArea = All;
                Caption = 'Student List';
                RunObject = page "Student List";

                trigger OnAction()
                begin

                end;
            }

            action(ActionName7)
            {
                ApplicationArea = All;
                Caption = 'Click here';

                trigger OnAction()
                begin
                    Rec.TestFunctionnn();
                end;
            }
        }
        area(Processing)
        {
            action(ActionName4)
            {
                ApplicationArea = All;
                Caption = 'Calculate Studen Marks';
                Promoted = true;
                trigger OnAction()
                begin

                end;
            }
        }

        area(Reporting)
        {
            action(ActionName5)
            {
                ApplicationArea = All;
                Caption = 'Student Statement';
                trigger OnAction()
                begin

                end;
            }
        }

    }

    var
        myInt: Integer;

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        Message('Hello dfgjkl');
    end;
}