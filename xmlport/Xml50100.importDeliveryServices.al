/// <summary>
/// XmlPort importDeliveryServices (ID 50100).
/// </summary>
xmlport 50100 importDeliveryServices
{
    Format = VariableText;
    Direction = Both;
    TextEncoding = UTF8;
    UseRequestPage = false;
    TableSeparator = '<NewLine>';
    FieldDelimiter = '"';
    FieldSeparator = ';';

    Caption = 'importDeliveryServices';
    schema
    {
        textelement(RootNodeName)
        {
            tableelement(DeliveryServices; "Delivery Services")
            {
                fieldattribute(Code; DeliveryServices."Code")
                {
                }
                fieldattribute(Description; DeliveryServices.Description)
                {
                }
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
