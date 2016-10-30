|License| |Build Status| |SIMP compatibility|

SIMP Dirty Cow Puppet Component Module
=====================================

Table of Contents
-----------------

#. `Overview <#overview>`__
#. `Setup - The basics of getting started with simp_dirtycow <#setup>`__
#. `Limitations <#limitations>`__
#. `Development - Guide for contributing to the module <#development>`__

   -  `Acceptance Tests - Beaker env variables <#acceptance-tests>`__

Overview
--------

A module to check for vulnerbility to the Dirty Cow vulnerablity (CVE-CVE-2016-5195).

This is a SIMP component module
-------------------------------

This module is a component of the `System Integrity Management
Platform <https://github.com/NationalSecurityAgency/SIMP>`__, a
compliance oriented framework built on Puppet.

If you find any issues, they can be submitted to our
`JIRA <https://simp-project.atlassian.net/>`__.

Please read our `Contribution
Guide <https://simp-project.atlassian.net/wiki/display/SD/Contributing+to+SIMP>`__
and visit our `developer
wiki <https://simp-project.atlassian.net/wiki/display/SD/SIMP+Development+Home>`__.

As a component module, this module is not recommended for use outside of a SIMP
environment but may work with some minor modification.

Setup
-----

Limitations
-----------

This module has only been tested on Red Hat Enterprise Linux 6 and 7 and CentOS
6 and 7.

Development
-----------

Please see the `SIMP Contribution Guidelines <https://simp-project.atlassian.net/wiki/display/SD/Contributing+to+SIMP>`__.

Acceptance tests
^^^^^^^^^^^^^^^^

To run the system tests, you need
`Vagrant <https://www.vagrantup.com/>`__ installed. Then, run:

.. code:: shell

    bundle exec rake beaker:suites

Some environment variables may be useful:

.. code:: shell

    BEAKER_debug=true
    BEAKER_provision=no
    BEAKER_destroy=no
    BEAKER_use_fixtures_dir_for_modules=yes

-  ``BEAKER_debug``: show the commands being run on the STU and their
   output.
-  ``BEAKER_destroy=no``: prevent the machine destruction after the
   tests finish so you can inspect the state.
-  ``BEAKER_provision=no``: prevent the machine from being recreated.
   This can save a lot of time while you're writing the tests.
-  ``BEAKER_use_fixtures_dir_for_modules=yes``: cause all module
   dependencies to be loaded from the ``spec/fixtures/modules``
   directory, based on the contents of ``.fixtures.yml``. The contents
   of this directory are usually populated by
   ``bundle exec rake spec_prep``. This can be used to run acceptance
   tests to run on isolated networks.

.. _SIMP IPSec Module: https://github.com/simp/pupmod-simp-libreswan
.. |License| image:: http://img.shields.io/:license-apache-blue.svg
   :target: http://www.apache.org/licenses/LICENSE-2.0.html
.. |Build Status| image:: https://travis-ci.org/simp/pupmod-simp-simp_logstash.svg
   :target: https://travis-ci.org/simp/pupmod-simp-simp_logstash
.. |SIMP compatibility| image:: https://img.shields.io/badge/SIMP%20compatibility-4.2.*%2F5.1.*-orange.svg
   :target: https://img.shields.io/badge/SIMP%20compatibility-4.2.*%2F5.1.*-orange.svg
