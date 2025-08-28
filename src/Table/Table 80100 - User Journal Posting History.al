table 80100 "User Journal Posting History"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(2; "User Id"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Journal Batch Name"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Journal Template Name"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(5; Amount; Decimal)
        {
            DataClassification = ToBeClassified;
            AutoFormatType = 1;
        }
        field(6; "Created Date/TIme"; DateTime)
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Currency Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }


}