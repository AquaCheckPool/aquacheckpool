class Pool < ApplicationRecord
    has_many :ph
    has_many :cl2
    has_many :temp

    def last_ph
        return Ph.where(pool_id: self.id).last
    end
    def last_cl2
        return Cl2.where(pool_id: self.id).last
    end
    def last_temp
        return Temp.where(pool_id: self.id).last
    end

    #Define upper and lower limits from parameters
    def self.max_ph
        8.0
    end
    def self.min_ph
        6.0
    end
    def self.max_cl2
        3.5
    end
    def self.min_cl2
        2.5
    end
end
