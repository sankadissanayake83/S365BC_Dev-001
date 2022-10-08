/// <summary>
/// TableExtension SkSalesHeaderExtension (ID 50100) extends Record Sales Header.
/// </summary>
tableextension 50100 SkSalesHeaderExtension extends "Sales Header"
{
    fields
    {
        field(50100; "Delivery Service Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Delivery Service Code';
            TableRelation = "Delivery Services";
        }
    }

    /// <summary>
    /// ValidateDeliveryServiceCode.
    /// </summary>
    procedure ValidateDeliveryServiceCode()
    var
    begin
        if Rec."Delivery Service Code" = '' then
            Error('Please select a Delivery Service Code!');
    end;
}
