Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8008218219C
	for <lists+spice-devel@lfdr.de>; Wed, 11 Mar 2020 20:10:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A0196E9E7;
	Wed, 11 Mar 2020 19:10:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4046A6E9E7
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Mar 2020 19:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=codeweavers.com; s=6377696661; h=Content-Type:In-Reply-To:MIME-Version:Date
 :Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UVa6tdCA7AE8pqt3FqB3F+ANGXOD3+l83fnnLEhGFn4=; b=S5p1Q+8wTbu3vfHAPE4L4UNsG
 5q56B9qO19GcnS2oU7zX3G+pFLAizrMI4Q5u3ktt99MPJgCMLTqG39WZnTemVtxw0J5EQepGdDMvt
 zvSZZ5IbAUlxnYn7BVT2dDqatligUMWl8iMne5kFpbCw/0jrzZ0zehrH95u5bQezGu6Yo=;
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1jC6kY-00041k-Rf; Wed, 11 Mar 2020 14:10:39 -0500
To: uril@redhat.com, spice-devel@lists.freedesktop.org
References: <20190917162300.21667-1-jwhite@codeweavers.com>
 <ec986562-b8ca-6af0-986d-bde0c4699f27@redhat.com>
From: Jeremy White <jwhite@codeweavers.com>
Message-ID: <4382f121-7241-e62d-3f73-9ba8d8d6621f@codeweavers.com>
Date: Wed, 11 Mar 2020 14:10:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <ec986562-b8ca-6af0-986d-bde0c4699f27@redhat.com>
Content-Type: multipart/mixed; boundary="------------78B1500A43DD92E6B71C69B4"
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH x11spice] Fix compliation on gcc 4.X.
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

This is a multi-part message in MIME format.
--------------78B1500A43DD92E6B71C69B4
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

I'm afraid that does not help on the gcc 4.8.5 on RHEL 7.X, particularly 
with structures that contain other structures.

gcc -Wall -DTHREE -o /dev/null -c test.c
test.c: In function ‘handle_sigterm’:
test.c:12:12: warning: missing braces around initializer [-Wmissing-braces]
      struct sigaction act = { 0 };
             ^
test.c:12:12: warning: (near initialization for 
‘act.__sigaction_handler’) [-Wmissing-braces]

Attached is the test program.

Cheers,

Jeremy

On 3/11/20 1:27 PM, Uri Lublin wrote:
> Hi,
> 
> Thanks for the ping on IRC.
> 
> On 9/17/19 7:23 PM, Jeremy White wrote:
>> gcc 4.x warns if you use a { 0 } initialization construct
>> for a structure with an initial member that is also a struct.
>>
>> The { } construct is simpler and appears to work on a wider
>> range of gcc versions.
> 
> On my Fedora 31, gcc (version 9.2.1) does complain about {} but not 
> about {0}
> when built with -Wpedantic (see simple program below).
> 
> 
> Does {0, } works better for you ?
> 
> 
> ================
> 
> #include <stdio.h>
> 
> struct S {int a, b; };
> 
> void print_s(struct S* ps)
> {
>      if (!ps) { printf("null\n"); return; }
>      printf("(%d, %d)\n", ps->a, ps->b);
> }
> 
> int main ()
> {
>          struct S s = { };
> 
>          print_s(&s);
>      return 0;
> }
> 
> 
> ================
> 
> Uri.
> 
>>
>> This is a correction to fdfdf1107be100b983de1bff4beee8e6360f670b
>>
>> Signed-off-by: Jeremy White <jwhite@codeweavers.com>
>> ---
>>   src/gui.c    | 2 +-
>>   src/listen.c | 2 +-
>>   src/main.c   | 2 +-
>>   src/spice.c  | 2 +-
>>   4 files changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/src/gui.c b/src/gui.c
>> index 88acf5c9..3c26b864 100644
>> --- a/src/gui.c
>> +++ b/src/gui.c
>> @@ -147,7 +147,7 @@ void session_disconnect_client(session_t *session)
>>   int main(int argc, char *argv[])
>>   {
>>       gui_t gui;
>> -    session_t session = { 0 };
>> +    session_t session = { };
>>       setlocale(LC_ALL, "");
>>       gui_create(&gui, &session, argc, argv);
>> diff --git a/src/listen.c b/src/listen.c
>> index 452fd81f..76c0798a 100644
>> --- a/src/listen.c
>> +++ b/src/listen.c
>> @@ -117,7 +117,7 @@ int listen_parse(const char *listen_spec, char 
>> **addr, int *port_start, int *por
>>   static int try_port(const char *addr, int port)
>>   {
>>       static const int on = 1, off = 0;
>> -    struct addrinfo ai = { 0 }, *res, *e;
>> +    struct addrinfo ai = { }, *res, *e;
>>       char portbuf[33];
>>       int sock, rc;
>> diff --git a/src/main.c b/src/main.c
>> index 71cbb465..890ff133 100644
>> --- a/src/main.c
>> +++ b/src/main.c
>> @@ -55,7 +55,7 @@ int main(int argc, char *argv[])
>>   {
>>       int rc;
>> -    session_t session = { 0 };
>> +    session_t session = { };
>>       int display_opened = 0;
>>       int spice_started = 0;
>> diff --git a/src/spice.c b/src/spice.c
>> index 08a5d09a..561c85ff 100644
>> --- a/src/spice.c
>> +++ b/src/spice.c
>> @@ -474,7 +474,7 @@ static int send_monitors_config(spice_t *s, int w, 
>> int h)
>>   int spice_create_primary(spice_t *s, int w, int h, int 
>> bytes_per_line, void *shmaddr)
>>   {
>> -    QXLDevSurfaceCreate surface = { 0 };
>> +    QXLDevSurfaceCreate surface = { };
>>       surface.height = h;
>>       surface.width = w;
>>
> 


--------------78B1500A43DD92E6B71C69B4
Content-Type: text/x-csrc; charset=UTF-8;
 name="test.c"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="test.c"

#include <signal.h>

static void handle_sigterm(void)
{
#if defined(ONE)
    struct sigaction act = { 0, };
#endif
#if defined(TWO)
    struct sigaction act = { };
#endif
#if defined(THREE)
    struct sigaction act = { 0 };
#endif
    sigaction(SIGTERM, &act, 0);
}

--------------78B1500A43DD92E6B71C69B4
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--------------78B1500A43DD92E6B71C69B4--
