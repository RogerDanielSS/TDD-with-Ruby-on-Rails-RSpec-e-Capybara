# frozen_string_literal: true

describe  'Matcher output' do
  it { expect{ puts 'Roger Roger' }.to output.to_stdout }
  it { expect{ print 'Roger Roger' }.to output('Roger Roger').to_stdout }
  it { expect{ print 'Roger Roger' }.to output(/Roger/).to_stdout }

  it { expect{ warn 'Roger Roger' }.to output.to_stderr }
  # it { expect{ warn 'Roger Roger' }.to output('Roger Roger\\').to_stderr }
  it { expect{ warn 'Roger Roger' }.to output(/Roger/).to_stderr }
end
