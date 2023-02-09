class LearnerController < ApplicationController
  def new_learner
    if request.post?
      @intern = Intern.new(learner_params)
      if @intern.save
        flash[:notice]="Learner added"
        redirect_to :action=>:show_learner
      else 
        render :action=>:new_learner
      end
    end
  end

  def show_learner
    
  end

  private
  def learner_params
    params.permit(:name,:age,:mark1,:mark2,:mark3,:grade)
  end
end
