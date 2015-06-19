# Sauce Platforms 
[![Gem Version](https://badge.fury.io/rb/sauce_platforms.svg)](https://rubygems.org/gems/sauce_platforms)
[![Build Status](https://travis-ci.org/bootstraponline/sauce_platforms.svg?branch=master)](https://travis-ci.org/bootstraponline/sauce_platforms/builds)
[![Coverage Status](https://coveralls.io/repos/bootstraponline/sauce_platforms/badge.svg?nocache)](https://coveralls.io/r/bootstraponline/sauce_platforms)
[![Dependency Status](https://gemnasium.com/bootstraponline/sauce_platforms.svg?nocache)](https://gemnasium.com/bootstraponline/sauce_platforms)

Dependency free DSL for specifying [Sauce Labs platforms](https://saucelabs.com/platforms/).  The gem is automatically generated before publishing to rubygems via `sauce_whisk.platforms(true)`.

RSpec tests are also automatically generated to ensure the method calls don't error. RSpec tests run on Travis.

#### Usage

`require 'sauce_platforms'`

- `Platform.mac_10_6.firefox.v7` - built in version numbers
- `Platform.mac_10_6.firefox.v'39'` - custom version number via `v` method

Example in Pry:

```ruby
require 'sauce_platforms'
> Platform.mac_10_6.chrome.v33
=> ["Mac 10.6", "chrome", "33"]

> Platform.mac_10_6.chrome.v'100'
=> ["Mac 10.6", "chrome", "100"]

# Invalid combinations correctly throw undefined method error
> Platform.mac_10_6.chrome.v999
NoMethodError: undefined method `v999` for Platform::Mac_10_6_chrome:Module
```

Advantages over magic strings:

- RubyMine auto completes the values
- A client side error is generated if an invalid combination is specified.

Intended to be used with the [sauce_ruby gem.](https://github.com/saucelabs/sauce_ruby)

#### Generate new platforms

- `ruby ./lib/sauce_platforms/generate_sauce_platforms.rb`

#### Test coverage

```
$ rspec

mac_10_6
  Platform.mac_10_6.ipad.v4_3
  Platform.mac_10_6.ipad.v5_0
  Platform.mac_10_6.firefox.v4
  Platform.mac_10_6.firefox.v5
  Platform.mac_10_6.firefox.v6
  Platform.mac_10_6.firefox.v7
  Platform.mac_10_6.firefox.v8
  Platform.mac_10_6.firefox.v9
  Platform.mac_10_6.firefox.v10
  Platform.mac_10_6.firefox.v11
  Platform.mac_10_6.firefox.v12
  Platform.mac_10_6.firefox.v13
  Platform.mac_10_6.firefox.v14
  Platform.mac_10_6.firefox.v15
  Platform.mac_10_6.firefox.v16
  Platform.mac_10_6.firefox.v17
  Platform.mac_10_6.firefox.v18
  Platform.mac_10_6.firefox.v19
  Platform.mac_10_6.firefox.v20
  Platform.mac_10_6.firefox.v21
  Platform.mac_10_6.firefox.v22
  Platform.mac_10_6.firefox.v23
  Platform.mac_10_6.firefox.v24
  Platform.mac_10_6.firefox.v25
  Platform.mac_10_6.firefox.v26
  Platform.mac_10_6.firefox.v27
  Platform.mac_10_6.firefox.v28
  Platform.mac_10_6.firefox.v29
  Platform.mac_10_6.firefox.v30
  Platform.mac_10_6.firefox.v31
  Platform.mac_10_6.firefox.v32
  Platform.mac_10_6.firefox.v33
  Platform.mac_10_6.firefox.v34
  Platform.mac_10_6.firefox.v35
  Platform.mac_10_6.firefox.v36
  Platform.mac_10_6.firefox.v37
  Platform.mac_10_6.firefox.beta
  Platform.mac_10_6.firefox.dev
  Platform.mac_10_6.iphone.v4_3
  Platform.mac_10_6.iphone.v5_0
  Platform.mac_10_6.safari.v5
  Platform.mac_10_6.chrome.v27
  Platform.mac_10_6.chrome.v28
  Platform.mac_10_6.chrome.v31
  Platform.mac_10_6.chrome.v32
  Platform.mac_10_6.chrome.v33
  Platform.mac_10_6.chrome.v34
  Platform.mac_10_6.chrome.v35
  Platform.mac_10_6.chrome.v36
  Platform.mac_10_6.chrome.v37
  Platform.mac_10_6.chrome.v38
  Platform.mac_10_6.chrome.v39
  Platform.mac_10_6.chrome.v40
  Platform.mac_10_6.chrome.v41
  Platform.mac_10_6.chrome.v42
  Platform.mac_10_6.chrome.v43
  Platform.mac_10_6.chrome.beta
  Platform.mac_10_6.chrome.dev

mac_10_9
  Platform.mac_10_9.ipad.v7_0
  Platform.mac_10_9.ipad.v7_1
  Platform.mac_10_9.firefox.v4
  Platform.mac_10_9.firefox.v5
  Platform.mac_10_9.firefox.v6
  Platform.mac_10_9.firefox.v7
  Platform.mac_10_9.firefox.v8
  Platform.mac_10_9.firefox.v9
  Platform.mac_10_9.firefox.v10
  Platform.mac_10_9.firefox.v11
  Platform.mac_10_9.firefox.v12
  Platform.mac_10_9.firefox.v13
  Platform.mac_10_9.firefox.v14
  Platform.mac_10_9.firefox.v15
  Platform.mac_10_9.firefox.v16
  Platform.mac_10_9.firefox.v17
  Platform.mac_10_9.firefox.v18
  Platform.mac_10_9.firefox.v19
  Platform.mac_10_9.firefox.v20
  Platform.mac_10_9.firefox.v21
  Platform.mac_10_9.firefox.v22
  Platform.mac_10_9.firefox.v23
  Platform.mac_10_9.firefox.v24
  Platform.mac_10_9.firefox.v25
  Platform.mac_10_9.firefox.v26
  Platform.mac_10_9.firefox.v27
  Platform.mac_10_9.firefox.v28
  Platform.mac_10_9.firefox.v29
  Platform.mac_10_9.firefox.v30
  Platform.mac_10_9.firefox.v31
  Platform.mac_10_9.firefox.v32
  Platform.mac_10_9.firefox.v33
  Platform.mac_10_9.firefox.v34
  Platform.mac_10_9.firefox.v35
  Platform.mac_10_9.firefox.v36
  Platform.mac_10_9.firefox.v37
  Platform.mac_10_9.firefox.beta
  Platform.mac_10_9.firefox.dev
  Platform.mac_10_9.iphone.v7_0
  Platform.mac_10_9.iphone.v7_1
  Platform.mac_10_9.safari.v7
  Platform.mac_10_9.chrome.v31
  Platform.mac_10_9.chrome.v32
  Platform.mac_10_9.chrome.v33
  Platform.mac_10_9.chrome.v34
  Platform.mac_10_9.chrome.v35
  Platform.mac_10_9.chrome.v36
  Platform.mac_10_9.chrome.v37
  Platform.mac_10_9.chrome.v38
  Platform.mac_10_9.chrome.v39
  Platform.mac_10_9.chrome.v40
  Platform.mac_10_9.chrome.v41
  Platform.mac_10_9.chrome.v42
  Platform.mac_10_9.chrome.v43
  Platform.mac_10_9.chrome.beta
  Platform.mac_10_9.chrome.dev

windows_2003
  Platform.windows_xp.opera.v11
  Platform.windows_xp.opera.v12
  Platform.windows_xp.internet_explorer.v8
  Platform.windows_xp.internet_explorer.v6
  Platform.windows_xp.internet_explorer.v7
  Platform.windows_xp.firefox.v3_0
  Platform.windows_xp.firefox.v3_5
  Platform.windows_xp.firefox.v3_6
  Platform.windows_xp.firefox.v4
  Platform.windows_xp.firefox.v5
  Platform.windows_xp.firefox.v6
  Platform.windows_xp.firefox.v7
  Platform.windows_xp.firefox.v8
  Platform.windows_xp.firefox.v9
  Platform.windows_xp.firefox.v10
  Platform.windows_xp.firefox.v11
  Platform.windows_xp.firefox.v12
  Platform.windows_xp.firefox.v13
  Platform.windows_xp.firefox.v14
  Platform.windows_xp.firefox.v15
  Platform.windows_xp.firefox.v16
  Platform.windows_xp.firefox.v17
  Platform.windows_xp.firefox.v18
  Platform.windows_xp.firefox.v19
  Platform.windows_xp.firefox.v20
  Platform.windows_xp.firefox.v21
  Platform.windows_xp.firefox.v22
  Platform.windows_xp.firefox.v23
  Platform.windows_xp.firefox.v24
  Platform.windows_xp.firefox.v25
  Platform.windows_xp.firefox.v26
  Platform.windows_xp.firefox.v27
  Platform.windows_xp.firefox.v28
  Platform.windows_xp.firefox.v29
  Platform.windows_xp.firefox.v30
  Platform.windows_xp.firefox.v31
  Platform.windows_xp.firefox.v32
  Platform.windows_xp.firefox.v33
  Platform.windows_xp.firefox.v34
  Platform.windows_xp.firefox.v35
  Platform.windows_xp.firefox.v36
  Platform.windows_xp.firefox.v37
  Platform.windows_xp.firefox.beta
  Platform.windows_xp.firefox.dev
  Platform.windows_xp.chrome.v26
  Platform.windows_xp.chrome.v27
  Platform.windows_xp.chrome.v28
  Platform.windows_xp.chrome.v29
  Platform.windows_xp.chrome.v30
  Platform.windows_xp.chrome.v31
  Platform.windows_xp.chrome.v32
  Platform.windows_xp.chrome.v33
  Platform.windows_xp.chrome.v34
  Platform.windows_xp.chrome.v35
  Platform.windows_xp.chrome.v36
  Platform.windows_xp.chrome.v37
  Platform.windows_xp.chrome.v38
  Platform.windows_xp.chrome.v39
  Platform.windows_xp.chrome.v40
  Platform.windows_xp.chrome.v41
  Platform.windows_xp.chrome.v42
  Platform.windows_xp.chrome.v43
  Platform.windows_xp.chrome.beta
  Platform.windows_xp.chrome.dev

mac_10_8
  Platform.mac_10_8.ipad.v5_1
  Platform.mac_10_8.ipad.v6_0
  Platform.mac_10_8.ipad.v6_1
  Platform.mac_10_8.iphone.v5_1
  Platform.mac_10_8.iphone.v6_0
  Platform.mac_10_8.iphone.v6_1
  Platform.mac_10_8.safari.v6
  Platform.mac_10_8.chrome.v27
  Platform.mac_10_8.chrome.v28
  Platform.mac_10_8.chrome.v31
  Platform.mac_10_8.chrome.v32
  Platform.mac_10_8.chrome.v33
  Platform.mac_10_8.chrome.v34
  Platform.mac_10_8.chrome.v35
  Platform.mac_10_8.chrome.v36
  Platform.mac_10_8.chrome.v37
  Platform.mac_10_8.chrome.v38
  Platform.mac_10_8.chrome.v39
  Platform.mac_10_8.chrome.v40
  Platform.mac_10_8.chrome.v41
  Platform.mac_10_8.chrome.v42
  Platform.mac_10_8.chrome.v43
  Platform.mac_10_8.chrome.beta
  Platform.mac_10_8.chrome.dev

windows_2012
  Platform.windows_8.internet_explorer.v10
  Platform.windows_8.firefox.v3_0
  Platform.windows_8.firefox.v3_5
  Platform.windows_8.firefox.v3_6
  Platform.windows_8.firefox.v4
  Platform.windows_8.firefox.v5
  Platform.windows_8.firefox.v6
  Platform.windows_8.firefox.v7
  Platform.windows_8.firefox.v8
  Platform.windows_8.firefox.v9
  Platform.windows_8.firefox.v10
  Platform.windows_8.firefox.v11
  Platform.windows_8.firefox.v12
  Platform.windows_8.firefox.v13
  Platform.windows_8.firefox.v14
  Platform.windows_8.firefox.v15
  Platform.windows_8.firefox.v16
  Platform.windows_8.firefox.v17
  Platform.windows_8.firefox.v18
  Platform.windows_8.firefox.v19
  Platform.windows_8.firefox.v20
  Platform.windows_8.firefox.v21
  Platform.windows_8.firefox.v22
  Platform.windows_8.firefox.v23
  Platform.windows_8.firefox.v24
  Platform.windows_8.firefox.v25
  Platform.windows_8.firefox.v26
  Platform.windows_8.firefox.v27
  Platform.windows_8.firefox.v28
  Platform.windows_8.firefox.v29
  Platform.windows_8.firefox.v30
  Platform.windows_8.firefox.v31
  Platform.windows_8.firefox.v32
  Platform.windows_8.firefox.v33
  Platform.windows_8.firefox.v34
  Platform.windows_8.firefox.v35
  Platform.windows_8.firefox.v36
  Platform.windows_8.firefox.v37
  Platform.windows_8.firefox.beta
  Platform.windows_8.firefox.dev
  Platform.windows_8.chrome.v26
  Platform.windows_8.chrome.v27
  Platform.windows_8.chrome.v28
  Platform.windows_8.chrome.v29
  Platform.windows_8.chrome.v30
  Platform.windows_8.chrome.v31
  Platform.windows_8.chrome.v32
  Platform.windows_8.chrome.v33
  Platform.windows_8.chrome.v34
  Platform.windows_8.chrome.v35
  Platform.windows_8.chrome.v36
  Platform.windows_8.chrome.v37
  Platform.windows_8.chrome.v38
  Platform.windows_8.chrome.v39
  Platform.windows_8.chrome.v40
  Platform.windows_8.chrome.v41
  Platform.windows_8.chrome.v42
  Platform.windows_8.chrome.v43
  Platform.windows_8.chrome.beta
  Platform.windows_8.chrome.dev

linux
  Platform.linux.opera.v12
  Platform.linux.firefox.v3_6
  Platform.linux.firefox.v4
  Platform.linux.firefox.v5
  Platform.linux.firefox.v6
  Platform.linux.firefox.v7
  Platform.linux.firefox.v8
  Platform.linux.firefox.v9
  Platform.linux.firefox.v10
  Platform.linux.firefox.v11
  Platform.linux.firefox.v12
  Platform.linux.firefox.v13
  Platform.linux.firefox.v14
  Platform.linux.firefox.v15
  Platform.linux.firefox.v16
  Platform.linux.firefox.v17
  Platform.linux.firefox.v18
  Platform.linux.firefox.v19
  Platform.linux.firefox.v20
  Platform.linux.firefox.v21
  Platform.linux.firefox.v22
  Platform.linux.firefox.v23
  Platform.linux.firefox.v24
  Platform.linux.firefox.v25
  Platform.linux.firefox.v26
  Platform.linux.firefox.v27
  Platform.linux.firefox.v28
  Platform.linux.firefox.v29
  Platform.linux.firefox.v30
  Platform.linux.firefox.v31
  Platform.linux.firefox.v32
  Platform.linux.firefox.v33
  Platform.linux.firefox.v34
  Platform.linux.firefox.v35
  Platform.linux.firefox.v36
  Platform.linux.firefox.v37
  Platform.linux.firefox.beta
  Platform.linux.firefox.dev
  Platform.linux.chrome.v26
  Platform.linux.chrome.v27
  Platform.linux.chrome.v28
  Platform.linux.chrome.v29
  Platform.linux.chrome.v30
  Platform.linux.chrome.v31
  Platform.linux.chrome.v32
  Platform.linux.chrome.v33
  Platform.linux.chrome.v34
  Platform.linux.chrome.v35
  Platform.linux.chrome.v36
  Platform.linux.chrome.v37
  Platform.linux.chrome.v38
  Platform.linux.chrome.v39
  Platform.linux.chrome.v40
  Platform.linux.chrome.v41
  Platform.linux.chrome.v42
  Platform.linux.chrome.v43
  Platform.linux.chrome.beta
  Platform.linux.chrome.dev
  Platform.linux.android.v4_0
  Platform.linux.android.v4_1
  Platform.linux.android.v4_2
  Platform.linux.android.v4_3
  Platform.linux.android.v4_4
  Platform.linux.android.v5_0
  Platform.linux.android.v5_1

windows_2012_r2
  Platform.windows_8_1.internet_explorer.v11
  Platform.windows_8_1.firefox.v3_0
  Platform.windows_8_1.firefox.v3_5
  Platform.windows_8_1.firefox.v3_6
  Platform.windows_8_1.firefox.v4
  Platform.windows_8_1.firefox.v5
  Platform.windows_8_1.firefox.v6
  Platform.windows_8_1.firefox.v7
  Platform.windows_8_1.firefox.v8
  Platform.windows_8_1.firefox.v9
  Platform.windows_8_1.firefox.v10
  Platform.windows_8_1.firefox.v11
  Platform.windows_8_1.firefox.v12
  Platform.windows_8_1.firefox.v13
  Platform.windows_8_1.firefox.v14
  Platform.windows_8_1.firefox.v15
  Platform.windows_8_1.firefox.v16
  Platform.windows_8_1.firefox.v17
  Platform.windows_8_1.firefox.v18
  Platform.windows_8_1.firefox.v19
  Platform.windows_8_1.firefox.v20
  Platform.windows_8_1.firefox.v21
  Platform.windows_8_1.firefox.v22
  Platform.windows_8_1.firefox.v23
  Platform.windows_8_1.firefox.v24
  Platform.windows_8_1.firefox.v25
  Platform.windows_8_1.firefox.v26
  Platform.windows_8_1.firefox.v27
  Platform.windows_8_1.firefox.v28
  Platform.windows_8_1.firefox.v29
  Platform.windows_8_1.firefox.v30
  Platform.windows_8_1.firefox.v31
  Platform.windows_8_1.firefox.v32
  Platform.windows_8_1.firefox.v33
  Platform.windows_8_1.firefox.v34
  Platform.windows_8_1.firefox.v35
  Platform.windows_8_1.firefox.v36
  Platform.windows_8_1.firefox.v37
  Platform.windows_8_1.firefox.beta
  Platform.windows_8_1.firefox.dev
  Platform.windows_8_1.chrome.v26
  Platform.windows_8_1.chrome.v27
  Platform.windows_8_1.chrome.v28
  Platform.windows_8_1.chrome.v29
  Platform.windows_8_1.chrome.v30
  Platform.windows_8_1.chrome.v31
  Platform.windows_8_1.chrome.v32
  Platform.windows_8_1.chrome.v33
  Platform.windows_8_1.chrome.v34
  Platform.windows_8_1.chrome.v35
  Platform.windows_8_1.chrome.v36
  Platform.windows_8_1.chrome.v37
  Platform.windows_8_1.chrome.v38
  Platform.windows_8_1.chrome.v39
  Platform.windows_8_1.chrome.v40
  Platform.windows_8_1.chrome.v41
  Platform.windows_8_1.chrome.v42
  Platform.windows_8_1.chrome.v43
  Platform.windows_8_1.chrome.beta
  Platform.windows_8_1.chrome.dev

windows_2008
  Platform.windows_7.internet_explorer.v8
  Platform.windows_7.internet_explorer.v9
  Platform.windows_7.internet_explorer.v10
  Platform.windows_7.internet_explorer.v11
  Platform.windows_7.opera.v11
  Platform.windows_7.opera.v12
  Platform.windows_7.firefox.v3_0
  Platform.windows_7.firefox.v3_5
  Platform.windows_7.firefox.v3_6
  Platform.windows_7.firefox.v4
  Platform.windows_7.firefox.v5
  Platform.windows_7.firefox.v6
  Platform.windows_7.firefox.v7
  Platform.windows_7.firefox.v8
  Platform.windows_7.firefox.v9
  Platform.windows_7.firefox.v10
  Platform.windows_7.firefox.v11
  Platform.windows_7.firefox.v12
  Platform.windows_7.firefox.v13
  Platform.windows_7.firefox.v14
  Platform.windows_7.firefox.v15
  Platform.windows_7.firefox.v16
  Platform.windows_7.firefox.v17
  Platform.windows_7.firefox.v18
  Platform.windows_7.firefox.v19
  Platform.windows_7.firefox.v20
  Platform.windows_7.firefox.v21
  Platform.windows_7.firefox.v22
  Platform.windows_7.firefox.v23
  Platform.windows_7.firefox.v24
  Platform.windows_7.firefox.v25
  Platform.windows_7.firefox.v26
  Platform.windows_7.firefox.v27
  Platform.windows_7.firefox.v28
  Platform.windows_7.firefox.v29
  Platform.windows_7.firefox.v30
  Platform.windows_7.firefox.v31
  Platform.windows_7.firefox.v32
  Platform.windows_7.firefox.v33
  Platform.windows_7.firefox.v34
  Platform.windows_7.firefox.v35
  Platform.windows_7.firefox.v36
  Platform.windows_7.firefox.v37
  Platform.windows_7.firefox.beta
  Platform.windows_7.firefox.dev
  Platform.windows_7.safari.v5
  Platform.windows_7.chrome.v26
  Platform.windows_7.chrome.v27
  Platform.windows_7.chrome.v28
  Platform.windows_7.chrome.v29
  Platform.windows_7.chrome.v30
  Platform.windows_7.chrome.v31
  Platform.windows_7.chrome.v32
  Platform.windows_7.chrome.v33
  Platform.windows_7.chrome.v34
  Platform.windows_7.chrome.v35
  Platform.windows_7.chrome.v36
  Platform.windows_7.chrome.v37
  Platform.windows_7.chrome.v38
  Platform.windows_7.chrome.v39
  Platform.windows_7.chrome.v40
  Platform.windows_7.chrome.v41
  Platform.windows_7.chrome.v42
  Platform.windows_7.chrome.v43
  Platform.windows_7.chrome.beta
  Platform.windows_7.chrome.dev

mac_10_10
  Platform.mac_10_10.ipad.v7_1
  Platform.mac_10_10.ipad.v8_0
  Platform.mac_10_10.ipad.v8_1
  Platform.mac_10_10.ipad.v8_2
  Platform.mac_10_10.firefox.v32
  Platform.mac_10_10.firefox.v33
  Platform.mac_10_10.firefox.v34
  Platform.mac_10_10.firefox.v35
  Platform.mac_10_10.firefox.v36
  Platform.mac_10_10.firefox.v37
  Platform.mac_10_10.firefox.beta
  Platform.mac_10_10.firefox.dev
  Platform.mac_10_10.iphone.v7_1
  Platform.mac_10_10.iphone.v8_0
  Platform.mac_10_10.iphone.v8_1
  Platform.mac_10_10.iphone.v8_2
  Platform.mac_10_10.safari.v8
  Platform.mac_10_10.chrome.v37
  Platform.mac_10_10.chrome.v38
  Platform.mac_10_10.chrome.v39
  Platform.mac_10_10.chrome.v40
  Platform.mac_10_10.chrome.v41
  Platform.mac_10_10.chrome.v42
  Platform.mac_10_10.chrome.v43
  Platform.mac_10_10.chrome.beta
  Platform.mac_10_10.chrome.dev

Finished in 0.16088 seconds (files took 0.32959 seconds to load)
479 examples, 0 failures
```
