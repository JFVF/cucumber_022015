class Clients
 
    def initialize
         $client_hash= Hash.new
         $totalPrices_hash= Hash.new
    end

    def fillClientListHashMap(id, client)
         $client_hash[id] = client
    end

    def fillTotalPriceHashMap(id, totalPriced)
         $totalPrices_hash[id] = totalPriced
    end

    def getClientHashMap
        return $client_hash
    end

     def getTotalPricetHashMap
        return $totalPrices_hash
    end
 end  

def clients_instance
    $clients_instance ||= Clients.new
end
