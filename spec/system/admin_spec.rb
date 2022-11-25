require "rails_helper"

RSpec.describe "管理画面", type: :system do
  it "ログインしていないときはログインページにリダイレクトされる" do
    visit admin_root_path

    expect(page).to have_content "ログインもしくはアカウント登録してください。"
    expect(page).to have_current_path new_admin_user_session_path
  end
end
