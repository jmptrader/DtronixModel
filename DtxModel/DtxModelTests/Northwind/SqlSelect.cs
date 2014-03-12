﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SQLite;
using DtxModelTests.Northwind.Models;

namespace DtxModelTests.Northwind {
    class SqlSelect {

        public SqlSelect() {
            var connection = new SQLiteConnection("Data Source=Northwind/northwind.sqlite;Version=3;");
            connection.Open();

            using (var command = connection.CreateCommand()) {
                command.CommandText = "SELECT rowid, * FROM Customers";
                using (var reader = command.ExecuteReader()) {
                    var depth = reader.Depth;
					var list = new List<Customers>();
                    while (reader.Read()) {
                        list.Add(new Customers(reader, connection));
                    }
                }
            }

        }
    }
}