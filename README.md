# About

This repo is a companion to the article _Ease into Ruby 3's static typing powers with RBS, TypeProf and Steep_ published in Semaphore's blog.

The v1 directory contains all Ruby code and type signatures discussed in the first sections of the article. The v2 directory has the improved implementation and signatures covered in the last part of the blog post.

To run Steep, `cd` into `v1` or `v2` and then run `steep check`.

If you want to directly run `working_day_calculator_test.rb` (`ruby ./working_day_calculator_test.rb`), keep in mind that it may be necessary to comment out certain lines of code added to this file to illustrate type errors while using the `WorkingDayCalculator` class.

This repository assumes Ruby 3.1.3 and Steep 1.3.
