require 'roo'

class AdminController < ApplicationController
  layout 'admin'
  before_action :authenticate_admin!

  def index
  end

  def settings
    @subjects = Subject.order("updated_at DESC").all
    @majors = Major.order("updated_at DESC").all
    @company_types = CompanyType.order("updated_at DESC").all
    @company_scales = CompanyScale.order("updated_at DESC").all
    @post_types = PostType.order("updated_at DESC").all
    @post_sub_types = PostSubType.order("updated_at DESC").all
  end

  def import_student_accounts
    uploaded_io = nil

    if params[:admin]
      uploaded_io = params[:admin][:student_infos]
    end

    begin
      if uploaded_io
        uploaded_io.original_filename = 'data.ods'
        save_file uploaded_io

        read_excel_data uploaded_io
      else
        redirect_to :back, notice: "未导入数据！" and return
      end
=begin
    rescue
      redirect_to :back, notice: "导入失败！" and return
=end
    end

    redirect_to :back, notice: "导入成功！"
  end

  private

  def save_file(uploaded_io)
    File.open(Rails.root.join('public', 'uploads', 'tmp', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
    end
  end

  def read_excel_data(uploaded_io)
    oo = Roo::OpenOffice.new("public/uploads/tmp/#{uploaded_io.original_filename}")
    oo.default_sheet = oo.sheets.first
    2.upto(oo.last_row) do |line|
      name = oo.cell(line, 'A')
      student_id = oo.cell(line, 'B')
      gender = oo.cell(line, 'D')
      major = oo.cell(line, 'E')
      subject = oo.cell(line, 'F')
      grade = oo.cell(line, 'G')
      age = oo.cell(line, 'H')
      social_id = oo.cell(line, 'I')
      telephone = oo.cell(line, 'J')
      qq = oo.cell(line, 'K')
      email = oo.cell(line, 'L')
      address = oo.cell(line, 'M')

      Student.create(:email => email,
                     :password => '111111',
                     :password_confirmation => '111111',
                     :name => name,
                     :student_id => student_id,
                     :age => age,
                     :telephone => telephone,
                     :tencent_qq => qq,
                     :address => address,
                     :social_id => social_id)
    end
  end
end
