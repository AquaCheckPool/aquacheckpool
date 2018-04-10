class Pool < ApplicationRecord
    has_many :ph
    has_many :cl2
    has_many :temp
    has_many :admin

    def last_ph
        return Ph.where(pool_id: self.id).last
    end
    def last_cl2
        return Cl2.where(pool_id: self.id).last
    end
    def last_temp
        return Temp.where(pool_id: self.id).last
    end
end
