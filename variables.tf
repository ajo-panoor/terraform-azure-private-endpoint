variable "private_endpoints" {
  type = list(map(string))
  default = []
}

variable "location" {
  type = string
  description = "Location where all Private Endponts will be created"
}

variable "resource_group_name" {
  type = string
  description = "Name of Resource Group to house the Private Endpoints"
}

# zone settings 
#variable "security_level" {
#  type    = string
#  default = "low"
#}

#variable "ciphers" {
#  type    = list(string)
#  default = ["ECDHE-ECDSA-AES128-GCM-SHA256", "ECDHE-ECDSA-CHACHA20-POLY1305", "ECDHE-RSA-AES128-GCM-SHA256", "ECDHE-RSA-CHACHA20-POLY1305", "ECDHE-ECDSA-AES256-GCM-SHA384", "ECDHE-RSA-AES256-GCM-SHA384"]
#}
# end zone settings 

#variable "subdomain_list" {
#  type = list(map(string))
#  default = [
#    { record_name = "alpha.celonis.cloud", record_type = "CNAME", proxy_enabled = true, create_wildcard = true, record_target = "kubernetes-eu-dev-1-93ede1a90f6aefb9.elb.eu-central-1.amazonaws.com." },
#    { record_name = "data-ingestion.alpha.celonis.cloud", record_type = "CNAME", proxy_enabled = true, create_wildcard = true, record_target = "kubernetes-eu-dev-1-93ede1a90f6aefb9.elb.eu-central-1.amazonaws.com." },
#    { record_name = "beta.celonis.cloud", record_type = "CNAME", proxy_enabled = true, create_wildcard = true, record_target = "k8s-beta-maingate-d25cb100c1-51e8e5f03d638b8d.elb.eu-central-1.amazonaws.com." },
#    { record_name = "data-ingestion.beta.celonis.cloud", record_type = "CNAME", proxy_enabled = true, create_wildcard = true, record_target = "k8s-beta-maingate-d25cb100c1-51e8e5f03d638b8d.elb.eu-central-1.amazonaws.com." },
#    { record_name = "develop.celonis.cloud", record_type = "CNAME", proxy_enabled = true, create_wildcard = true, record_target = "kubernetes-eu-dev-1-93ede1a90f6aefb9.elb.eu-central-1.amazonaws.com." },
#    { record_name = "data-ingestion.develop.celonis.cloud", record_type = "CNAME", proxy_enabled = true, create_wildcard = true, record_target = "kubernetes-eu-dev-1-93ede1a90f6aefb9.elb.eu-central-1.amazonaws.com." },
#    { record_name = "sftp.alpha.celonis.cloud", record_type = "CNAME", proxy_enabled = false, create_wildcard = true, record_target = "kubernetes-eu-dev-1-93ede1a90f6aefb9.elb.eu-central-1.amazonaws.com." },
#    { record_name = "ssh.alpha.celonis.cloud", record_type = "CNAME", proxy_enabled = false, create_wildcard = true, record_target = "kubernetes-eu-dev-1-93ede1a90f6aefb9.elb.eu-central-1.amazonaws.com." },
#    { record_name = "sftp.beta.celonis.cloud", record_type = "CNAME", proxy_enabled = false, create_wildcard = true, record_target = "k8s-beta-betalbst-79f61647a4-cf19dbc3a54b555d.elb.eu-central-1.amazonaws.com." },
#    { record_name = "ssh.beta.celonis.cloud", record_type = "CNAME", proxy_enabled = false, create_wildcard = true, record_target = "k8s-beta-betalbhy-5b2154bcd3-6eed0463df6abc5a.elb.eu-central-1.amazonaws.com." },
#    { record_name = "sftp.develop.celonis.cloud", record_type = "CNAME", proxy_enabled = false, create_wildcard = true, record_target = "kubernetes-eu-dev-1-93ede1a90f6aefb9.elb.eu-central-1.amazonaws.com." },
#    { record_name = "ssh.develop.celonis.cloud", record_type = "CNAME", proxy_enabled = false, create_wildcard = true, record_target = "kubernetes-eu-dev-1-93ede1a90f6aefb9.elb.eu-central-1.amazonaws.com." },
#    { record_name = "ericsson.celonis.cloud", record_type = "CNAME", proxy_enabled = false, create_wildcard = true, record_target = "spectrum-eu.celonis.cloud." },
#    { record_name = "eu-1.celonis.cloud", record_type = "CNAME", proxy_enabled = false, create_wildcard = true, record_target = "spectrum-eu.celonis.cloud." },
#    { record_name = "ssh.eu-1.celonis.cloud", record_type = "CNAME", proxy_enabled = false, create_wildcard = true, record_target = "hybrid-ssh-server-lb-fe4abe59a684ab38.elb.eu-central-1.amazonaws.com" },
#    { record_name = "sftp.eu-1.celonis.cloud", record_type = "CNAME", proxy_enabled = false, create_wildcard = true, record_target = "storage-manager-lb-7d41796458edeafd.elb.eu-central-1.amazonaws.com" },
#    { record_name = "*.eu-3.celonis.cloud", record_type = "CNAME", proxy_enabled = false, create_wildcard = false, record_target = "spectrum-eu.celonis.cloud." },
#    { record_name = "eu-3.celonis.cloud", record_type = "A", proxy_enabled = false, create_wildcard = false, record_target = "20.218.105.182" },
#    { record_name = "sftp.eu-3.celonis.cloud", record_type = "A", proxy_enabled = false, create_wildcard = true, record_target = "20.79.237.3" },
#    { record_name = "ssh.eu-3.celonis.cloud", record_type = "A", proxy_enabled = false, create_wildcard = true, record_target = "20.218.105.182" },
#    { record_name = "aldi-sued.celonis.cloud", record_type = "CNAME", proxy_enabled = false, create_wildcard = true, record_target = "spectrum-eu.celonis.cloud." },
#    { record_name = "sftp.aldi-sued.celonis.cloud", record_type = "A", proxy_enabled = false, create_wildcard = true, record_target = "20.218.86.53" },
#    { record_name = "eu-5.celonis.cloud", record_type = "CNAME", proxy_enabled = false, create_wildcard = true, record_target = "spectrum-eu.celonis.cloud." },
#    { record_name = "sftp.eu-5.celonis.cloud", record_type = "CNAME", proxy_enabled = false, create_wildcard = true, record_target = "storage-manager-lb-0337f4ee43c7edbd.elb.eu-central-1.amazonaws.com" },
#    { record_name = "eu-4.celonis.cloud", record_type = "CNAME", proxy_enabled = false, create_wildcard = true, record_target = "spectrum-eu.celonis.cloud." },
#    { record_name = "sftp.eu-4.celonis.cloud", record_type = "CNAME", proxy_enabled = false, create_wildcard = true, record_target = "acb549a7bc7584b4ea8f5e43df94f1de-89d7ace56ea00610.elb.eu-central-1.amazonaws.com" },
#    { record_name = "ssh.eu-4.celonis.cloud", record_type = "CNAME", proxy_enabled = false, create_wildcard = true, record_target = "acb549a7bc7584b4ea8f5e43df94f1de-89d7ace56ea00610.elb.eu-central-1.amazonaws.com" },
#    { record_name = "eu-2.celonis.cloud", record_type = "CNAME", proxy_enabled = false, create_wildcard = true, record_target = "spectrum-eu.celonis.cloud." },
#    { record_name = "ssh.eu-2.celonis.cloud", record_type = "A", proxy_enabled = false, create_wildcard = true, record_target = "13.80.109.60" },
#    { record_name = "sftp.eu-2.celonis.cloud", record_type = "A", proxy_enabled = false, create_wildcard = true, record_target = "20.31.2.187" },
#    { record_name = "bnpp.celonis.cloud", record_type = "CNAME", proxy_enabled = false, create_wildcard = true, record_target = "spectrum-eu.celonis.cloud." },
#    { record_name = "sftp.ericsson.celonis.cloud", record_type = "CNAME", proxy_enabled = false, create_wildcard = true, record_target = "afffcf34e87164fed9c2fb426716b832-055d68a4b3d8cbfc.elb.eu-west-1.amazonaws.com." },
#    { record_name = "sftp.bnpp.celonis.cloud", record_type = "CNAME", proxy_enabled = false, create_wildcard = true, record_target = "ab706208ca7834ac1bf20407be22b5eb-ce7711a3e87faf4f.elb.eu-central-1.amazonaws.com" },
#    { record_name = "cel-1.celonis.cloud", record_type = "A", proxy_enabled = true, create_wildcard = true, record_target = "51.116.237.23" },
#    { record_name = "training.celonis.cloud", record_type = "A", proxy_enabled = true, create_wildcard = true, record_target = "131.189.168.6" },
#    { record_name = "sftp.training.celonis.cloud", record_type = "A", proxy_enabled = false, create_wildcard = true, record_target = "20.218.200.143" },
#    { record_name = "jp-1.celonis.cloud", record_type = "A", proxy_enabled = true, create_wildcard = true, record_target = "130.33.161.12" },
#    { record_name = "sftp.jp-1.celonis.cloud", record_type = "A", proxy_enabled = false, create_wildcard = true, record_target = "20.44.169.67" },
#    { record_name = "ssh.jp-1.celonis.cloud", record_type = "A", proxy_enabled = false, create_wildcard = true, record_target = "13.73.16.140" },
#    { record_name = "mercedes-benz.celonis.cloud", record_type = "CNAME", proxy_enabled = false, create_wildcard = true, record_target = "spectrum-eu.celonis.cloud." },
#    { record_name = "sftp.mercedes-benz.celonis.cloud", record_type = "A", proxy_enabled = false, create_wildcard = true, record_target = "20.218.113.249" },
#    { record_name = "*.alpha-admin.celonis.cloud.", record_type = "CNAME", proxy_enabled = false, create_wildcard = false, record_target = "cloudalphabackend-714112280.eu-central-1.elb.amazonaws.com." },
#    { record_name = "*.celonis.cloud.", record_type = "A", proxy_enabled = false, create_wildcard = false, record_target = "104.198.14.52" },
#    { record_name = "*.emotion-cloud.celonis.cloud.", record_type = "A", proxy_enabled = false, create_wildcard = false, record_target = "89.31.143.1" },
#    { record_name = "help-test.celonis.cloud.", record_type = "A", proxy_enabled = true, create_wildcard = false, record_target = "192.0.2.1" },
#    { record_name = "help.celonis.cloud.", record_type = "A", proxy_enabled = true, create_wildcard = false, record_target = "192.0.2.1" },
#    { record_name = "www.help-test.celonis.cloud.", record_type = "A", proxy_enabled = true, create_wildcard = false, record_target = "192.0.2.1" },
#    { record_name = "celonis.cloud.", record_type = "TXT", proxy_enabled = false, create_wildcard = false, record_target = "MS=ms40543303" },
#    { record_name = "celonis.cloud.", record_type = "TXT", proxy_enabled = false, create_wildcard = false, record_target = "ZOOM_verify_mXHPIUCHQByAgvUBtGTbVQ" },
#    { record_name = "celonis.cloud.", record_type = "TXT", proxy_enabled = false, create_wildcard = false, record_target = "amazonses:ZOIFNulBo5YX4t4zB4NIvVwMyUQXHjhONKo0NNeBL4w=" },
#    { record_name = "celonis.cloud.", record_type = "TXT", proxy_enabled = false, create_wildcard = false, record_target = "google-site-verification=6inMqjuN-2jo3PZPCalE_riXNFfvhg3Ty3rP4ozcu5c" },
#    { record_name = "celonis.cloud.", record_type = "TXT", proxy_enabled = false, create_wildcard = false, record_target = "google-site-verification=aA0bBWrCii8rQsL6KSIp_zhBotBRBkpaYgFQXQO97Cs" },
#    { record_name = "celonis.cloud.", record_type = "TXT", proxy_enabled = false, create_wildcard = false, record_target = "google-site-verification=bjGmIirvaYo_jaOCwIAm6qofTMPBaOBsw9535PNUBAI" },
#    { record_name = "celonis.cloud.", record_type = "TXT", proxy_enabled = false, create_wildcard = false, record_target = "google-site-verification=ib6wqtnRaCnToWLjhSZGXjgchjZBFG-RYphPS6j4Cn0" },
#    { record_name = "celonis.cloud.", record_type = "TXT", proxy_enabled = false, create_wildcard = false, record_target = "google-site-verification=CVsl64fBRzct-MMZYAE_a9fSlPg4tXiLjzWoqm_nPYg" },
#    { record_name = "celonis.cloud.", record_type = "TXT", proxy_enabled = false, create_wildcard = false, record_target = "google-site-verification=klZGYym_hfFTrrA0xFToR8VYWbQc8tIo98uWQru2mxw" },
#    { record_name = "google._domainkey.celonis.cloud.", record_type = "TXT", proxy_enabled = false, create_wildcard = false, record_target = "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuUhPmnwc8o6uHR1gw2tlxzSl6uiestaimEC17pIZ+cOSaAh5shqWa7NFIizdH2mFjYsXwZ58FMIbzoGt8+FuZkYWmZWI6zb9c2I99zzg5XJNnmmSWpjF3JhPm+d4hJG/kn6ruqyXAH3jetH0PR09zRnrINWWuAyIPllJCirQ7NZDMKNmjX0D+bvJeA5SC0fj8HjBy6tfPewVkSM13aNPRWea4pg0uRXB2nHhQi6Ck/pqIJcTDi8huTOrEv+BpHqgpZlWulggs6Aa50kck9ogKQD19NyiC+SL/azqOYe+fnsC94zd5RLFgUdTeR6qkPbNEGXEapeTjLpbqugzZiJ8fQIDAQAB" },
#    { record_name = "id-dev.celonis.cloud.", record_type = "NS", proxy_enabled = false, create_wildcard = false, record_target = "ns-1383.awsdns-44.org." },
#    { record_name = "id-dev.celonis.cloud.", record_type = "NS", proxy_enabled = false, create_wildcard = false, record_target = "ns-1640.awsdns-13.co.uk." },
#    { record_name = "id-dev.celonis.cloud.", record_type = "NS", proxy_enabled = false, create_wildcard = false, record_target = "ns-194.awsdns-24.com." },
#    { record_name = "id-dev.celonis.cloud.", record_type = "NS", proxy_enabled = false, create_wildcard = false, record_target = "ns-618.awsdns-13.net." },
#    # fallback DNS record (in case the load balancer gets disabled). Required also to set the proper hostname region.
#    { record_name = "id.celonis.cloud.", record_type = "CNAME", proxy_enabled = true, create_wildcard = false, record_target = "kubernetes-eu-1-b6842413c69c0b90.elb.eu-central-1.amazonaws.com.", record_region_key = "isoeu" },
#    { record_name = "k8s.celonis.cloud.", record_type = "NS", proxy_enabled = false, create_wildcard = false, record_target = "ns-1038.awsdns-01.org." },
#    { record_name = "k8s.celonis.cloud.", record_type = "NS", proxy_enabled = false, create_wildcard = false, record_target = "ns-1990.awsdns-56.co.uk." },
#    { record_name = "k8s.celonis.cloud.", record_type = "NS", proxy_enabled = false, create_wildcard = false, record_target = "ns-402.awsdns-50.com." },
#    { record_name = "k8s.celonis.cloud.", record_type = "NS", proxy_enabled = false, create_wildcard = false, record_target = "ns-595.awsdns-10.net." },
#    { record_name = "khwuv4mspeegy3jgtrc5xcwqfcbftkfd._domainkey.celonis.cloud.", record_type = "CNAME", proxy_enabled = false, create_wildcard = false, record_target = "khwuv4mspeegy3jgtrc5xcwqfcbftkfd.dkim.amazonses.com." },
#    { record_name = "mail.celonis.cloud.", record_type = "MX", proxy_enabled = false, create_wildcard = false, record_target = "feedback-smtp.eu-west-1.amazonses.com.", record_priority = 10 },
#    { record_name = "mail.celonis.cloud.", record_type = "TXT", proxy_enabled = false, create_wildcard = false, record_target = "v=spf1 include:amazonses.com -all" },
#    { record_name = "mssql-celosphere.celonis.cloud.", record_type = "A", proxy_enabled = false, create_wildcard = false, record_target = "18.185.252.57" },
#    { record_name = "mx._domainkey.celonis.cloud.", record_type = "TXT", proxy_enabled = false, create_wildcard = false, record_target = "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDvgSIzzVrDJbdH09Mu1k2J/vpT6RA1aX+88F5ljN5JPghPP+ahUt8emlBiUsCf/x/e+vQXyzy7iLMrGKm7a9WG8bK8el7ScARdnDLdbY8LYFU/U0m087zY6sgq1mhb35531ljlgpCTKxOP5ggxnpBgUwjH3kck5rI8KpwcneRxMwIDAQAB" },
#    { record_name = "pen-test.celonis.cloud.", record_type = "NS", proxy_enabled = false, create_wildcard = false, record_target = "ns-1217.awsdns-24.org." },
#    { record_name = "pen-test.celonis.cloud.", record_type = "NS", proxy_enabled = false, create_wildcard = false, record_target = "ns-2038.awsdns-62.co.uk." },
#    { record_name = "pen-test.celonis.cloud.", record_type = "NS", proxy_enabled = false, create_wildcard = false, record_target = "ns-454.awsdns-56.com." },
#    { record_name = "pen-test.celonis.cloud.", record_type = "NS", proxy_enabled = false, create_wildcard = false, record_target = "ns-920.awsdns-51.net." },
#    { record_name = "ph7naorv7amlpsmup5fwuwe3dmqymtb4._domainkey.celonis.cloud.", record_type = "CNAME", proxy_enabled = false, create_wildcard = false, record_target = "ph7naorv7amlpsmup5fwuwe3dmqymtb4.dkim.amazonses.com." },
#    { record_name = "priv-mtk.celonis.cloud.", record_type = "NS", proxy_enabled = false, create_wildcard = false, record_target = "ns-1344.awsdns-40.org." },
#    { record_name = "priv-mtk.celonis.cloud.", record_type = "NS", proxy_enabled = false, create_wildcard = false, record_target = "ns-1961.awsdns-53.co.uk." },
#    { record_name = "priv-mtk.celonis.cloud.", record_type = "NS", proxy_enabled = false, create_wildcard = false, record_target = "ns-310.awsdns-38.com." },
#    { record_name = "priv-mtk.celonis.cloud.", record_type = "NS", proxy_enabled = false, create_wildcard = false, record_target = "ns-860.awsdns-43.net." },
#    { record_name = "proxy-farm-eu.celonis.cloud.", record_type = "CNAME", proxy_enabled = false, create_wildcard = false, record_target = "squid-lb-6ecf61c7a0f98b71.elb.eu-central-1.amazonaws.com." },
#    { record_name = "pypi.celonis.cloud.", record_type = "NS", proxy_enabled = false, create_wildcard = false, record_target = "ns-1437.awsdns-51.org." },
#    { record_name = "pypi.celonis.cloud.", record_type = "NS", proxy_enabled = false, create_wildcard = false, record_target = "ns-1941.awsdns-50.co.uk." },
#    { record_name = "pypi.celonis.cloud.", record_type = "NS", proxy_enabled = false, create_wildcard = false, record_target = "ns-408.awsdns-51.com." },
#    { record_name = "pypi.celonis.cloud.", record_type = "NS", proxy_enabled = false, create_wildcard = false, record_target = "ns-649.awsdns-17.net." },
#    { record_name = "python.celonis.cloud.", record_type = "A", proxy_enabled = false, create_wildcard = false, record_target = "89.31.143.1" },
#    { record_name = "redirect.celonis.cloud.", record_type = "NS", proxy_enabled = false, create_wildcard = false, record_target = "ns-1399.awsdns-46.org." },
#    # TO-ENABLE post (hybrid?) ssh deployment
#    #{ record_name = "ssh.beta-azure.celonis.cloud", record_type = "A", proxy_enabled = false, create_wildcard = true, record_target = "" },    
#    { record_name = "ae-1.celonis.cloud", record_type = "CNAME", proxy_enabled = true, create_wildcard = true, record_target = "maingw-uaenorth-main-ee61d67.uaenorth.cloudapp.azure.com" },
#  ]
#}
#variable "spectrum_apps" {
#  type        = list(map(string))
#  description = "Spectrum applications for celonis.cloud"
#  default = [
#    { protocol = "tcp/443", traffic_type = "https", dns_type = "ADDRESS", spectrum_dns_name = "spectrum-eu.celonis.cloud", spectrum_origin_record = "vwag-origin.celonis.cloud", spectrum_origin_port = 443, edge_ips_type = "static", edge_ips_ips = "172.65.64.56,172.65.64.57", ip_firewall = "false" },
#    { protocol = "tcp/80", traffic_type = "http", dns_type = "ADDRESS", spectrum_dns_name = "spectrum-eu.celonis.cloud", spectrum_origin_record = "vwag-origin.celonis.cloud", spectrum_origin_port = 80, edge_ips_type = "static", edge_ips_ips = "172.65.64.56,172.65.64.57", ip_firewall = "false" }
#  ]
#}
#variable "spectrum_origin_rules" {
#  type        = list(map(string))
#  description = "Spectrum Origin Rules for EU realms"
#  default = [
#    { ruleset_name = "bnpp-origin", realm_hostname = "bnpp.celonis.cloud", realm_origin_record = "bnpp-origin.celonis.cloud", realm_record_type = "CNAME", realm_origin = "a83bc716ec6b2491dad78cedc0f6155f-1516940104.eu-central-1.elb.amazonaws.com" },
#    { ruleset_name = "ericsson-origin", realm_hostname = "ericsson.celonis.cloud", realm_origin_record = "ericsson-origin.celonis.cloud", realm_record_type = "CNAME", realm_origin = "ae5f97a2dcc2346bba24e02dc693516b-417416010.eu-west-1.elb.amazonaws.com" },
#    { ruleset_name = "eu-1-origin", realm_hostname = "eu-1.celonis.cloud", realm_origin_record = "eu-1-origin.celonis.cloud", realm_record_type = "CNAME", realm_origin = "k8s-eu1-maingate-b0c5887b6f-f50928692394499a.elb.eu-central-1.amazonaws.com" },
#    { ruleset_name = "eu-5-origin", realm_hostname = "eu-5.celonis.cloud", realm_origin_record = "eu-5-origin.celonis.cloud", realm_record_type = "CNAME", realm_origin = "main-gateway-ems-lb-53ed3018c9a83cf8.elb.eu-central-1.amazonaws.com" },
#    { ruleset_name = "vwag-origin", realm_hostname = "vwag.celonis.cloud", realm_origin_record = "vwag-origin.celonis.cloud", realm_record_type = "CNAME", realm_origin = "main-gateway-ems-lb-c3a8f1e696fafda1.elb.eu-central-1.amazonaws.com" },
#    { ruleset_name = "ferrero-origin", realm_hostname = "ferrero.celonis.cloud", realm_origin_record = "ferrero-origin.celonis.cloud", realm_record_type = "CNAME", realm_origin = "a60090893a24143dea1ff7633e797d3a-975672223.eu-central-1.elb.amazonaws.com" },
#    { ruleset_name = "wirtgen-group-origin", realm_hostname = "wirtgen-group.celonis.cloud", realm_origin_record = "wirtgen-group-origin.celonis.cloud", realm_record_type = "CNAME", realm_origin = "main-gateway-ems-lb-6258a839fc7a797c.elb.eu-central-1.amazonaws.com" },
#    { ruleset_name = "bp-origin", realm_hostname = "bp.celonis.cloud", realm_origin_record = "bp-origin.celonis.cloud", realm_record_type = "CNAME", realm_origin = "ad2d23eec63e5487eb907cbaafcb0d33-c9d5192b27828d18.elb.eu-central-1.amazonaws.com" },
#    { ruleset_name = "mercedes-benz-origin", realm_hostname = "mercedes-benz.celonis.cloud", realm_origin_record = "mercedes-benz-origin.celonis.cloud", realm_record_type = "A", realm_origin = "20.113.12.197" },
#    { ruleset_name = "uk-1-origin", realm_hostname = "uk-1.celonis.cloud", realm_origin_record = "uk-1-origin.celonis.cloud", realm_record_type = "A", realm_origin = "131.145.56.13" },
#    { ruleset_name = "eu-3-origin-integromat-admin", realm_hostname = "integromat-admin.eu-3.celonis.cloud", realm_origin_record = "eu-3-origin-integromat-admin.celonis.cloud", realm_record_type = "A", realm_origin = "131.189.136.47" },
#    { ruleset_name = "eu-3-origin", realm_hostname = "eu-3.celonis.cloud", realm_origin_record = "eu-3-origin.celonis.cloud", realm_record_type = "A", realm_origin = "20.218.105.182" },
#    { ruleset_name = "eu-4-origin", realm_hostname = "eu-4.celonis.cloud", realm_origin_record = "eu-4-origin.celonis.cloud", realm_record_type = "CNAME", realm_origin = "acb549a7bc7584b4ea8f5e43df94f1de-89d7ace56ea00610.elb.eu-central-1.amazonaws.com" },
#    { ruleset_name = "eu-2-origin", realm_hostname = "eu-2.celonis.cloud", realm_origin_record = "eu-2-origin.celonis.cloud", realm_record_type = "A", realm_origin = "9.163.67.100" },
#    { ruleset_name = "medtronic-origin", realm_hostname = "medtronic.celonis.cloud", realm_origin_record = "medtronic-origin.celonis.cloud", realm_record_type = "CNAME", realm_origin = "main-gateway-ems-lb-144b4cf8c47a6d4f.elb.eu-central-1.amazonaws.com." },
#    { ruleset_name = "mf-origin", realm_hostname = "translation.mf.celonis.cloud", realm_origin_record = "mf-origin.celonis.cloud", realm_record_type = "A", realm_origin = "51.116.232.40" },
#    { ruleset_name = "aldi-sued-origin", realm_hostname = "aldi-sued.celonis.cloud", realm_origin_record = "aldi-sued-origin.celonis.cloud", realm_record_type = "A", realm_origin = "20.113.79.110" },
#    { ruleset_name = "ch-1-origin", realm_hostname = "ch-1.celonis.cloud", realm_origin_record = "ch-1-origin.celonis.cloud", realm_record_type = "CNAME", realm_origin = "main-gateway-ems-lb-4e384e8c685945a8.elb.eu-central-2.amazonaws.com" },
#    { ruleset_name = "scania-origin", realm_hostname = "scania.celonis.cloud", realm_origin_record = "scania-origin.celonis.cloud", realm_record_type = "CNAME", realm_origin = "main-gateway-ems-lb-022cf45db9af3a36.elb.eu-north-1.amazonaws.com" },
#    { ruleset_name = "valeo-origin", realm_hostname = "valeo.celonis.cloud", realm_origin_record = "valeo-origin.celonis.cloud", realm_record_type = "CNAME", realm_origin = "main-gateway-ems-lb-cbebafc3a0f64ba8.elb.eu-west-1.amazonaws.com" },
#  ]
#}

#variable "customized_ciphers_hostname_list" {
#  type = list(string)
#  default = [
#    "bofa.celonis.cloud", "*.bofa.celonis.cloud"
#  ]
#}
