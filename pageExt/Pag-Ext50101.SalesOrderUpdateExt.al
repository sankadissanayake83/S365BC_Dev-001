/// <summary>
/// PageExtension SalesOrderUpdateExtn (ID 50101) extends Record Sales Order.
/// </summary>
#pragma implicitwith disable
pageextension 50101 SalesOrderUpdateExt extends "Sales Order"
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

        modify(PostAndNew)
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