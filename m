Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF0C2A40E2
	for <lists+spice-devel@lfdr.de>; Tue,  3 Nov 2020 10:57:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44A876E8A6;
	Tue,  3 Nov 2020 09:57:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEDE96E8A6
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Nov 2020 09:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1604397458;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nZ9m0hwlkgMYf+AAaWej/3tiBYQVpvsEYZtO3FhUMOI=;
 b=jWK4PiFir+e6yO3emh0n0aomBdQmQHbfV/YIQrlCuCw8lsYQKnDYcuC4IMU9C/W2RdbnAK
 0hKKEIOfgUWvJ9XVZiANVCjD3Uvbvc2y68NDcHKEDix5+lKNmQaGcweAK/hxo/0n+gBP9u
 EROs7J0fOYOWYqyitHoDhsyMS72dK08=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-552-nXrP1CMQOxm8QxaOZRhGmg-1; Tue, 03 Nov 2020 04:57:36 -0500
X-MC-Unique: nXrP1CMQOxm8QxaOZRhGmg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EF70B1009E23;
 Tue,  3 Nov 2020 09:57:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D6FD41002C2D;
 Tue,  3 Nov 2020 09:57:35 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id CE5158C7C5;
 Tue,  3 Nov 2020 09:57:35 +0000 (UTC)
Date: Tue, 3 Nov 2020 04:57:35 -0500 (EST)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <733489647.375009.1604397455296.JavaMail.zimbra@redhat.com>
In-Reply-To: <20201103094834.7691-1-fziglio@redhat.com>
References: <20201103094834.7691-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.16, 10.4.195.5]
Thread-Topic: vdagentd: Avoid calling chmod
Thread-Index: 3eCtZrovC7cedX5FZSAwPrMZDarcZg==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] [PATCH vd_agent_linux 01/10] vdagentd: Avoid
 calling chmod
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
Cc: Frediano Ziglio <freddy77@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This entire series has been already reviewed and merged as part of security
audit from SUSE security team.

Note that the classifications are Low/Medium.

Distributions should already have patches/packages.

Regards,
  Frediano Ziglio

> 
> Create the socket with the right permissions using umask.
> This also prevents possible symlink exploitation in case socket
> path is not secure.
> 
> Signed-off-by: Frediano Ziglio <freddy77@gmail.com>
> Acked-by: Uri Lublin <uril@redhat.com>
> ---
>  src/vdagentd/vdagentd.c | 12 ++----------
>  1 file changed, 2 insertions(+), 10 deletions(-)
> 
> diff --git a/src/vdagentd/vdagentd.c b/src/vdagentd/vdagentd.c
> index dca6980..a2b74bb 100644
> --- a/src/vdagentd/vdagentd.c
> +++ b/src/vdagentd/vdagentd.c
> @@ -1208,7 +1208,9 @@ int main(int argc, char *argv[])
>      /* systemd socket activation not enabled, create our own */
>  #endif /* WITH_SYSTEMD_SOCKET_ACTIVATION */
>      {
> +        mode_t mode = umask(0111);
>          udscs_server_listen_to_address(server, vdagentd_socket, &err);
> +        umask(mode);
>      }
>  
>      if (err) {
> @@ -1219,16 +1221,6 @@ int main(int argc, char *argv[])
>          return 1;
>      }
>  
> -    /* no need to set permissions on a socket that was provided by systemd
> */
> -    if (own_socket) {
> -        if (chmod(vdagentd_socket, 0666)) {
> -            syslog(LOG_CRIT, "Fatal could not change permissions on %s: %m",
> -                   vdagentd_socket);
> -            udscs_destroy_server(server);
> -            return 1;
> -        }
> -    }
> -
>  #ifdef WITH_STATIC_UINPUT
>      uinput = vdagentd_uinput_create(uinput_device, 1024, 768, NULL, 0,
>                                      debug > 1, uinput_fake);

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
