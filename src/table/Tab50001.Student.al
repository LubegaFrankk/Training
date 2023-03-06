table 50001 "Student"
{
    DataClassification = ToBeClassified;
    Caption = 'Student';
    // CaptionML = enu = 'Student', DAN = 'ETUDEINT';

    fields
    {
        field(1; "No."; Code[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'No.';
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                if "No." <> xRec."No." then begin
                    SalesSetup.Get();
                    NoSeriesMgmt.TestManual(SalesSetup."Student No.");

                end;
            end;

        }
        field(2; "First Name"; Text[150])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Last Name"; Text[150])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                "Student Name" := "First Name" + ' ' + "Last Name";
            end;
        }
        field(4; Email; Text[50])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = EMail;
        }

        field(5; "Phone No."; Text[50])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = PhoneNo;

        }
        field(6; Gender; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = ,Male,Female;
        }
        field(7; DOB; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Date of Birth';
        }
        field(8; "User ID"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "User Setup"."User ID";
            Editable = false;
            //TableRelation = "User Setup"."User ID" where("E-Mail" = field(Email));
        }
        field(9; "Student Name"; Text[150])
        {
            DataClassification = ToBeClassified;
        }
        field(10; "No. Series"; Code[50])
        {
            TableRelation = "No. Series";
            Editable = false;
        }
        field(11; EntryDate; Date)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(12; "Entry Time"; Time)
        {
            DataClassification = ToBeClassified;
            Editable = false
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }

        key(key2; Email)
        {

        }
    }

    var
        myInt: Integer;
        age: Integer;
        SalesSetup: Record "Sales & Receivables Setup";
        NoSeriesMgmt: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        "User ID" := UserId;
        EntryDate := Today;
        "Entry Time" := Time(CurrentDateTime);
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}