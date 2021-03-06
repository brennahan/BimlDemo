USE [DestinationDB]
GO
/****** Object:  Schema [demo]    Script Date: 2/9/2017 7:39:35 PM ******/
CREATE SCHEMA [demo]
GO
/****** Object:  Table [demo].[InvoiceLines]    Script Date: 2/9/2017 7:39:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [demo].[InvoiceLines](
	[InvoiceLineID] [int] NULL,
	[InvoiceID] [int] NULL,
	[StockItemID] [int] NULL,
	[Description] [nvarchar](100) NULL,
	[PackageTypeID] [int] NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [decimal](18, 2) NULL,
	[TaxRate] [decimal](18, 3) NULL,
	[TaxAmount] [decimal](18, 2) NULL,
	[LineProfit] [decimal](18, 2) NULL,
	[ExtendedPrice] [decimal](18, 2) NULL,
	[LastEditedBy] [int] NULL,
	[LastEditedWhen] [datetime2](7) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [demo].[Invoices]    Script Date: 2/9/2017 7:39:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [demo].[Invoices](
	[InvoiceID] [int] NULL,
	[CustomerID] [int] NULL,
	[BillToCustomerID] [int] NULL,
	[OrderID] [int] NULL,
	[DeliveryMethodID] [int] NULL,
	[ContactPersonID] [int] NULL,
	[AccountsPersonID] [int] NULL,
	[SalespersonPersonID] [int] NULL,
	[PackedByPersonID] [int] NULL,
	[InvoiceDate] [date] NULL,
	[CustomerPurchaseOrderNumber] [nvarchar](20) NULL,
	[IsCreditNote] [bit] NULL,
	[CreditNoteReason] [nvarchar](max) NULL,
	[Comments] [nvarchar](max) NULL,
	[DeliveryInstructions] [nvarchar](max) NULL,
	[InternalComments] [nvarchar](max) NULL,
	[TotalDryItems] [int] NULL,
	[TotalChillerItems] [int] NULL,
	[DeliveryRun] [nvarchar](5) NULL,
	[RunPosition] [nvarchar](5) NULL,
	[ReturnedDeliveryData] [nvarchar](max) NULL,
	[ConfirmedDeliveryTime] [datetime2](7) NULL,
	[ConfirmedReceivedBy] [nvarchar](4000) NULL,
	[LastEditedBy] [int] NULL,
	[LastEditedWhen] [datetime2](7) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [demo].[OrderLines]    Script Date: 2/9/2017 7:39:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [demo].[OrderLines](
	[OrderLineID] [int] NULL,
	[OrderID] [int] NULL,
	[StockItemID] [int] NULL,
	[Description] [nvarchar](100) NULL,
	[PackageTypeID] [int] NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [decimal](18, 2) NULL,
	[TaxRate] [decimal](18, 3) NULL,
	[PickedQuantity] [int] NULL,
	[PickingCompletedWhen] [datetime2](7) NULL,
	[LastEditedBy] [int] NULL,
	[LastEditedWhen] [datetime2](7) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [demo].[Orders]    Script Date: 2/9/2017 7:39:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [demo].[Orders](
	[OrderID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[SalespersonPersonID] [int] NOT NULL,
	[PickedByPersonID] [int] NULL,
	[ContactPersonID] [int] NOT NULL,
	[BackorderOrderID] [int] NULL,
	[OrderDate] [date] NOT NULL,
	[ExpectedDeliveryDate] [date] NOT NULL,
	[CustomerPurchaseOrderNumber] [nvarchar](20) NULL,
	[IsUndersupplyBackordered] [bit] NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[DeliveryInstructions] [nvarchar](max) NULL,
	[InternalComments] [nvarchar](max) NULL,
	[PickingCompletedWhen] [datetime2](7) NULL,
	[LastEditedBy] [int] NOT NULL,
	[LastEditedWhen] [datetime2](7) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
