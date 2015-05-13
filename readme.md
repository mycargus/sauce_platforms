# Sauce Platforms [![Gem Version](https://badge.fury.io/rb/sauce_platforms.svg)](https://rubygems.org/gems/sauce_platforms)[![Build Status](https://travis-ci.org/bootstraponline/sauce_platforms.svg?branch=master)](https://travis-ci.org/bootstraponline/sauce_platforms)

Automatic platform generation via `sauce_whisk.platforms(true)`

RSpec tests are also automatically generated to ensure the method calls don't error.

#### Usage

`require 'sauce_platforms'`

- `Platforms.mac_10_6.firefox.v7` - built in version numbers
- `Platforms.mac_10_6.firefox.v'39'` - custom version number via `v` method

Example in Pry:

```ruby
require 'sauce_platforms'
> Platforms.mac_10_6.chrome.v33
=> ["Mac 10.6", "chrome", "33"]

> Platforms.mac_10_6.chrome.v'100'
=> ["Mac 10.6", "chrome", "100"]

# Invalid combinations correctly throw undefined method error
> Platforms.mac_10_6.chrome.v999
NoMethodError: undefined method `v999` for Platforms::Mac_10_6_chrome:Module
```


Advantages over magic strings:

- RubyMine auto completes the values
- A client side error is generated if an invalid combination is specified.

Intended to be used with the sauce_ruby gem.

#### Generate new platforms

- `ruby ./lib/sauce_platforms/generate_sauce_platforms.rb`

#### Test coverage

