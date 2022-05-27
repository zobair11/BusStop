module Resource
  class Users < Grape::API
    resource :users do
      desc 'Save User(s)'
      params do
        requires :name,
                 type: String,
                 desc: 'Name of the passenger'
        # optional :phone_number,
        #          type: String,
        #          desc: 'Name of the passenger'
        # requires :gender,
        #          type: String,
        #          desc: 'Gender of the passenger'
        # requires :on_board_time,
        #          type: DateTime,
        #          desc: 'Datetime when the passenger gets in'
      end

      get :users do
        {
          name: params[:name]
        }
      end
    end
  end
end