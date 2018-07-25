using System.Collections.Generic;


namespace BimlScriptLibrary
{
    public class LoadTables
    {
        public class DestinationLoadInfo
        {
            public string SrcQuery { get; set; }
            public string DestSchema { get; set; }
            public string DestTable { get; set; }
            public bool TruncateBeforeLoad { get; set; }
        }

        public static List<DestinationLoadInfo> GetDestinationLoadInfo()
        {
            List<DestinationLoadInfo> loadInfoList = new List<DestinationLoadInfo>();

            loadInfoList.Add(new DestinationLoadInfo()
            {
                SrcQuery = "SELECT [InvoiceLineID], [InvoiceID], [StockItemID], [Description], [PackageTypeID], [Quantity], [UnitPrice], [TaxRate], [TaxAmount], [LineProfit], [ExtendedPrice], [LastEditedBy], [LastEditedWhen] FROM [Sales].[InvoiceLines]",
                DestSchema = "demo",
                DestTable = "InvoiceLines",
                TruncateBeforeLoad = true
            });

            loadInfoList.Add(new DestinationLoadInfo()
            {
                SrcQuery = "SELECT [InvoiceID], [CustomerID], [BillToCustomerID], [OrderID], [DeliveryMethodID], [ContactPersonID], [AccountsPersonID], [SalespersonPersonID], [PackedByPersonID], [InvoiceDate], [CustomerPurchaseOrderNumber], [IsCreditNote], [CreditNoteReason], [Comments], [DeliveryInstructions], [InternalComments], [TotalDryItems], [TotalChillerItems], [DeliveryRun], [RunPosition], [ReturnedDeliveryData], [ConfirmedDeliveryTime], [ConfirmedReceivedBy], [LastEditedBy], [LastEditedWhen] FROM [Sales].[Invoices]",
                DestSchema = "demo",
                DestTable = "Invoices",
                TruncateBeforeLoad = true
            });

            loadInfoList.Add(new DestinationLoadInfo()
            {
                SrcQuery = "SELECT [OrderLineID], [OrderID], [StockItemID], [Description], [PackageTypeID], [Quantity], [UnitPrice], [TaxRate], [PickedQuantity], [PickingCompletedWhen], [LastEditedBy], [LastEditedWhen] FROM [Sales].[OrderLines]",
                DestSchema = "demo",
                DestTable = "OrderLines",
                TruncateBeforeLoad = true
            });

            loadInfoList.Add(new DestinationLoadInfo()
            {
                SrcQuery = "SELECT [OrderID], [CustomerID], [SalespersonPersonID], [PickedByPersonID], [ContactPersonID], [BackorderOrderID], [OrderDate], [ExpectedDeliveryDate], [CustomerPurchaseOrderNumber], [IsUndersupplyBackordered], [Comments], [DeliveryInstructions], [InternalComments], [PickingCompletedWhen], [LastEditedBy], [LastEditedWhen] FROM [Sales].[Orders]",
                DestSchema = "demo",
                DestTable = "Orders",
                TruncateBeforeLoad = true
            });

            return loadInfoList;
        }
    }
}