```
$ rspec

mac_10_6
  Platforms.mac_10_6.ipad.v4_3
  Platforms.mac_10_6.ipad.v5_0
  Platforms.mac_10_6.firefox.v4
  Platforms.mac_10_6.firefox.v5
  Platforms.mac_10_6.firefox.v6
  Platforms.mac_10_6.firefox.v7
  Platforms.mac_10_6.firefox.v8
  Platforms.mac_10_6.firefox.v9
  Platforms.mac_10_6.firefox.v10
  Platforms.mac_10_6.firefox.v11
  Platforms.mac_10_6.firefox.v12
  Platforms.mac_10_6.firefox.v13
  Platforms.mac_10_6.firefox.v14
  Platforms.mac_10_6.firefox.v15
  Platforms.mac_10_6.firefox.v16
  Platforms.mac_10_6.firefox.v17
  Platforms.mac_10_6.firefox.v18
  Platforms.mac_10_6.firefox.v19
  Platforms.mac_10_6.firefox.v20
  Platforms.mac_10_6.firefox.v21
  Platforms.mac_10_6.firefox.v22
  Platforms.mac_10_6.firefox.v23
  Platforms.mac_10_6.firefox.v24
  Platforms.mac_10_6.firefox.v25
  Platforms.mac_10_6.firefox.v26
  Platforms.mac_10_6.firefox.v27
  Platforms.mac_10_6.firefox.v28
  Platforms.mac_10_6.firefox.v29
  Platforms.mac_10_6.firefox.v30
  Platforms.mac_10_6.firefox.v31
  Platforms.mac_10_6.firefox.v32
  Platforms.mac_10_6.firefox.v33
  Platforms.mac_10_6.firefox.v34
  Platforms.mac_10_6.firefox.v35
  Platforms.mac_10_6.firefox.v36
  Platforms.mac_10_6.firefox.v37
  Platforms.mac_10_6.firefox.beta
  Platforms.mac_10_6.firefox.dev
  Platforms.mac_10_6.iphone.v4_3
  Platforms.mac_10_6.iphone.v5_0
  Platforms.mac_10_6.safari.v5
  Platforms.mac_10_6.chrome.v27
  Platforms.mac_10_6.chrome.v28
  Platforms.mac_10_6.chrome.v31
  Platforms.mac_10_6.chrome.v32
  Platforms.mac_10_6.chrome.v33
  Platforms.mac_10_6.chrome.v34
  Platforms.mac_10_6.chrome.v35
  Platforms.mac_10_6.chrome.v36
  Platforms.mac_10_6.chrome.v37
  Platforms.mac_10_6.chrome.v38
  Platforms.mac_10_6.chrome.v39
  Platforms.mac_10_6.chrome.v40
  Platforms.mac_10_6.chrome.v41
  Platforms.mac_10_6.chrome.v42
  Platforms.mac_10_6.chrome.beta
  Platforms.mac_10_6.chrome.dev

mac_10_9
  Platforms.mac_10_9.ipad.v7_0
  Platforms.mac_10_9.ipad.v7_1
  Platforms.mac_10_9.firefox.v4
  Platforms.mac_10_9.firefox.v5
  Platforms.mac_10_9.firefox.v6
  Platforms.mac_10_9.firefox.v7
  Platforms.mac_10_9.firefox.v8
  Platforms.mac_10_9.firefox.v9
  Platforms.mac_10_9.firefox.v10
  Platforms.mac_10_9.firefox.v11
  Platforms.mac_10_9.firefox.v12
  Platforms.mac_10_9.firefox.v13
  Platforms.mac_10_9.firefox.v14
  Platforms.mac_10_9.firefox.v15
  Platforms.mac_10_9.firefox.v16
  Platforms.mac_10_9.firefox.v17
  Platforms.mac_10_9.firefox.v18
  Platforms.mac_10_9.firefox.v19
  Platforms.mac_10_9.firefox.v20
  Platforms.mac_10_9.firefox.v21
  Platforms.mac_10_9.firefox.v22
  Platforms.mac_10_9.firefox.v23
  Platforms.mac_10_9.firefox.v24
  Platforms.mac_10_9.firefox.v25
  Platforms.mac_10_9.firefox.v26
  Platforms.mac_10_9.firefox.v27
  Platforms.mac_10_9.firefox.v28
  Platforms.mac_10_9.firefox.v29
  Platforms.mac_10_9.firefox.v30
  Platforms.mac_10_9.firefox.v31
  Platforms.mac_10_9.firefox.v32
  Platforms.mac_10_9.firefox.v33
  Platforms.mac_10_9.firefox.v34
  Platforms.mac_10_9.firefox.v35
  Platforms.mac_10_9.firefox.v36
  Platforms.mac_10_9.firefox.v37
  Platforms.mac_10_9.firefox.beta
  Platforms.mac_10_9.firefox.dev
  Platforms.mac_10_9.iphone.v7_0
  Platforms.mac_10_9.iphone.v7_1
  Platforms.mac_10_9.safari.v7
  Platforms.mac_10_9.chrome.v31
  Platforms.mac_10_9.chrome.v32
  Platforms.mac_10_9.chrome.v33
  Platforms.mac_10_9.chrome.v34
  Platforms.mac_10_9.chrome.v35
  Platforms.mac_10_9.chrome.v36
  Platforms.mac_10_9.chrome.v37
  Platforms.mac_10_9.chrome.v38
  Platforms.mac_10_9.chrome.v39
  Platforms.mac_10_9.chrome.v40
  Platforms.mac_10_9.chrome.v41
  Platforms.mac_10_9.chrome.v42
  Platforms.mac_10_9.chrome.beta
  Platforms.mac_10_9.chrome.dev

windows_2003
  Platforms.windows_2003.opera.v11
  Platforms.windows_2003.opera.v12
  Platforms.windows_2003.internet_explorer.v8
  Platforms.windows_2003.internet_explorer.v6
  Platforms.windows_2003.internet_explorer.v7
  Platforms.windows_2003.firefox.v3_0
  Platforms.windows_2003.firefox.v3_5
  Platforms.windows_2003.firefox.v3_6
  Platforms.windows_2003.firefox.v4
  Platforms.windows_2003.firefox.v5
  Platforms.windows_2003.firefox.v6
  Platforms.windows_2003.firefox.v7
  Platforms.windows_2003.firefox.v8
  Platforms.windows_2003.firefox.v9
  Platforms.windows_2003.firefox.v10
  Platforms.windows_2003.firefox.v11
  Platforms.windows_2003.firefox.v12
  Platforms.windows_2003.firefox.v13
  Platforms.windows_2003.firefox.v14
  Platforms.windows_2003.firefox.v15
  Platforms.windows_2003.firefox.v16
  Platforms.windows_2003.firefox.v17
  Platforms.windows_2003.firefox.v18
  Platforms.windows_2003.firefox.v19
  Platforms.windows_2003.firefox.v20
  Platforms.windows_2003.firefox.v21
  Platforms.windows_2003.firefox.v22
  Platforms.windows_2003.firefox.v23
  Platforms.windows_2003.firefox.v24
  Platforms.windows_2003.firefox.v25
  Platforms.windows_2003.firefox.v26
  Platforms.windows_2003.firefox.v27
  Platforms.windows_2003.firefox.v28
  Platforms.windows_2003.firefox.v29
  Platforms.windows_2003.firefox.v30
  Platforms.windows_2003.firefox.v31
  Platforms.windows_2003.firefox.v32
  Platforms.windows_2003.firefox.v33
  Platforms.windows_2003.firefox.v34
  Platforms.windows_2003.firefox.v35
  Platforms.windows_2003.firefox.v36
  Platforms.windows_2003.firefox.v37
  Platforms.windows_2003.firefox.beta
  Platforms.windows_2003.firefox.dev
  Platforms.windows_2003.chrome.v26
  Platforms.windows_2003.chrome.v27
  Platforms.windows_2003.chrome.v28
  Platforms.windows_2003.chrome.v29
  Platforms.windows_2003.chrome.v30
  Platforms.windows_2003.chrome.v31
  Platforms.windows_2003.chrome.v32
  Platforms.windows_2003.chrome.v33
  Platforms.windows_2003.chrome.v34
  Platforms.windows_2003.chrome.v35
  Platforms.windows_2003.chrome.v36
  Platforms.windows_2003.chrome.v37
  Platforms.windows_2003.chrome.v38
  Platforms.windows_2003.chrome.v39
  Platforms.windows_2003.chrome.v40
  Platforms.windows_2003.chrome.v41
  Platforms.windows_2003.chrome.v42
  Platforms.windows_2003.chrome.beta
  Platforms.windows_2003.chrome.dev

mac_10_8
  Platforms.mac_10_8.ipad.v5_1
  Platforms.mac_10_8.ipad.v6_0
  Platforms.mac_10_8.ipad.v6_1
  Platforms.mac_10_8.iphone.v5_1
  Platforms.mac_10_8.iphone.v6_0
  Platforms.mac_10_8.iphone.v6_1
  Platforms.mac_10_8.safari.v6
  Platforms.mac_10_8.chrome.v27
  Platforms.mac_10_8.chrome.v28
  Platforms.mac_10_8.chrome.v31
  Platforms.mac_10_8.chrome.v32
  Platforms.mac_10_8.chrome.v33
  Platforms.mac_10_8.chrome.v34
  Platforms.mac_10_8.chrome.v35
  Platforms.mac_10_8.chrome.v36
  Platforms.mac_10_8.chrome.v37
  Platforms.mac_10_8.chrome.v38
  Platforms.mac_10_8.chrome.v39
  Platforms.mac_10_8.chrome.v40
  Platforms.mac_10_8.chrome.v41
  Platforms.mac_10_8.chrome.v42
  Platforms.mac_10_8.chrome.beta
  Platforms.mac_10_8.chrome.dev

windows_2012
  Platforms.windows_2012.internet_explorer.v10
  Platforms.windows_2012.firefox.v3_0
  Platforms.windows_2012.firefox.v3_5
  Platforms.windows_2012.firefox.v3_6
  Platforms.windows_2012.firefox.v4
  Platforms.windows_2012.firefox.v5
  Platforms.windows_2012.firefox.v6
  Platforms.windows_2012.firefox.v7
  Platforms.windows_2012.firefox.v8
  Platforms.windows_2012.firefox.v9
  Platforms.windows_2012.firefox.v10
  Platforms.windows_2012.firefox.v11
  Platforms.windows_2012.firefox.v12
  Platforms.windows_2012.firefox.v13
  Platforms.windows_2012.firefox.v14
  Platforms.windows_2012.firefox.v15
  Platforms.windows_2012.firefox.v16
  Platforms.windows_2012.firefox.v17
  Platforms.windows_2012.firefox.v18
  Platforms.windows_2012.firefox.v19
  Platforms.windows_2012.firefox.v20
  Platforms.windows_2012.firefox.v21
  Platforms.windows_2012.firefox.v22
  Platforms.windows_2012.firefox.v23
  Platforms.windows_2012.firefox.v24
  Platforms.windows_2012.firefox.v25
  Platforms.windows_2012.firefox.v26
  Platforms.windows_2012.firefox.v27
  Platforms.windows_2012.firefox.v28
  Platforms.windows_2012.firefox.v29
  Platforms.windows_2012.firefox.v30
  Platforms.windows_2012.firefox.v31
  Platforms.windows_2012.firefox.v32
  Platforms.windows_2012.firefox.v33
  Platforms.windows_2012.firefox.v34
  Platforms.windows_2012.firefox.v35
  Platforms.windows_2012.firefox.v36
  Platforms.windows_2012.firefox.v37
  Platforms.windows_2012.firefox.beta
  Platforms.windows_2012.firefox.dev
  Platforms.windows_2012.chrome.v26
  Platforms.windows_2012.chrome.v27
  Platforms.windows_2012.chrome.v28
  Platforms.windows_2012.chrome.v29
  Platforms.windows_2012.chrome.v30
  Platforms.windows_2012.chrome.v31
  Platforms.windows_2012.chrome.v32
  Platforms.windows_2012.chrome.v33
  Platforms.windows_2012.chrome.v34
  Platforms.windows_2012.chrome.v35
  Platforms.windows_2012.chrome.v36
  Platforms.windows_2012.chrome.v37
  Platforms.windows_2012.chrome.v38
  Platforms.windows_2012.chrome.v39
  Platforms.windows_2012.chrome.v40
  Platforms.windows_2012.chrome.v41
  Platforms.windows_2012.chrome.v42
  Platforms.windows_2012.chrome.beta
  Platforms.windows_2012.chrome.dev

linux
  Platforms.linux.opera.v12
  Platforms.linux.lynx.v2_8_7
  Platforms.linux.firefox.v3_6
  Platforms.linux.firefox.v4
  Platforms.linux.firefox.v5
  Platforms.linux.firefox.v6
  Platforms.linux.firefox.v7
  Platforms.linux.firefox.v8
  Platforms.linux.firefox.v9
  Platforms.linux.firefox.v10
  Platforms.linux.firefox.v11
  Platforms.linux.firefox.v12
  Platforms.linux.firefox.v13
  Platforms.linux.firefox.v14
  Platforms.linux.firefox.v15
  Platforms.linux.firefox.v16
  Platforms.linux.firefox.v17
  Platforms.linux.firefox.v18
  Platforms.linux.firefox.v19
  Platforms.linux.firefox.v20
  Platforms.linux.firefox.v21
  Platforms.linux.firefox.v22
  Platforms.linux.firefox.v23
  Platforms.linux.firefox.v24
  Platforms.linux.firefox.v25
  Platforms.linux.firefox.v26
  Platforms.linux.firefox.v27
  Platforms.linux.firefox.v28
  Platforms.linux.firefox.v29
  Platforms.linux.firefox.v30
  Platforms.linux.firefox.v31
  Platforms.linux.firefox.v32
  Platforms.linux.firefox.v33
  Platforms.linux.firefox.v34
  Platforms.linux.firefox.v35
  Platforms.linux.firefox.v36
  Platforms.linux.firefox.v37
  Platforms.linux.firefox.beta
  Platforms.linux.firefox.dev
  Platforms.linux.chrome.v26
  Platforms.linux.chrome.v27
  Platforms.linux.chrome.v28
  Platforms.linux.chrome.v29
  Platforms.linux.chrome.v30
  Platforms.linux.chrome.v31
  Platforms.linux.chrome.v32
  Platforms.linux.chrome.v33
  Platforms.linux.chrome.v34
  Platforms.linux.chrome.v35
  Platforms.linux.chrome.v36
  Platforms.linux.chrome.v37
  Platforms.linux.chrome.v38
  Platforms.linux.chrome.v39
  Platforms.linux.chrome.v40
  Platforms.linux.chrome.v41
  Platforms.linux.chrome.v42
  Platforms.linux.chrome.beta
  Platforms.linux.chrome.dev
  Platforms.linux.android.v4_0
  Platforms.linux.android.v4_1
  Platforms.linux.android.v4_2
  Platforms.linux.android.v4_3
  Platforms.linux.android.v4_4
  Platforms.linux.android.v5_0
  Platforms.linux.android.v5_1

windows_2012_r2
  Platforms.windows_2012_r2.internet_explorer.v11
  Platforms.windows_2012_r2.firefox.v3_0
  Platforms.windows_2012_r2.firefox.v3_5
  Platforms.windows_2012_r2.firefox.v3_6
  Platforms.windows_2012_r2.firefox.v4
  Platforms.windows_2012_r2.firefox.v5
  Platforms.windows_2012_r2.firefox.v6
  Platforms.windows_2012_r2.firefox.v7
  Platforms.windows_2012_r2.firefox.v8
  Platforms.windows_2012_r2.firefox.v9
  Platforms.windows_2012_r2.firefox.v10
  Platforms.windows_2012_r2.firefox.v11
  Platforms.windows_2012_r2.firefox.v12
  Platforms.windows_2012_r2.firefox.v13
  Platforms.windows_2012_r2.firefox.v14
  Platforms.windows_2012_r2.firefox.v15
  Platforms.windows_2012_r2.firefox.v16
  Platforms.windows_2012_r2.firefox.v17
  Platforms.windows_2012_r2.firefox.v18
  Platforms.windows_2012_r2.firefox.v19
  Platforms.windows_2012_r2.firefox.v20
  Platforms.windows_2012_r2.firefox.v21
  Platforms.windows_2012_r2.firefox.v22
  Platforms.windows_2012_r2.firefox.v23
  Platforms.windows_2012_r2.firefox.v24
  Platforms.windows_2012_r2.firefox.v25
  Platforms.windows_2012_r2.firefox.v26
  Platforms.windows_2012_r2.firefox.v27
  Platforms.windows_2012_r2.firefox.v28
  Platforms.windows_2012_r2.firefox.v29
  Platforms.windows_2012_r2.firefox.v30
  Platforms.windows_2012_r2.firefox.v31
  Platforms.windows_2012_r2.firefox.v32
  Platforms.windows_2012_r2.firefox.v33
  Platforms.windows_2012_r2.firefox.v34
  Platforms.windows_2012_r2.firefox.v35
  Platforms.windows_2012_r2.firefox.v36
  Platforms.windows_2012_r2.firefox.v37
  Platforms.windows_2012_r2.firefox.beta
  Platforms.windows_2012_r2.firefox.dev
  Platforms.windows_2012_r2.chrome.v26
  Platforms.windows_2012_r2.chrome.v27
  Platforms.windows_2012_r2.chrome.v28
  Platforms.windows_2012_r2.chrome.v29
  Platforms.windows_2012_r2.chrome.v30
  Platforms.windows_2012_r2.chrome.v31
  Platforms.windows_2012_r2.chrome.v32
  Platforms.windows_2012_r2.chrome.v33
  Platforms.windows_2012_r2.chrome.v34
  Platforms.windows_2012_r2.chrome.v35
  Platforms.windows_2012_r2.chrome.v36
  Platforms.windows_2012_r2.chrome.v37
  Platforms.windows_2012_r2.chrome.v38
  Platforms.windows_2012_r2.chrome.v39
  Platforms.windows_2012_r2.chrome.v40
  Platforms.windows_2012_r2.chrome.v41
  Platforms.windows_2012_r2.chrome.v42
  Platforms.windows_2012_r2.chrome.beta
  Platforms.windows_2012_r2.chrome.dev

windows_2008
  Platforms.windows_2008.internet_explorer.v8
  Platforms.windows_2008.internet_explorer.v9
  Platforms.windows_2008.internet_explorer.v10
  Platforms.windows_2008.internet_explorer.v11
  Platforms.windows_2008.opera.v11
  Platforms.windows_2008.opera.v12
  Platforms.windows_2008.firefox.v3_0
  Platforms.windows_2008.firefox.v3_5
  Platforms.windows_2008.firefox.v3_6
  Platforms.windows_2008.firefox.v4
  Platforms.windows_2008.firefox.v5
  Platforms.windows_2008.firefox.v6
  Platforms.windows_2008.firefox.v7
  Platforms.windows_2008.firefox.v8
  Platforms.windows_2008.firefox.v9
  Platforms.windows_2008.firefox.v10
  Platforms.windows_2008.firefox.v11
  Platforms.windows_2008.firefox.v12
  Platforms.windows_2008.firefox.v13
  Platforms.windows_2008.firefox.v14
  Platforms.windows_2008.firefox.v15
  Platforms.windows_2008.firefox.v16
  Platforms.windows_2008.firefox.v17
  Platforms.windows_2008.firefox.v18
  Platforms.windows_2008.firefox.v19
  Platforms.windows_2008.firefox.v20
  Platforms.windows_2008.firefox.v21
  Platforms.windows_2008.firefox.v22
  Platforms.windows_2008.firefox.v23
  Platforms.windows_2008.firefox.v24
  Platforms.windows_2008.firefox.v25
  Platforms.windows_2008.firefox.v26
  Platforms.windows_2008.firefox.v27
  Platforms.windows_2008.firefox.v28
  Platforms.windows_2008.firefox.v29
  Platforms.windows_2008.firefox.v30
  Platforms.windows_2008.firefox.v31
  Platforms.windows_2008.firefox.v32
  Platforms.windows_2008.firefox.v33
  Platforms.windows_2008.firefox.v34
  Platforms.windows_2008.firefox.v35
  Platforms.windows_2008.firefox.v36
  Platforms.windows_2008.firefox.v37
  Platforms.windows_2008.firefox.beta
  Platforms.windows_2008.firefox.dev
  Platforms.windows_2008.safari.v5
  Platforms.windows_2008.chrome.v26
  Platforms.windows_2008.chrome.v27
  Platforms.windows_2008.chrome.v28
  Platforms.windows_2008.chrome.v29
  Platforms.windows_2008.chrome.v30
  Platforms.windows_2008.chrome.v31
  Platforms.windows_2008.chrome.v32
  Platforms.windows_2008.chrome.v33
  Platforms.windows_2008.chrome.v34
  Platforms.windows_2008.chrome.v35
  Platforms.windows_2008.chrome.v36
  Platforms.windows_2008.chrome.v37
  Platforms.windows_2008.chrome.v38
  Platforms.windows_2008.chrome.v39
  Platforms.windows_2008.chrome.v40
  Platforms.windows_2008.chrome.v41
  Platforms.windows_2008.chrome.v42
  Platforms.windows_2008.chrome.beta
  Platforms.windows_2008.chrome.dev

mac_10_10
  Platforms.mac_10_10.ipad.v7_1
  Platforms.mac_10_10.ipad.v8_0
  Platforms.mac_10_10.ipad.v8_1
  Platforms.mac_10_10.ipad.v8_2
  Platforms.mac_10_10.firefox.v32
  Platforms.mac_10_10.firefox.v33
  Platforms.mac_10_10.firefox.v34
  Platforms.mac_10_10.firefox.v35
  Platforms.mac_10_10.firefox.v36
  Platforms.mac_10_10.firefox.v37
  Platforms.mac_10_10.firefox.beta
  Platforms.mac_10_10.firefox.dev
  Platforms.mac_10_10.iphone.v7_1
  Platforms.mac_10_10.iphone.v8_0
  Platforms.mac_10_10.iphone.v8_1
  Platforms.mac_10_10.iphone.v8_2
  Platforms.mac_10_10.safari.v8
  Platforms.mac_10_10.chrome.v37
  Platforms.mac_10_10.chrome.v38
  Platforms.mac_10_10.chrome.v39
  Platforms.mac_10_10.chrome.v40
  Platforms.mac_10_10.chrome.v41
  Platforms.mac_10_10.chrome.v42
  Platforms.mac_10_10.chrome.beta
  Platforms.mac_10_10.chrome.dev

Finished in 0.09344 seconds (files took 0.25787 seconds to load)
471 examples, 0 failures
```
