#!/usr/bin/env bash
set -euo pipefail

SRC_NAME="data_tervik"
OUT_DIR="models/staging"

mkdir -p "$OUT_DIR"

# lista de tabelas (copie/cole aqui a lista do source.yml)
TABLES=(
  customer
  employee_privileges
  employees
  inventory_transaction_types
  inventory_transactions
  invoices
  order_details
  order_details_status
  orders
  orders_status
  orders_tax_status
  privileges
  products
  purchase_order_details
  purchase_order_status
  purchase_orders
  sales_reports
  shippers
  strings
  suppliers
)

for T in "${TABLES[@]}"; do
  cat > "${OUT_DIR}/stg_${T}.sql" <<EOF
with src as (
  select *
  from {{ source('${SRC_NAME}', '${T}') }}
)
select * from src
EOF
done

echo "Generated ${#TABLES[@]} staging models in ${OUT_DIR}"
