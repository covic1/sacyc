class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :descripcion
      t.string :urlImg
      t.float :precio
      t.timestamps
    end
  end

  	def self.up
      SystemSetting.create :descripcion => "chilaquiles", :urlImg => "https://cdn2.cocinadelirante.com/sites/default/files/styles/gallerie/public/images/2017/06/chilaquilesrojosbajosengrasa.jpg", :precio => 20.0
      SystemSetting.create :descripcion => "Enchiladas", :urlImg => "https://www.superama.com.mx/views/micrositio/recetas/images/masbuscadas/enchiladasphiladelphia/Web_fotoreceta.jpg", :precio => 10.0
      SystemSetting.create :descripcion => "Alitas", :urlImg => "https://cdn2.cocinadelirante.com/sites/default/files/styles/gallerie/public/images/2018/02/comohaceralitas.jpg", :precio => 30.0
    end
end
