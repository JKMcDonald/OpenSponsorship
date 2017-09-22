get "/" do
  @athletes = Athlete.order("created_at DESC") || ["No current Athletes"]
  erb :"athletes/index"
end

get "/athletes/create" do
  erb :"athletes/new"
end

post "/athletes" do
  
  @athlete = Athlete.new(params[:athlete])
    if @athlete.save
      if request.xhr?
        erb :"athletes/index", layout: false, locals: {athlete: @athlete}
      else
        redirect "/athletes/#{@athlete.id}"
      end
    else
      erb :"athletes/new"
    end
  end

  get "/athletes/:id" do
    @athlete = Athlete.find(params[:id])
    if request.xhr?
      erb :"/athletes/show", layout: false
    else
      erb :"/athletes/show"
    end
  end

  put "/athletes"