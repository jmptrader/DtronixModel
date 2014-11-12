﻿<?xml version="1.0" encoding="utf-8"?><Database Class="NorthwindContext" xmlns="http://schemas.microsoft.com/linqtosql/dbml/2007">
  <Table Name="Customers">
    <Type Name="Customers">
      <Column Name="" Member="rowid" AutoSync="Never" Type="System.Int64" IsPrimaryKey="true" IsDbGenerated="true" CanBeNull="false" />
      <Column Name="" Member="CustomerID" Type="System.String" CanBeNull="false" />
      <Column Name="" Member="CompanyName" Type="System.String" CanBeNull="false" />
      <Column Name="" Member="ContactName" Type="System.String" CanBeNull="false" />
      <Column Name="" Member="ContactTitle" Type="System.String" CanBeNull="false" />
      <Column Name="" Member="Address" Type="System.String" CanBeNull="false" />
      <Column Name="" Member="City" Type="System.String" CanBeNull="false" />
      <Column Name="" Member="Region" Type="System.String" CanBeNull="false" />
      <Column Name="" Member="PostalCode" Type="System.String" CanBeNull="false" />
      <Column Name="" Member="Country" Type="System.String" CanBeNull="false" />
      <Column Name="" Member="Phone" Type="System.String" CanBeNull="false" />
      <Column Name="" Member="Fax" Type="System.String" CanBeNull="false" />
      <Column Name="" Member="Categories_rowid" Type="System.Int64" CanBeNull="false" />
      <Association Name="Customers_Categories" Member="Category" ThisKey="Categories_rowid" OtherKey="CategoryID" Type="Categories" />
    </Type>
  </Table>
  <Table Name="Categories">
    <Type Name="Categories">
      <Column Name="" Member="CategoryID" AutoSync="Never" Type="System.Int64" IsPrimaryKey="true" IsDbGenerated="true" CanBeNull="false" />
      <Column Name="" Member="CategoryName" Type="System.String" CanBeNull="false" />
      <Column Name="" Member="Description" Type="System.String" CanBeNull="false" />
      <Column Name="" Member="Picture" Type="System.Byte[]" CanBeNull="false" />
      <Association Name="Customers_Categories" Member="Customers" ThisKey="CategoryID" OtherKey="Categories_rowid" Type="Customers" IsForeignKey="true" />
    </Type>
  </Table>
</Database>