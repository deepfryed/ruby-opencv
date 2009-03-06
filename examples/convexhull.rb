#!/usr/bin/env ruby
# convexhull.rb

require 'rubygems'
require "opencv"
require "pp"
include OpenCV

window = GUI::Window.new("thewindow", true)
pp CvCapture::INTERFACE
capture = CvCapture::open

accuracy = 0.1
t = window.set_trackbar("accuracy", 100, 1){|v|
  accuracy = 0.1 * v
}

while true
  key = GUI::wait_key(1)
  image = capture.query
  gray = image.BGR2GRAY
  bin = gray.threshold_binary(0x44, 0xFF)
  contours = bin.find_contours  
  while contours
    approx_contours = contours.approx_poly(:accuracy => accuracy)
    if approx_contours.nil?
      puts "No approx contours for accuracy #{accuracy}"
      approx_contours = contours
    end
    image.poly_line! approx_contours, :color => CvScalar::Red
    approx_contours.convexity_defects.each{|cd|
      image.circle! cd.start, 1, :color => CvScalar::Blue
      image.circle! cd.end, 1, :color => CvScalar::Blue
      image.circle! cd.depth_point, 1, :color => CvScalar::Blue
    }

    contours = contours.h_next
  end
  #pts = gray.good_features_to_track(0.01, 10)
  #puts pts.length
  window.show image  
  next unless key
  case key.chr
  when "\e"
    exit
  end
end
