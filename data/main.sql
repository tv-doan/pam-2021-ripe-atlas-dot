/* NOTE: the tables [results] as well as [traceroute_measurements] have to be fetched from
 * the RIPE Atlas API through the IDs given by the tables [traceroutes] and [measurements]
 */


CREATE TABLE IF NOT EXISTS probes (id INTEGER PRIMARY KEY, probe_id, country_code);  -- list of all probes

CREATE TABLE IF NOT EXISTS domains (name, country_code);  -- list of all 200 domains (150+50)

CREATE TABLE IF NOT EXISTS resolvers (id INTEGER PRIMARY KEY,name,ipv4,ipv4_2,tls);  -- list of all resolvers

CREATE TABLE IF NOT EXISTS traceroutes (msm_id, read);  -- traceroute measurement IDs

CREATE TABLE IF NOT EXISTS measurements (msm_id, domain, resolver, is_tls, read); -- Do53/DoT measurement IDs

CREATE TABLE IF NOT EXISTS results (msm_id, domain, resolver, prb_id, rt, size, src_addr, dst_addr, timestamp, is_tls, ttl, return_code, err, err_msg); -- results of Do53/DoT measurements

CREATE TABLE IF NOT EXISTS traceroute_measurements (msm_id, timestamp, method, probe_id, addr_fam, origin, src, dst, dst_name, status, ip_path_length, ttl, endpoint, rtt); -- results of traceroute measurements