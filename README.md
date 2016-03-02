

## Installation

```
gem install iron_titan
```

Or add `gem "iron_titan"` to your Gemfile.

## Usage

```ruby
IronTitan.configure do |config|
  config.host = "192.168.99.100:8080"
  config.scheme = "http"
end

@titan = IronTitan::JobsApi.new
```

Then use it:

```ruby
# Post a job
r = @titan.jobs_post(jobs: [{
  image: 'treeder/echo:latest',
  delay: 5,
  payload: {input: 'Test Input'}.to_json
  }])
input_string = "Test Input"
job = r.jobs[0]
p job

# Get job status
job = @titan.job_id_get(job.id).job
puts job.status

# Get logs
log = @titan.job_id_log_get(r_payload.jobs[0].id).log
p log
```

## Building/testing this Gem

This gem is built from the main Titan repo.
