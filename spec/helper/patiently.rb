module ToleranceForSeleniumSyncIssues
  RETRY_ERRORS = %w[
    BraverDeadError
  ]

  def patiently(seconds = 1, &block)
    start_time = Time.now

    begin
      block.call
    rescue Exception => e
      raise e unless RETRY_ERRORS.include?(e.class.name)
      raise e if (Time.now - start_time) >= seconds
      sleep(0.05)
      retry
    end
  end

  RSpec.configure { |c| c.include ToleranceForSeleniumSyncIssues }
end
