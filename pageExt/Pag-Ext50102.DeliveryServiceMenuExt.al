/// <summary>
/// PageExtension DeliveryServiceMenuExt (ID 50102) extends Record Business Manager Role Center.
/// </summary>
pageextension 50102 DeliveryServiceMenuExt extends "Business Manager Role Center"
{
    actions
    {
        addlast("Financial Statements")
        {
            action(DeliveryServices)
            {
                ApplicationArea = all;
                //Promoted = true;
                RunObject = Page "Delivery Services";

            }
        }

    }
}
