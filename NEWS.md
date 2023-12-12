# ora 2.0.3 (2023-12-12)

* Maintenance release.




# ora 2.0-1 (2014-04-10)

* desc() shows LAST_ANALYZED date (shown below table) as a string, not integer.




# ora 2.0-0 (2013-06-16)

* Renamed package from "ROracleUI" to "ora".

* Adapted to changes in ROracle 1.1-1 and later.

* Removed functions as.POSIXct.data.frame() and to_char(), since ROracle now
  imports time/date columns as POSIX objects.




# ROracleUI 1.3-2 (2011-04-11)

* Improved handling of ROracle error messages.




# ROracleUI 1.3-1 (2011-02-18)

* Improved robustness to space-like characters [ \f\n\r\t\v\240].




# ROracleUI 1.3-0 (2010-11-18)

* The '...' argument can be used to select user/pass/dbname in sql(), desc(),
  tables(), and views().

* Added argument 'encoding' to sql().

* desc() is robust to ambiguous table names.




# ROracleUI 1.2-0 (2010-09-10)

* Added argument 'stringsAsFactors' to sql().

* Renamed argument 'warnings' to 'warn' in sql().




# ROracleUI 1.1-3 (2010-08-27)

* Added Windows support.




# ROracleUI 1.0-0 (2010-01-23)

* Initial release.
