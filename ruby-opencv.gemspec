# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ruby-opencv}
  s.version = "0.0.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Masakazu Yonekura"]
  s.date = %q{2010-04-13}
  s.description = %q{OpenCV wrapper for Ruby.}
  s.email = %q{masakazu.yonekura@gmail.com}
  s.extensions = ["ext/extconf.rb"]
  s.extra_rdoc_files = ["CHANGELOG", "README.rdoc", "ext/curve.cpp", "ext/curve.h", "ext/cvavgcomp.cpp", "ext/cvavgcomp.h", "ext/cvbox2d.cpp", "ext/cvbox2d.h", "ext/cvcapture.cpp", "ext/cvcapture.h", "ext/cvchain.cpp", "ext/cvchain.h", "ext/cvchaincode.cpp", "ext/cvchaincode.h", "ext/cvcircle32f.cpp", "ext/cvcircle32f.h", "ext/cvcondensation.cpp", "ext/cvcondensation.h", "ext/cvconnectedcomp.cpp", "ext/cvconnectedcomp.h", "ext/cvcontour.cpp", "ext/cvcontour.h", "ext/cvcontourtree.cpp", "ext/cvcontourtree.h", "ext/cvconvexitydefect.cpp", "ext/cvconvexitydefect.h", "ext/cverror.cpp", "ext/cverror.h", "ext/cvfont.cpp", "ext/cvfont.h", "ext/cvhaarclassifiercascade.cpp", "ext/cvhaarclassifiercascade.h", "ext/cvhistogram.cpp", "ext/cvhistogram.h", "ext/cvindex.cpp", "ext/cvindex.h", "ext/cvline.cpp", "ext/cvline.h", "ext/cvmat.cpp", "ext/cvmat.h", "ext/cvmatnd.cpp", "ext/cvmatnd.h", "ext/cvmemstorage.cpp", "ext/cvmemstorage.h", "ext/cvmoments.cpp", "ext/cvmoments.h", "ext/cvpoint.cpp", "ext/cvpoint.h", "ext/cvpoint2d32f.cpp", "ext/cvpoint2d32f.h", "ext/cvpoint3d32f.cpp", "ext/cvpoint3d32f.h", "ext/cvrect.cpp", "ext/cvrect.h", "ext/cvscalar.cpp", "ext/cvscalar.h", "ext/cvseq.cpp", "ext/cvseq.h", "ext/cvset.cpp", "ext/cvset.h", "ext/cvsize.cpp", "ext/cvsize.h", "ext/cvsize2d32f.cpp", "ext/cvsize2d32f.h", "ext/cvslice.cpp", "ext/cvslice.h", "ext/cvsparsemat.cpp", "ext/cvsparsemat.h", "ext/cvtermcriteria.cpp", "ext/cvtermcriteria.h", "ext/cvtwopoints.cpp", "ext/cvtwopoints.h", "ext/cvvector.cpp", "ext/cvvector.h", "ext/cvvideowriter.cpp", "ext/cvvideowriter.h", "ext/extconf.rb", "ext/gui.cpp", "ext/gui.h", "ext/iplconvkernel.cpp", "ext/iplconvkernel.h", "ext/iplimage.cpp", "ext/iplimage.h", "ext/mouseevent.cpp", "ext/mouseevent.h", "ext/opencv.cpp", "ext/opencv.h", "ext/point3dset.cpp", "ext/point3dset.h", "ext/pointset.cpp", "ext/pointset.h", "ext/trackbar.cpp", "ext/trackbar.h", "ext/window.cpp", "ext/window.h", "lib/opencv.rb", "lib/version.rb"]
  s.files = ["CHANGELOG", "License.txt", "README.rdoc", "Rakefile", "examples/convexhull.rb", "examples/face_detect.rb", "examples/haarcascade_frontalface_alt.xml", "examples/houghcircle.rb", "examples/inpaint.png", "examples/inpaint.rb", "examples/paint.rb", "examples/snake.rb", "examples/stuff.jpg", "ext/curve.cpp", "ext/curve.h", "ext/cvavgcomp.cpp", "ext/cvavgcomp.h", "ext/cvbox2d.cpp", "ext/cvbox2d.h", "ext/cvcapture.cpp", "ext/cvcapture.h", "ext/cvchain.cpp", "ext/cvchain.h", "ext/cvchaincode.cpp", "ext/cvchaincode.h", "ext/cvcircle32f.cpp", "ext/cvcircle32f.h", "ext/cvcondensation.cpp", "ext/cvcondensation.h", "ext/cvconnectedcomp.cpp", "ext/cvconnectedcomp.h", "ext/cvcontour.cpp", "ext/cvcontour.h", "ext/cvcontourtree.cpp", "ext/cvcontourtree.h", "ext/cvconvexitydefect.cpp", "ext/cvconvexitydefect.h", "ext/cverror.cpp", "ext/cverror.h", "ext/cvfont.cpp", "ext/cvfont.h", "ext/cvhaarclassifiercascade.cpp", "ext/cvhaarclassifiercascade.h", "ext/cvhistogram.cpp", "ext/cvhistogram.h", "ext/cvindex.cpp", "ext/cvindex.h", "ext/cvline.cpp", "ext/cvline.h", "ext/cvmat.cpp", "ext/cvmat.h", "ext/cvmatnd.cpp", "ext/cvmatnd.h", "ext/cvmemstorage.cpp", "ext/cvmemstorage.h", "ext/cvmoments.cpp", "ext/cvmoments.h", "ext/cvpoint.cpp", "ext/cvpoint.h", "ext/cvpoint2d32f.cpp", "ext/cvpoint2d32f.h", "ext/cvpoint3d32f.cpp", "ext/cvpoint3d32f.h", "ext/cvrect.cpp", "ext/cvrect.h", "ext/cvscalar.cpp", "ext/cvscalar.h", "ext/cvseq.cpp", "ext/cvseq.h", "ext/cvset.cpp", "ext/cvset.h", "ext/cvsize.cpp", "ext/cvsize.h", "ext/cvsize2d32f.cpp", "ext/cvsize2d32f.h", "ext/cvslice.cpp", "ext/cvslice.h", "ext/cvsparsemat.cpp", "ext/cvsparsemat.h", "ext/cvtermcriteria.cpp", "ext/cvtermcriteria.h", "ext/cvtwopoints.cpp", "ext/cvtwopoints.h", "ext/cvvector.cpp", "ext/cvvector.h", "ext/cvvideowriter.cpp", "ext/cvvideowriter.h", "ext/extconf.rb", "ext/gui.cpp", "ext/gui.h", "ext/iplconvkernel.cpp", "ext/iplconvkernel.h", "ext/iplimage.cpp", "ext/iplimage.h", "ext/mouseevent.cpp", "ext/mouseevent.h", "ext/opencv.cpp", "ext/opencv.h", "ext/point3dset.cpp", "ext/point3dset.h", "ext/pointset.cpp", "ext/pointset.h", "ext/trackbar.cpp", "ext/trackbar.h", "ext/window.cpp", "ext/window.h", "images/CvMat_sobel.png", "images/CvMat_sub_rect.png", "images/CvSeq_relationmap.png", "images/face_detect_from_lena.jpg", "lib/opencv.rb", "lib/version.rb", "metadata", "ruby-opencv.gemspec", "setup/setup.cygwin.rb", "setup/setup.mingw.rb", "setup/setup.mswin32.rb", "test/test_opencv.rb", "Manifest"]
  s.homepage = %q{http://github.com/adamb/ruby-opencv}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Ruby-opencv", "--main", "README.rdoc"]
  s.require_paths = ["lib", "ext"]
  s.rubyforge_project = %q{ruby-opencv}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{OpenCV wrapper for Ruby.}
  s.test_files = ["test/test_opencv.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
