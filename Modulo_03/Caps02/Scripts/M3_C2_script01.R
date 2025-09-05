library(RMySQL)
library(DBI)
options(warn = -999)

# Datos de la siguiente fuente
# https://rforexceluserscom.wordpress.com/author/rforexcelusers1/

# Conexion 
conn <- dbConnect(
  MySQL(),
  user = Sys.getenv("USER"),
  password = Sys.getenv("CLAVE"),
  dbname = "DB_Testing")

# Consulta
query <- dbSendQuery(conn, 
                     "
                     SELECT quality, state, 
                     ROUND(SUM(amount),2) AS sum_amount, 
                     ROUND(AVG(ppo),2) AS avg_ppo, 
                     ROUND((SUM(price) / SUM(amount)),2) AS avg_ppo2 
                     FROM precios_db  
                     WHERE state IN ('California','New York','Illinois')
                     GROUP BY quality, state ")
# Tabla
tabla <- fetch(query, n=-1)

# tabla
# quality      state sum_amount avg_ppo avg_ppo2
# 1   high quality   Illinois    1539.76  376.37   310.70
# 2   high quality   New York    2252.97  375.42   306.45
# 3 medium quality   Illinois    1353.48  306.13   217.89
# 4    low quality California     357.15  274.98   189.91
# 5   high quality California    5495.93  277.93   226.89
# 6 medium quality   New York    2317.25  287.70   222.55
# 7 medium quality California    6053.91  212.28   165.89
# 8    low quality   New York     170.51  349.51   175.54
# 9    low quality   Illinois     118.91  227.03   142.52

