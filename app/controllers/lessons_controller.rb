class LessonsController < ApplicationController

  

  # GET /lessons
  # GET /lessons.json
  def index
    @lessons = self.getAllLessons

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lessons }
    end
  end

  # GET /lessons/1
  # GET /lessons/1.json
  def show
    @lesson = Lesson.find(params[:id])
    @lessons = self.getAllLessons
    if (session[:user_id])
    @current_user = User.find(session[:user_id])
    end
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lesson }
    end
  end

  # GET /lessons/new
  # GET /lessons/new.json
  def new
    @lesson = Lesson.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lesson }
    end
  end

  # GET /lessons/1/edit
  def edit
    @lesson = Lesson.find(params[:id])
  end

  # POST /lessons
  # POST /lessons.json
  def create
    @lesson = Lesson.new(params[:lesson])
    
    
    respond_to do |format|
      if @lesson.save
        format.html { redirect_to @lesson, notice: 'Lesson was successfully created.' }
        format.json { render json: @lesson, status: :created, location: @lesson }

        if not @lesson.prev.nil?
          prevLesson = Lesson.find(@lesson.prev)
          prevLesson.next = @lesson.id
          prevLesson.save!
        end

        if not @lesson.next.nil?
          nextLesson = Lesson.find(@lesson.next)
          nextLesson.prev = @lesson.id
          nextLesson.save!
        end

      else
        format.html { render action: "new" }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lessons/1
  # PUT /lessons/1.json
  def update
    @lesson = Lesson.find(params[:id])

    respond_to do |format|
      if @lesson.update_attributes(params[:lesson])
        format.html { redirect_to @lesson, notice: 'Lesson was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lessons/1
  # DELETE /lessons/1.json
  def destroy
    @lesson = Lesson.find(params[:id])

    if @lesson.prev.present? 
      prevLesson = Lesson.find(@lesson.prev)
    end
      
    if @lesson.prev.present?
      nextLesson = Lesson.find(@lesson.next)
    end

    if prevLesson.present? and nextLesson.present?
      prevLesson.next = nextLesson.id
      prevLesson.save!

      nextLesson.prev = prevLesson.id
      nextLesson.save!
    elsif nextLesson.present?
      nextLesson.prev = nil
    elsif prevLesson.present?
      prevLesson.next = nil
    end

    @lesson.destroy

    respond_to do |format|
      format.html { redirect_to lessons_url }
      format.json { head :ok }
    end
  end

  def mark_lesson               #Method used for marking lessons that we have already completed
    current_lesson_id = params[:id]
    current_lesson = Lesson.find(current_lesson_id)
    if(session[:user_id])
      current_user = User.find(session[:user_id])
      #current_user.lessons                   #Contains all the lessons this user has completed
      current_user.lessons << current_lesson
      redirect_to lesson_path(current_lesson_id), :notice => "Module marked completed"
    else
      redirect_to lesson_path(current_lesson_id), :notice => "Please Log in to track progress" 
    end 
  end

  protected
  def getAllLessons
    lessons =  []
    if Lesson.count > 0
      nextLessonId = Lesson.first.id
      while not nextLessonId.nil?
        nextLesson = Lesson.find(nextLessonId)
        lessons.push(nextLesson)
        nextLessonId = nextLesson.next
      end
    end
    return lessons
  end 

end
