Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8221E4A3508
	for <lists+spice-devel@lfdr.de>; Sun, 30 Jan 2022 09:00:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1D5710F79A;
	Sun, 30 Jan 2022 08:00:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com
 [IPv6:2607:f8b0:4864:20::1029])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6932F10F79A
 for <spice-devel@lists.freedesktop.org>; Sun, 30 Jan 2022 08:00:33 +0000 (UTC)
Received: by mail-pj1-x1029.google.com with SMTP id r59so10681630pjg.4
 for <spice-devel@lists.freedesktop.org>; Sun, 30 Jan 2022 00:00:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:content-transfer-encoding:date:message-id:subject:from
 :to; bh=ioPbgZfBscA4ABEk1HxvqyERnXFi/jm+xgxyx7tLI9E=;
 b=L82ILaA4qFRy2VtnipArfp5nnyD4AE+G94b1wioq77GedvqE4iEtsF9aiI7v6Y+9iS
 hd3UnloqPH9dK6x8cLWg/ICJXGGF+fW1289BJ8CcwliKCqY811v5nNdhir3Se5mjFJcF
 Cwq6cHAlXtT1f3xhZyGcCoSAlwoSQ1Mh6L5cJ5H8rViDbw/GqyBQr/BrOB+ryxs2qfP8
 LT67+ab699AwPUw4ZgakI4KOPC3bPlEjjsk5ss+IoLy8bnv44KLpXwpjMKrZb0LL9Q34
 WYId/g/PMMJoiX8EXEADsqJ41NPe4azWL+eTf6fWjf1UIv+TFS9t5G8INBn8HLtw+aPH
 jSDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:content-transfer-encoding:date
 :message-id:subject:from:to;
 bh=ioPbgZfBscA4ABEk1HxvqyERnXFi/jm+xgxyx7tLI9E=;
 b=MZ4fIE+xQ5WEz3to36i1kJCA57joPxtdJpNurymLaz5s/MOHABZ2+dXR6nH6lgXnfC
 8Ro5gp0rwUVtRGPGx1011zmfhW0wws8R9vPflxkxPYO1ZzhB62tLtgt3zaOcipmQYnzH
 6oBWCm/OmM1HARhxW+08m6eVDBaJQwPTQMu4AJjHAW3ONiMTKEBAgbEggOdUvmGS3GN1
 Czgc064586Il99OiixQNLGmjxdR64fLIrvEHqooxJJvB2tDDOTi072bEUZjwn2BvgCIL
 s1szkG4V/WPE4ymFEv4wHwpagy9ZWUsQERkUA3LzrYrEgm6mlu1Um2+6d/WBxQW9Q1mv
 VeuA==
X-Gm-Message-State: AOAM532NIZxube+XhXjF45AQ9jfscE5jMcUS+hA56tP3HxwGpByo4dDq
 2jnTLdZOTAfc6ASClYxAPCZVgUuUIJM=
X-Google-Smtp-Source: ABdhPJz65mhLEdlFl8E47VuFTYiLom+KolQbNRV0Pi6I56Omd+9VEujOLEMyEegeK/prUc0VHd+LDg==
X-Received: by 2002:a17:902:c7ca:: with SMTP id
 r10mr15807809pla.158.1643529632749; 
 Sun, 30 Jan 2022 00:00:32 -0800 (PST)
Received: from localhost ([14.192.223.50])
 by smtp.gmail.com with ESMTPSA id c20sm13649090pfn.190.2022.01.30.00.00.31
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 30 Jan 2022 00:00:32 -0800 (PST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sun, 30 Jan 2022 16:00:30 +0800
Message-Id: <CHIUMOY81J6O.1W9U2H0PL15XP@MacBook-Air.local>
From: "kt programs" <ktprograms@gmail.com>
To: <spice-devel@lists.freedesktop.org>
Subject: [Spice-devel] "Expect: 100-continue" not handled properly in PUT
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi, I'm having a small problem with trying to use curl to upload files
to a shared folder that uses spice-webdavd. (I'm not mounting the
webdav, just trying to use curl to upload a single file).

In libphodav/phodav-method-put.c, lines 77 to 78, if the "Expect" header
if present, a warning is created, but no special handling is done.
Instead, "status" is set to either "SOUP_STATUS_CREATED" or
"SOUP_STATUS_OK".

As per the SoupServer documentation, if "status" if set and the "Expect"
header if present, the status will be returned and no further processing
will be done:

> (At this point, if the request headers contain "Expect: 100-continue",
> and a status code has been set, then SoupServer will skip the
> remaining steps and return the response. If the request headers
> contain "Expect: 100-continue" and no status code has been set,
> SoupServer will return a SOUP_STATUS_CONTINUE status before
> continuing.)

This is a problem because "curl --upload-file" will send a "PUT" request
with a "Expect: 100-continue" header, and instead of phodav sending a
"100" response and waiting for the body, it sends either "200" or "201".

Here is the output of "curl -T test.txt http://localhost:9843 -o
/dev/stdout -vvv", with "spice-webdavd" running on port 9843:

    *   Trying 127.0.0.1:9843...
      % Total    % Received % Xferd  Average Speed   Time    Time     Time =
 Current
                                     Dload  Upload   Total   Spent    Left =
 Speed
      0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:-=
-     0* Connected to localhost (127.0.0.1) port 9843 (#0)
    > PUT /test.txt HTTP/1.1
    > Host: localhost:9843
    > User-Agent: curl/7.81.0
    > Accept: */*
    > Content-Length: 14
    > Expect: 100-continue
    >=20
    * Mark bundle as not supporting multiuse
    < HTTP/1.1 201 Created
    < Server: PhodavServer libsoup/2.65.1
    < Date: Wed, 26 Jan 2022 03:10:06 GMT
    < Content-Length: 0
    <=20
      0    14    0     0    0     0      0      0 --:--:-- --:--:-- --:--:-=
-     0
    * Connection #0 to host localhost left intact

In contrast, when running the "simple-httpd" file from the libsoup
examples, with it listening on port "33467", and running "curl -T
test.txt http://localhost:33467 -o /dev/stdout -vvv", the output is:

    *   Trying 127.0.0.1:33467...
      % Total    % Received % Xferd  Average Speed   Time    Time     Time =
 Current
                                     Dload  Upload   Total   Spent    Left =
 Speed
      0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:-=
-     0* Connected to localhost (127.0.0.1) port 33467 (#0)
    > PUT /test.txt HTTP/1.1
    > Host: localhost:33467
    > User-Agent: curl/7.81.0
    > Accept: */*
    > Content-Length: 14
    > Expect: 100-continue
    >=20
    * Mark bundle as not supporting multiuse
    < HTTP/1.1 100 Continue
    < Server: simple-httpd libsoup/3.0.4
    < Date: Wed, 26 Jan 2022 03:14:19 GMT
    } [14 bytes data]
    * We are completely uploaded and fine
    * Mark bundle as not supporting multiuse
    < HTTP/1.1 201 Created
    < Content-Length: 0
    <=20
    100    14    0     0  100    14      0  11137 --:--:-- --:--:-- --:--:-=
- 14000
    * Connection #0 to host localhost left intact

I have looked at the code, but I'm not sure how it would be possible to
handle this properly, because handling 100-continue needs a two step
process, which the current structure doesn't allow easily.

I'm doing this on an Alpine Linux aarch64 VM
Versions of packages used:
 - spice-webdavd: 2.5
 - curl 7.81.0
