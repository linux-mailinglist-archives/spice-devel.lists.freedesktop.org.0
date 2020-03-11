Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0811820CB
	for <lists+spice-devel@lfdr.de>; Wed, 11 Mar 2020 19:28:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2ED66E9DB;
	Wed, 11 Mar 2020 18:28:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5B046E9DB
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Mar 2020 18:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583951282;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eqmeH2aR26PeovUU2oLFMJJFYR6WrWyFAXnjDkyKciI=;
 b=PvZR7ErnbFQedBd11LI72FtSb8yfHvrVE/Z2jAiFlhTK7Yonpf9Goq6bspYD4S6whZ9IVh
 wmX9U6LXGGgh1rKmbv7CGj+CK6rPy+Kba8H7Vdpx6o/t9mLxr0twn8ipuK5Ffm7nY9ORYW
 G+Zdp7e2ZVPBKDicbBKlhvd4OKX9AM4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-63-ifNk0gwAP8OFOPliVdAlmQ-1; Wed, 11 Mar 2020 14:28:00 -0400
X-MC-Unique: ifNk0gwAP8OFOPliVdAlmQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9177D800D4E;
 Wed, 11 Mar 2020 18:27:59 +0000 (UTC)
Received: from lub.tlv (dhcp-4-107.tlv.redhat.com [10.35.4.107])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E48369CA3;
 Wed, 11 Mar 2020 18:27:58 +0000 (UTC)
To: Jeremy White <jwhite@codeweavers.com>, spice-devel@lists.freedesktop.org
References: <20190917162300.21667-1-jwhite@codeweavers.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <ec986562-b8ca-6af0-986d-bde0c4699f27@redhat.com>
Date: Wed, 11 Mar 2020 20:27:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20190917162300.21667-1-jwhite@codeweavers.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
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
Reply-To: uril@redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi,

Thanks for the ping on IRC.

On 9/17/19 7:23 PM, Jeremy White wrote:
> gcc 4.x warns if you use a { 0 } initialization construct
> for a structure with an initial member that is also a struct.
> 
> The { } construct is simpler and appears to work on a wider
> range of gcc versions.

On my Fedora 31, gcc (version 9.2.1) does complain about {} but not 
about {0}
when built with -Wpedantic (see simple program below).


Does {0, } works better for you ?


================

#include <stdio.h>

struct S {int a, b; };

void print_s(struct S* ps)
{
	if (!ps) { printf("null\n"); return; }
	printf("(%d, %d)\n", ps->a, ps->b);
}

int main ()
{
         struct S s = { };

         print_s(&s);
	return 0;
}


================

Uri.

> 
> This is a correction to fdfdf1107be100b983de1bff4beee8e6360f670b
> 
> Signed-off-by: Jeremy White <jwhite@codeweavers.com>
> ---
>   src/gui.c    | 2 +-
>   src/listen.c | 2 +-
>   src/main.c   | 2 +-
>   src/spice.c  | 2 +-
>   4 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/src/gui.c b/src/gui.c
> index 88acf5c9..3c26b864 100644
> --- a/src/gui.c
> +++ b/src/gui.c
> @@ -147,7 +147,7 @@ void session_disconnect_client(session_t *session)
>   int main(int argc, char *argv[])
>   {
>       gui_t gui;
> -    session_t session = { 0 };
> +    session_t session = { };
>   
>       setlocale(LC_ALL, "");
>       gui_create(&gui, &session, argc, argv);
> diff --git a/src/listen.c b/src/listen.c
> index 452fd81f..76c0798a 100644
> --- a/src/listen.c
> +++ b/src/listen.c
> @@ -117,7 +117,7 @@ int listen_parse(const char *listen_spec, char **addr, int *port_start, int *por
>   static int try_port(const char *addr, int port)
>   {
>       static const int on = 1, off = 0;
> -    struct addrinfo ai = { 0 }, *res, *e;
> +    struct addrinfo ai = { }, *res, *e;
>       char portbuf[33];
>       int sock, rc;
>   
> diff --git a/src/main.c b/src/main.c
> index 71cbb465..890ff133 100644
> --- a/src/main.c
> +++ b/src/main.c
> @@ -55,7 +55,7 @@ int main(int argc, char *argv[])
>   {
>       int rc;
>   
> -    session_t session = { 0 };
> +    session_t session = { };
>   
>       int display_opened = 0;
>       int spice_started = 0;
> diff --git a/src/spice.c b/src/spice.c
> index 08a5d09a..561c85ff 100644
> --- a/src/spice.c
> +++ b/src/spice.c
> @@ -474,7 +474,7 @@ static int send_monitors_config(spice_t *s, int w, int h)
>   
>   int spice_create_primary(spice_t *s, int w, int h, int bytes_per_line, void *shmaddr)
>   {
> -    QXLDevSurfaceCreate surface = { 0 };
> +    QXLDevSurfaceCreate surface = { };
>   
>       surface.height = h;
>       surface.width = w;
> 

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
