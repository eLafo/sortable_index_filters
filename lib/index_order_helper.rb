module IndexOrderHelper 

  def sortable_field_header(header, field)
    link_to(header, :action => :index, :index_order_field => field.to_s, :index_order_direction => get_sortable_field_order(field.to_s)[:index_order_direction], :filter => @filter)
  end

  private

  def get_sortable_field_order(field_name)
    order_hash = {:index_order_field => field_name}
    if @index_order_field == field_name
      order_hash[:index_order_direction] = (@index_order_direction == 'ASC' ? 'DESC' : 'ASC')
    else
      order_hash[:index_order_direction] = 'ASC'
    end
    order_hash
  end
end
