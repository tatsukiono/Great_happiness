crumb :root do
  link "トップページ", root_path
end

crumb :users do
  link "マイページ", users_path(current_user)
end

crumb :users_likes do
  link "いいね一覧", likes_users_path
  parent :users
end

crumb :users_new_theme do
  link "お題の作成", new_theme_path
  parent :users
end

crumb :themes do
  link "詳細", theme_path
end

crumb :comment do
  link "投稿", new_theme_comment_path
  # parent :themes
end



# crumb :users do
#   link "いいね一覧", likes_users_path
# end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).