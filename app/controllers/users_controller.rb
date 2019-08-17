class UsersController < ApplicationController
  def new
    require 'date'

    @user = User.new
    @user.lesson_kaisu = 0
    @user.join_date = Date.today
    @user.lesson_nobekaisu = 0
    @user.firstname = '太郎'
    @user.lastname = '漢字'
    @user.kanji_name = '漢字　太郎'
    @user.name_kana = 'カンジ　タロウ'
    @user.email = 'vmak8160@gmail.com'
    @user.email2 = 'ha_arcadia66@yahoo.co.jp'
    @user.age = '15'
    @user.address = '名古屋市中区栄三丁目１１番地'
    @user.zip_code = '460-0008'
    @user.mobile_phone = '090-1234-5689'
    @user.emagency_phone = '080-1234-7890'
    @user.emagency_name = '漢字　総一郎'
    @user.emagency_kana = 'カンジ　ソウイチロウ'
    @user.emagency_zokugara = '祖父'
    

  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, success: '登録が完了しました'
    else
      flash.now[:danger] = "登録に失敗しました"
      render :new
    end
    
  end

  def confirm
    #  確認画面作る
    @user = User.new(user_params)

    if @user.valid?
      @password=user_params[:password]
      render :confirm
    else
      flash.now[:danger] = "入力に不備があります。登録に失敗しました"
      render :new
    end
    
  end

  private
  ##def user_params
  ##  params.require(:user).permit(:username, :email)
  ##end
  def user_params
    ##params.require(:user).permit(:username, :email, :password, :password_confirmation)
    params.require(:user).permit(:username, :email, :address, :lesson_styles_id,
                                 :level_kibous_id, :level_kakuteis_id, :fee_howtos_id, :pinano_owned_id, :pinano_histories_id,
                                 :kanji_name, :name_kana, :firstname, :lastname, :email2, :age, :zip_code, 
                                 :mobile_phone, :emagency_phone, :emagency_name, :emagency_kana, 
                                 :emagency_zokugara, :lesson_kaisu, :lesson_nobekaisu, :join_date,
                                 :password, :password_confirmation)
  end
end
