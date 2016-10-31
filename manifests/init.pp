class dirtycow {
  if ($::operatingsystemmajrelease ==7) and (versioncmp($::kernelversion, "3.10.0-327.36.3") <= 0) {
    notify {"Dirty Cow":
      loglevel => alert,
      message  => "You are running a kernel vulnerable to Dirty Cow (CVE-2016-5195)"
    }
  }
  if ($::operatingsystemmajrelease ==6) and (versioncmp($::kernelversion, "2.6.32-642.6.2") <= 0) {
    notify {"Dirty Cow":
      loglevel => alert,
      message  => "You are running a kernel vulnerable to Dirty Cow (CVE-2016-5195)"
    }
  }
}

