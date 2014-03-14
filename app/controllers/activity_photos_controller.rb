class ActivityPhotosController < AdminController
  # GET /activity_photos
  # GET /activity_photos.json
  def index
    @activity_photos = ActivityPhoto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @activity_photos }
    end
  end

  # GET /activity_photos/1
  # GET /activity_photos/1.json
  def show
    @activity_photo = ActivityPhoto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @activity_photo }
    end
  end

  # GET /activity_photos/new
  # GET /activity_photos/new.json
  def new
    @activity_photo = ActivityPhoto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @activity_photo }
    end
  end

  # GET /activity_photos/1/edit
  def edit
    @activity_photo = ActivityPhoto.find(params[:id])
  end

  # POST /activity_photos
  # POST /activity_photos.json
  def create
    @activity_photo = ActivityPhoto.new(params[:activity_photo])

    respond_to do |format|
      if @activity_photo.save
        format.html { redirect_to @activity_photo, notice: 'Activity photo was successfully created.' }
        format.json { render json: @activity_photo, status: :created, location: @activity_photo }
      else
        format.html { render action: "new" }
        format.json { render json: @activity_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /activity_photos/1
  # PUT /activity_photos/1.json
  def update
    @activity_photo = ActivityPhoto.find(params[:id])

    respond_to do |format|
      if @activity_photo.update_attributes(params[:activity_photo])
        format.html { redirect_to @activity_photo, notice: 'Activity photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @activity_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_photos/1
  # DELETE /activity_photos/1.json
  def destroy
    @activity_photo = ActivityPhoto.find(params[:id])
    @activity_photo.destroy

    respond_to do |format|
      format.html { redirect_to activity_photos_url }
      format.json { head :no_content }
    end
  end
end
