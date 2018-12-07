#!/usr/bin/env roseus
(require :unittest "lib/llib/unittest.l")
(ros::load-ros-manifest "geneus")

(init-unit-test)

(deftest test-generate-message
  (let ((msg (instance geneus::testMsg :init))) 
    (assert geneus::testMsg::*TRUE_FLAG*
            (format nil "true flag value: ~A" geneus::testMsg::*TRUE_FLAG*))
    (assert (null geneus::testMsg::*FALSE_FLAG*)
            (format nil "false value: ~A" geneus::testMsg::*FALSE_FLAG*))))

(run-all-tests)
(exit)
