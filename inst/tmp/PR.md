## boostcodecov

This PR includes:

- :book: outline the vignettes.
- :book: few edits in README.
- :book: add `inst/ms` and `paper.md` within it is more or less the `.md` file found on https://joss.theoj.org/about#author_guidelines.
- :hammer: `spplus_baseurl()` renamed `sppplus_baseurl()` to meet our naming convention.
- :hammer: `sppplus_taxonconcept()` reviewed to take multi taxon concept entries into account.
- :hammer: `sppplus_simplify()` now tests dimensions of the data.table passed before doing anything to prevent
any issue with 0x0 data.table objects.
- :shield: add a test for multi taxon concept entries in `sppplus_taxonconcept()`
- :shield: another extra unit testing for `sppplus_taxonconcept()` to test not listed taxa.
- :shield: few unit testings of `zzz.R` helper functions.






## boostcodecov

This PR includes:

- :nut_and_bolt: argument `simplify` addded to `taxon_cites_legislation()`.
- :nut_and_bolt: argument `token` is always the last one.
- :nut_and_bolt: :book: documentations of `token` and `tax_id` have been reviewed.
- :hammer: :book: `sppplus_simply` has been reviewed, expanded and is now included in the documented functions.
- :hammer: `sppplus_special_case()` added to handle special case whose structure is know.
- :hammer: `sppplus_taxonconcept()` reviewed to ease its use when all data available are retrieved.
- :shield: unit testings for `taxon_cites_legislation()`.
- :shield: unit testings for `sppplus_taxonconcept()`.
- :shield: unit testings for `sppplus_references()`.
- :shield: unit testings for `sppplus_distribution()`.
- :shield: `ut_pause()` controls the pause duration between tests.
- :sparkles: add pause between tests.
- :sparkles: not-run examples are now standardized.
- :sparkles: add @ibartomeus and @KevCaz ORCIDs.
- :sparkles: switch to version 0.1.1.
- :book: a `.github` folder has been added, similar to the one of taxize https://github.com/ropensci/taxize/tree/master/.github
- :book: README.md has been reviewed to reflect the changes listed above.
- :book: README.md now lists contributors.


:book: documentation
:hammer: function
:wrench: method
:shield: test
:floppy_disk: data
:wastebasket: delete
:arrow_up: new version
:bug: bug
