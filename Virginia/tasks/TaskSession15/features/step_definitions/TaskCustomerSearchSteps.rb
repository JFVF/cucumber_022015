Given(/^I stored information of client (\d+) (\w+) \$(\d+)$/) do |id, name, totalPriced|
  clients_instance.fillClientListHashMap(id, name)
  clients_instance.fillTotalPriceHashMap(id, totalPriced)
  p "print 1 has #{clients_instance.getClientHashMap}"
  p "print 2 has #{clients_instance.getTotalPricetHashMap}"
end

When(/^I search "(\w+)"$/) do |keyword|
  @keyword = keyword
end

Then(/^The client should exist in the client list$/) do
    puts "kewyword #{@keyword}"
    p "print 11 has #{clients_instance.getClientHashMap}"
    p "print 22 has #{clients_instance.getTotalPricetHashMap}"

    expect(clients_instance.getClientHashMap.has_value?(@keyword)).to be true
end