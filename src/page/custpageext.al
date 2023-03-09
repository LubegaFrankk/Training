pageextension 50009 "Customer Card Ext" extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addafter("No.")
        {
            // field("Student No."; Rec."Student No.")
            // {
            //     ApplicationArea = all;

            // }
        }
        addafter("Address & Contact")
        {
            group("Student Details")
            {
                field("Student No."; Rec."Student No.")
                {
                    ApplicationArea = all;

                }
            }
        }
        modify("Language Code")
        {
            Visible = false;
        }
    }

    actions
    {
        // Add changes to page actions here
        addafter(ApplyTemplate)
        {
            action("Real Action")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Message('This is an added action');
                end;
            }
        }
        modify(MergeDuplicate)
        {
            Visible = false;
        }
    }

    var
        myInt: Integer;
}