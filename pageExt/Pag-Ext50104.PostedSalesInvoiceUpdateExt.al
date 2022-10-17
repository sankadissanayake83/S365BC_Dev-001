/// <summary>
/// PageExtension PostedSalesInvoiceUpdateExt (ID 50104) extends Record Posted Sales Inv. - Update.
/// Base App Page - Posted Sales Inv. - Update (1355, Card)
/// </summary>
pageextension 50104 PostedSalesInvoiceUpdateExt extends "Posted Sales Inv. - Update"
{
    layout
    {
        addlast(General)
        {
            field("External Document No."; Rec."External Document No.")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the External Document number!';
                Visible = true;
                Editable = true;
            }
        }

    }

}
