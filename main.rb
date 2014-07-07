require 'opencv'
include OpenCV

# Windowの生成
input_window = GUI::Window.new('Input')
output_window = GUI::Window.new('Output')

# Webカメラから画像を取得
capture = OpenCV::CvCapture.open
input_img = capture.query.to_CvMat

# ２値化
output_img = input_img.BGR2GRAY.canny(120,200)

# Windowに表示
input_window.show input_img
output_window.show output_img

# キーを押すとwindowを閉じる
GUI::wait_key
GUI::Window.destroy_all

