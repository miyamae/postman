postman - broadcast email
=========================

## Usage

- Configure SMTP server to `config/application.yml`. (See also [config/application.yml.sample](config/application.yml.sample))
- Edit [sample/mail.txt](sample/mail.txt)
- Edit [sample/address.csv](sample/address.csv)

and then

```
$ ruby bin/postman deliver sample/mail.txt sample/address.csv
```

## e.g. mail.txt

```
To: {{ email }}
From: Lorem ipsum <support@example.com>
Bcc: support@example.com
Subject: Welcome to Lorem ipsum

Dear {{ name }}

Lorem ipsum dolor sit amet, consectetur adipisicing elit,
sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
```

## e.g. address.csv

```
email, name
hale@example.com, Kyle Hale
crawford@example.com, Debra Crawford
hill@example.com, Matthew Hill
```

## Author

[Tatsuya Miyamae (BitArts, Inc.)](http://bitarts.jp/)

## Licence

The MIT License (MIT)

Copyright (c) 2014 BitArts, Inc. and Tatsuya Miyamae

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
