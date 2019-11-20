## [Unreleased]

# 0.10.0

- [ADDED] Phones endpoint ([#33](https://github.com/christopherstyles/ngp_van/pull/33) by @kinsomicrote).
- [ADDED] Saved Lists endpoint ([#34](https://github.com/christopherstyles/ngp_van/pull/34) by @kinsomicrote).
- [ADDED] Additional people endpoints ([#37](https://github.com/christopherstyles/ngp_van/pull/37) by @kinsomicrote).
- [ADDED] Export Jobs endpoints ([#38](https://github.com/christopherstyles/ngp_van/pull/38) by @kinsomicrote).

# 0.9.0

Release date: 2019-10-02

- [ADDED] Stories endpoint ([#31](https://github.com/christopherstyles/ngp_van/pull/31) by @kinsomicrote).

# 0.8.0

Release date: 2019-05-02

- [ADDED] Support for deleting [supporter groups](https://developers.everyaction.com/van-api#supporter-groups-delete-supportergroups--supportergroupid) ([#29](https://github.com/christopherstyles/ngp_van/pull/29) by @lavaturtle).
- [ADDED] Support for [applying](https://developers.everyaction.com/van-api#people-post-people--vanid--codes) and [deleting](https://developers.everyaction.com/van-api#people-delete-people--vanid--codes--codeid) codes from people ([#30](https://github.com/christopherstyles/ngp_van/pull/30) by @lavaturtle).

# 0.7.0

Release date: 2019-03-29

- [CHANGED] Renamed `History.md` to `CHANGELOG.md` for easier disovery.
- [SECURITY] Ensure passed ids are valid ([#14](https://github.com/christopherstyles/ngp_van/pull/14)). Many thanks to @woodhull for the pointer!

# 0.6.0

Release date: 2019-02-27

- [ADDED][reported demographics](https://developers.ngpvan.com/van-api#reported-demographics) endpoint ([#12](https://github.com/christopherstyles/ngp_van/pull/12) by @lavaturtle)
- [ADDED] Support for Ruby 2.6.0 and Travis configuration update to test only against stable rubies ([#13](https://github.com/christopherstyles/ngp_van/pull/13)).

# 0.5.0

Release date: 2018-11-28

- [ADDED][supporter groups](https://developers.everyaction.com/van-api#supporter-groups) endpoint ([#11](https://github.com/christopherstyles/ngp_van/pull/11) by @lavaturtle and @anero)

# 0.4.0

Release date: 2018-11-15

- [ADDED] Store parsed errors from response on `NgpVan::Error` ([#8](https://github.com/christopherstyles/ngp_van/pull/8) by @anero)

# 0.3.0

Release date: 2018-11-14

- [ADDED] Echoes endpoint ([#10](https://github.com/christopherstyles/ngp_van/pull/10) by @anero and @woodhull)

# 0.2.0

Release date: 2018-11-07

- [ADDED] Ability to vary configuration per client object ([#9](https://github.com/christopherstyles/ngp_van/pull/9) by @anero)

# 0.1.4

Release date: 2018-05-02

- [CHANGED] Circle CI has been replaced with Travis CI for continuous integration.
- [CHANGED] Gem dependencies have been moved to the Gemfile.
- [REMOVED] The deprecated 'codeclimate-test-reporter' gem has been removed.
- [ADDED] Simplecov has been added for generating code coverage. This can be read by the codeclimate’s updated, unified, test reporter client.

# 0.1.3

Release date: 2018-05-01

- [CHANGED] Version dependencies have been loosened for faraday and faraday_middleware so that newer versions can be installed.

# 0.1.2

Release date: 2016-07-04

- [ADDED] Badges have been added to the README for circleci (pass/fail status), code climate (test coverage and overall GPA), inch-ci (inline documentation coverage), and badge.fury.io (version indicator).
- [FIXED] `NgpVan.configuration` is now reset to default values after each example run.
- [REMOVED] `.travis.yml` [CircleCI](circleci.com) is now used for continuous integration.
- [REMOVED] Development dependencies for [Guard](https://github.com/guard/guard) have been removed.

# 0.1.1

Release date: 2016-03-25

- [ADDED] Support for installing with a trust policy.

# 0.1.0

Release date: 2016-03-22

- Initial release.
