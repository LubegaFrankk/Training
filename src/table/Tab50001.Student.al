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

        }
        field(2; "First Name"; Text[150])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Last Name"; Text[150])
        {
            DataClassification = ToBeClassified;
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
            TableRelation = "User Setup"."User ID" where("E-Mail" = filter(<> ''));
            //TableRelation = "User Setup"."User ID" where("E-Mail" = field(Email));
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

    trigger OnInsert()
    begin

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