class Season < ApplicationRecord
    has_many :plans
    validates :name, presence: true

    # Este metodo soluciona la comparación de meses para identificar la temporada.
    # Analizar la necesidad de remover los campos start_date y end_date en tabla seasons.
    def months
        if self.name == 'Alta'
            [11,12,1,2,3]
        else
            [4,5,6,7,8,9,10]
        end
    end
end
