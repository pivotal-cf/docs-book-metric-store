# Redirect all production http traffic to https
r301 %r{.*}, 'https://docs.pivotal.io$&', :if => Proc.new { |rack_env|
  rack_env['SERVER_NAME'] == 'docs.pivotal.io' && rack_env['HTTP_X_FORWARDED_PROTO'] == 'http'
}

# Redirects for docs-book-metric-store

r301 %r{/metric-store/(?![\d-]+)(.*)}, "https://docs.vmware.com/en/Metric-Store/1.5/metric-store/GUID-index.html"

# Redirect from docs.pivotal.io/metric-store/1-3 to docs.vmware.com Metric Store docs
r301  %r{/metric-store/1-3/(.*)}, "https://docs.vmware.com/en/Metric-Store/1.3/metric-store/GUID-$1"
r301  %r{/metric-store/1-3/}, "https://docs.vmware.com/en/Metric-Store/1.3/metric-store/GUID-index.html"
r301  %r{/metric-store/1-3}, "https://docs.vmware.com/en/Metric-Store/1.3/metric-store/GUID-index.html"

# Redirect from docs.pivotal.io/metric-store/1-4 to docs.vmware.com Metric Store docs
r301  %r{/metric-store/1-4/(.*)}, "https://docs.vmware.com/en/Metric-Store/1.4/metric-store/GUID-$1"
r301  %r{/metric-store/1-4/}, "https://docs.vmware.com/en/Metric-Store/1.4/metric-store/GUID-index.html"
r301  %r{/metric-store/1-4}, "https://docs.vmware.com/en/Metric-Store/1.4/metric-store/GUID-index.html"

# Redirect from docs.pivotal.io/metric-store/1-5 to docs.vmware.com Metric Store docs
r301  %r{/metric-store/1-5/(.*)}, "https://docs.vmware.com/en/Metric-Store/1.5/metric-store/GUID-$1"
r301  %r{/metric-store/1-5/}, "https://docs.vmware.com/en/Metric-Store/1.5/metric-store/GUID-index.html"
r301  %r{/metric-store/1-5}, "https://docs.vmware.com/en/Metric-Store/1.5/metric-store/GUID-index.html"
