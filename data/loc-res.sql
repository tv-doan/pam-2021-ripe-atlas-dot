/* aggregated results of local resolvers after pre-processing (see 3_local-resolver-split.ipynb)
 */

CREATE TABLE IF NOT EXISTS "local_resolvers" (
"msm_id" INTEGER,
  "domain" TEXT,
  "resolver" TEXT,
  "prb_id" INTEGER,
  "rt" REAL,
  "size" REAL,
  "src_addr" TEXT,
  "dst_addr" TEXT,
  "timestamp" INTEGER,
  "is_tls" INTEGER,
  "ttl" REAL,
  "return_code" TEXT,
  "err" INTEGER,
  "err_msg" TEXT,
  "asn" REAL,
  "as_holder" TEXT
);
CREATE TABLE IF NOT EXISTS "do53" (
"msm_id" INTEGER,
  "timestamp" INTEGER,
  "domain" TEXT,
  "prb_id" INTEGER,
  "country_code" TEXT,
  "continent_code" TEXT,
  "src_addr" TEXT,
  "dst_addr" TEXT,
  "asn" REAL,
  "as_holder" TEXT,
  "size" REAL,
  "return_code" TEXT,
  "rt" REAL,
  "ttl" REAL
);
CREATE TABLE IF NOT EXISTS "dot" (
"msm_id" INTEGER,
  "timestamp" INTEGER,
  "domain" TEXT,
  "prb_id" INTEGER,
  "country_code" TEXT,
  "continent_code" TEXT,
  "src_addr" TEXT,
  "dst_addr" TEXT,
  "asn" REAL,
  "as_holder" TEXT,
  "size" REAL,
  "return_code" TEXT,
  "rt" REAL,
  "ttl" REAL
);
CREATE TABLE IF NOT EXISTS "do53_5pct" (
"prb_id" INTEGER,
  "country_code" TEXT,
  "continent_code" TEXT,
  "rt" REAL
);
CREATE TABLE IF NOT EXISTS "dot_5pct" (
"prb_id" INTEGER,
  "country_code" TEXT,
  "continent_code" TEXT,
  "rt" REAL
);
CREATE TABLE IF NOT EXISTS "do53_median" (
"prb_id" INTEGER,
  "country_code" TEXT,
  "continent_code" TEXT,
  "rt" REAL
);
CREATE TABLE IF NOT EXISTS "dot_median" (
"prb_id" INTEGER,
  "country_code" TEXT,
  "continent_code" TEXT,
  "rt" REAL
);
CREATE TABLE IF NOT EXISTS "delta_5pct" (
"prb_id" INTEGER,
  "country_code" TEXT,
  "continent_code" TEXT,
  "rt_do53" REAL,
  "rt_dot" REAL,
  "rt_delta" REAL
);
CREATE TABLE IF NOT EXISTS "failure_rates_regular" (
"continent_code" TEXT,
  "do53_failures" REAL,
  "dot_failures" REAL,
  "do53_successes" REAL,
  "dot_successes" REAL,
  "do53_total" REAL,
  "dot_total" REAL,
  "do53_failure_rate" REAL,
  "dot_failure_rate" REAL
);
CREATE TABLE IF NOT EXISTS "failure_rates_special" (
"continent_code" TEXT,
  "do53_failures" INTEGER,
  "dot_failures" INTEGER,
  "do53_successes" INTEGER,
  "dot_successes" INTEGER,
  "do53_total" INTEGER,
  "dot_total" INTEGER,
  "do53_failure_rate" REAL,
  "dot_failure_rate" REAL
);
