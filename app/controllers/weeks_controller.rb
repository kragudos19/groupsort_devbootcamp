class WeeksController < ApplicationController
  def show
    @week = Week.find(params[:id])
  end

  def edit
    @week = Week.find(params[:id])
  end

  def delete
  end

  def new
    @week = Week.new
  end

  def create
    @week = Week.new(week_params)
    if(@week.save)

    end
  end

  def update

    @week = Week.find(params[:id])
    p @groups = @week.groups
    p @student_groups = @week.student_groups
    p "-------------"
    p params[:groupsData].values
    p "------------"

    for i in 0..params[:length].to_i-1
      p params[:groupsData][i.to_s]
      g = Group.find(params[:groupsData][i.to_s][:group])

      for j in 0..params[:groupsData][i.to_s][:students].size-1
        # #student exists in group already
        s = StudentGroup.find_by(student_id: params[:groupsData][i.to_s][:students][j].to_i, group_id: params[:groupsData][i.to_s][:group].to_i)
        if(s)
          puts "student found!!!"
        # else
        #   StudentGroup.create(student_id: params[:key => "value", groupsData][i.to_s][:students][j].to_i, group_id: params[:groupsData][i.to_s][:group].to_i)
        end
        # #student has been added from group
        # #student has been removed from group
      end

    end

    # p params[:groupsData]["0"].values
    # p params[:groupsData]["1"].keys
    # p params[:groupsData]["2"].keys
    # p params[:groupsData]["3"].keys


    #need to implement logic into controller
    #how will we save table?

  end
end
