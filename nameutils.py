import pandas as pd
import numpy as np
import zlib as z

# Usage:
# import pandas as pd
# import nemeutils as nu
#
# input_csv = "1996.csv"
# df = pd.read_csv(input_csv)
# nu.rename_cols(df)
# table_name = "Census_1996"
# query = nu.gen_create_table(df, table_name)
# with open(table_name + ".sql", "w") as sql_file:
#     sql_file.write(query)

# Takes a column name and returnes cleaned and slightly shortened name
def lint(s):
    s = s.strip()
    s = s.casefold()

    rename_table = [
        ('census_year', 'Year'),
        ('federal_district_year_representation', 'RO Year'),
        ('geo_code', 'FED Id'),
        ('fed_name', 'FED Name'),
        ('$', ''),
        ('(', ''),
        (')', ''),
        (',', ''),
        ('.', ''),
        (' - ', ' '),
        (' -', ' '),
        ('- ', ' '),
        (' to ', '-'),
        ('census', ''),
        (' years and over', '+'),
        ('number', 'num'),
        (' age age', ' age'),
        ('  ', ' ')
    ]
    
    for _from, _to in rename_table:
        s = s.replace(_from, _to)

    s = s.replace('  ', ' ')
    s = s.replace('  ', ' ')
    s = s.strip()

    return s

# Renames columns of a given data frame:
# calls lint() first to clean names up
# then, if necessary, shortens the name to 63 character - limit imposed by PostgreSQL
def rename_cols(df):

    rename_dct = {}

    for col in df.columns:
        s = lint(col)
        if len(s) > 63:
            cut = (len(s) - 63) + 9 + 3 # length limit + CRC32 length + '...'
            left = s[:8]
            right = s[8+cut:]
            crc = z.crc32(bytearray(s, 'utf-8'))
            s = "{}...{} {:08X}".format(left, right, crc)
        rename_dct[col] = s

    df.rename(columns=rename_dct, inplace=True)
    
# Returns a string with generates SQL create table script for a given data frame
def gen_create_table(df, table_name):
    s = f"create table {table_name} (\n")

    for idx, col in enumerate(df.columns):
        if idx > 0:
            s += ",\n"
        col_type = df[col].dtype
        
        if col_type == np.object:
            sql_type = 'varchar'
        elif col_type == np.float64:
            sql_type = 'float'
        elif col_type == np.int64:
            sql_type = 'integer'
        else:
            print(f"Unknown type: {col_type}")
            break
        
        s += f"\t\"{col}\" {sql_type}", end="")
        
    s += "\n);"
    return s

# Checks a data frame for duplicate columns and prints them
def print_duplicates(df):
    # Show data frame name if it has one
    if hasattr(df, 'name')
        print(df.name)
    # Find duplicates after name cleaning
    col_lst = []
    # 1. clean column names
    for col in df.columns:
         col_lst.append(lint(col))
    # 2. remove uniq names
    for c in list(set(col_lst)):
        col_lst.remove(c)
    # 3. find 'dirty' names that after cleaning will result in duplicates
    for col in df.columns:
        new_col = lint(col)
        if new_col in col_lst:
            print(f"\"{col}\"")
