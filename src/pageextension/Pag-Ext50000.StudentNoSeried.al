pageextension 50000 "StudentNoSeried" extends "Sales & Receivables Setup"
{
    layout
    {
        addafter("Direct Debit Mandate Nos.")
        {
            field("Student No."; Rec."Student No.")
            {
                ApplicationArea = All;
            }
        }
    }
}