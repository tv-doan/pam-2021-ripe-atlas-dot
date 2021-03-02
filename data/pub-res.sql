/* aggregated results of public resolvers after pre-processing (see 2_public-resolvers.ipynb)
 */

CREATE TABLE IF NOT EXISTS "public_resolvers" (
"msm_id" INTEGER,
  "timestamp" INTEGER,
  "domain" TEXT,
  "prb_id" INTEGER,
  "country_code" TEXT,
  "continent_code" TEXT,
  "src_addr" TEXT,
  "dst_addr" TEXT,
  "resolver" TEXT,
  "resolver_name" TEXT,
  "is_tls" INTEGER,
  "err" INTEGER,
  "err_msg" TEXT,
  "size" REAL,
  "return_code" TEXT,
  "rt" REAL,
  "ttl" REAL
);
CREATE TABLE IF NOT EXISTS "do53_5pct" (
"prb_id" INTEGER,
  "country_code" TEXT,
  "continent_code" TEXT,
  "resolver_name" TEXT,
  "rt" REAL
);
CREATE TABLE IF NOT EXISTS "dot_5pct" (
"prb_id" INTEGER,
  "country_code" TEXT,
  "continent_code" TEXT,
  "resolver_name" TEXT,
  "rt" REAL
);
CREATE TABLE IF NOT EXISTS "do53_median" (
"prb_id" INTEGER,
  "country_code" TEXT,
  "continent_code" TEXT,
  "resolver_name" TEXT,
  "rt" REAL
);
CREATE TABLE IF NOT EXISTS "dot_median" (
"prb_id" INTEGER,
  "country_code" TEXT,
  "continent_code" TEXT,
  "resolver_name" TEXT,
  "rt" REAL
);
CREATE TABLE IF NOT EXISTS "delta_5pct" (
"prb_id" INTEGER,
  "country_code" TEXT,
  "continent_code" TEXT,
  "resolver_name" TEXT,
  "rt_do53" REAL,
  "rt_dot" REAL,
  "rt_delta" REAL
);
CREATE TABLE IF NOT EXISTS "do53_failure_counts" (
"continent_code" TEXT,
  "resolver_name" TEXT,
  "err" INTEGER,
  "num" INTEGER,
  "total" INTEGER,
  "percentage" REAL
);
CREATE TABLE IF NOT EXISTS "dot_failure_counts" (
"continent_code" TEXT,
  "resolver_name" TEXT,
  "err" INTEGER,
  "num" INTEGER,
  "total" INTEGER,
  "percentage" REAL
);
CREATE TABLE IF NOT EXISTS "do53_failure_rates" (
"continent_code" TEXT,
  "resolver_name" TEXT,
  "err" INTEGER,
  "num" INTEGER,
  "total" INTEGER,
  "percentage" REAL
);
CREATE TABLE IF NOT EXISTS "do53_success_rates" (
"continent_code" TEXT,
  "resolver_name" TEXT,
  "err" INTEGER,
  "num" INTEGER,
  "total" INTEGER,
  "percentage" REAL
);
CREATE TABLE IF NOT EXISTS "dot_failure_rates" (
"continent_code" TEXT,
  "resolver_name" TEXT,
  "err" INTEGER,
  "num" INTEGER,
  "total" INTEGER,
  "percentage" REAL
);
CREATE TABLE IF NOT EXISTS "dot_success_rates" (
"continent_code" TEXT,
  "resolver_name" TEXT,
  "err" INTEGER,
  "num" INTEGER,
  "total" INTEGER,
  "percentage" REAL
);
