/// <summary>
/// PageExtension Sales Order List Ext. (ID 50103) extends Record Sales Order List.
/// </summary>
pageextension 50103 "Sales Order List Ext." extends "Sales Order List"
{
    layout
    {
        addafter(Status)
        {
            field("Delivery Service Code"; Rec."Delivery Service Code")
            {
                ApplicationArea = All;
                Visible = true;
            }
        }
    }

    actions
    {

        modify(Post)
        {
            trigger OnBeforeAction()
            begin
                Rec.ValidateDeliveryServiceCode();
            end;
        }

        modify("Post &Batch")
        {
            trigger OnBeforeAction()
            begin
                Rec.ValidateDeliveryServiceCode();
            end;
        }

        modify(PostAndSend)
        {
            trigger OnBeforeAction()
            begin
                Rec.ValidateDeliveryServiceCode();
            end;
        }
    }
}
