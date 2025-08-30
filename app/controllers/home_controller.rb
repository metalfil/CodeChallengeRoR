require 'csv'

class HomeController < ApplicationController
  def index
    calcular_total
  end

  def upload
    if params[:file].present?
      uploaded_file = params[:file]
      CSV.foreach(uploaded_file.path, headers: true, col_sep: "\t") do |row|
        # puts row.inspect #imprime en la terminal los datos
        cliente_name = row['Cliente'].strip.capitalize
        descr = row['Descripcion del Producto'].strip.capitalize
        price = row['Precio por pieza']
        seller_name = row['Nombre del Vendedor'].strip.capitalize
        address_seller = row['Dieccion del vendedor']
        # cantidad = row['Numero de piezas']

        buyer = Buyer.find_or_create_by(name: cliente_name)
        item = Item.find_or_create_by(
          description: descr,
          price: price
        )
        seller = Seller.find_or_create_by(
          name: seller_name,
          address: address_seller
        )

        Sale.create!(
          buyer: buyer,
          item: item,
          seller: seller,
          quantity: row['Numero de piezas'].to_i
        )
      end
    end
    redirect_to root_path
    #calcular_total
    #render :index
  end

  def calcular_total
    @sales = Sale.includes(:item).all #busca los precios de item
    @grand_total = if @sales.any? #si no tiene datos
      @sales.sum { |sale| sale.quantity * sale.item.price }
    else
      0
    end
  end

end