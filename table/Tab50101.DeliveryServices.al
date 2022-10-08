/// <summary>
/// Table Delivery Services (ID 50101).
/// Sanka 2022/10/05
/// </summary>
table 50101 "Delivery Services"
{
    Caption = 'Delivery Services';
    DataClassification = CustomerContent;
    DrillDownPageId = "Delivery Services";
    LookupPageId = "Delivery Services";
    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}
