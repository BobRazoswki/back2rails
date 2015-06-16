ENV['CODECLIMATE_REPO_TOKEN']='3c138f4b90367889524f1c171d9c0d9e0e895dc36bb318bd3137c6e816af7aaa'
require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

RSpec.configure do |config|

  config.use_transactional_fixtures = true
  
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end


end
