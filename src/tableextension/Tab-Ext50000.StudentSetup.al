tableextension 50000 "Student Setup" extends "Sales & Receivables Setup"
{
    fields
    {
        field(50000; "Student No."; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
    }

}