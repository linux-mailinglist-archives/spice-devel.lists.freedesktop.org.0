Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AACF577DBC
	for <lists+spice-devel@lfdr.de>; Mon, 18 Jul 2022 10:40:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D142FA5A5C;
	Mon, 18 Jul 2022 08:40:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com
 [IPv6:2607:f8b0:4864:20::333])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 909B891E01
 for <spice-devel@lists.freedesktop.org>; Mon, 18 Jul 2022 08:40:39 +0000 (UTC)
Received: by mail-ot1-x333.google.com with SMTP id
 k8-20020a9d4b88000000b0061c7f8c4f77so7735108otf.10
 for <spice-devel@lists.freedesktop.org>; Mon, 18 Jul 2022 01:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Hxys89CQP4rOjtje+HQkUMf8Xvg6BRnQQ9njtP/k7DM=;
 b=UIpKpT4x+pC5HVvPxGD3OXlO9h5l3bMnKqDZ/8qtU8YxAedLxP2kKX0cM1Q5Yw5p97
 yieK67D1YABEihZN9rjfLZTMkdJWOXUbRLlqeoSJJ1yf+leijeG837EfpIhn2c/5oK4l
 T7f8YEfGmNrgmK/o8OnuW2v3IiQIQqwTJpTiznHjzOVaHeAr1R3HzN6JchYUyy1qz91w
 tUBYGxfu1yOF1I52cOIITx54VwwboQkSCpK1dV+bTSD7ShFdQTA70UOnItYHH0HS5i0S
 dipm8FmMFJuJKTCUNksNFnKm+sidCaXjN58iIgXtMMHQi84uUGdnnE8UvFIS0Vk8GCXO
 jdhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Hxys89CQP4rOjtje+HQkUMf8Xvg6BRnQQ9njtP/k7DM=;
 b=DBrp+tSoxV9MOYzexm0v9RdZpoAOMn4RBk920mljdLp0fhsdu2ka5DyuJKzR6P5A9m
 rdCCGQU/AkyhbkHpHB8jsmQTdgt5mr9Tl55EO8gt/VOs+a/SxySTF+HS2j7KUGlSf95S
 CRysGiAeDzLp2TsbIssHGb18xTfCvW5vW5ztFzO+wIV/eQ9b3YOPvbTHPLRD/eCikF93
 n53m7/RFt2+tdWuABlqPyOHm+k88UR+jrtOOrDIo38ZMfsTGSfRN3L/BQXuR1aXrihnE
 RAsq+R3OURgd2NG35biNU5sKW/FWTESc9kZBZZmIIrQ43wsdxT0oE0aAWZ7TtWTA1JRa
 jxyg==
X-Gm-Message-State: AJIora/4l/LXIG/WmENgmzcZ9rWnQMN8Z44JcDDHZY6lVOSboB49oUVM
 zQfUEPrdiyVeJ4uUy5cJhIRanPG8Rmp1wPpkQaI=
X-Google-Smtp-Source: AGRyM1u7tN3OFAIBt9CBr+zomUHIJwvuICAYpd52Cbe7cDeE81N/CSC5kRLAvIGKuHCOiU/42DG7slXxUcrA2qq9B4w=
X-Received: by 2002:a05:6830:25d0:b0:617:95f:9f5a with SMTP id
 d16-20020a05683025d000b00617095f9f5amr10913723otu.369.1658133638704; Mon, 18
 Jul 2022 01:40:38 -0700 (PDT)
MIME-Version: 1.0
References: <20220717181538.BBFC030B86B74@chwww1.confidesk.com>
 <CAHt6W4fiG=u4Pf6semLHeQyTT=sHkzLQrSvbx2-YFP-SrVq5hA@mail.gmail.com>
In-Reply-To: <CAHt6W4fiG=u4Pf6semLHeQyTT=sHkzLQrSvbx2-YFP-SrVq5hA@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Mon, 18 Jul 2022 09:40:27 +0100
Message-ID: <CAHt6W4f9b5enorPx=DSqN1Tt8gXuBtKQhSSHaVZi25ytn6u1JA@mail.gmail.com>
To: bobc@confidesk.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] connect to xspice via a unix-socket
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno lun 18 lug 2022 alle ore 09:06 Frediano Ziglio
<freddy77@gmail.com> ha scritto:
>
> Il giorno lun 18 lug 2022 alle ore 08:56 bob cantor
> <bobc@confidesk.com> ha scritto:
> >
> > Is it possible to connect to xspice via a unix-socket rather than a tcp-port?  (I would like to connect to xspice running in a LXC comtainer.  The container and host are on the same machine, but there is no network connection between them).
> >
>
> Hi,
>   currently only TCP is supported but the change should not be that difficult.
>

Hi,
   something like this should do (not tested):

diff --git a/src/listen.c b/src/listen.c
index d00358d..292b20a 100644
--- a/src/listen.c
+++ b/src/listen.c
@@ -39,12 +39,15 @@
 #include <arpa/inet.h>
 #include <errno.h>

+#include <spice.h>
+
 #include "listen.h"
 #include "x11spice.h"

 #define SPICE_URI_PREFIX    "spice://"
+#define SPICE_UNIX_URI_PREFIX    "spice+unix://"

-int listen_parse(const char *listen_spec, char **addr, int
*port_start, int *port_end)
+int listen_parse(const char *listen_spec, char **addr, int
*port_start, int *port_end, int *flags)
 {
     int leading = 0;
     int trailing = 0;
@@ -54,6 +57,15 @@ int listen_parse(const char *listen_spec, char
**addr, int *port_start, int *por

     *port_start = *port_end = -1;
     *addr = NULL;
+    *flags = 0;
+
+    if (strncmp(listen_spec, SPICE_UNIX_URI_PREFIX,
strlen(SPICE_UNIX_URI_PREFIX)) == 0) {
+        listen_spec += strlen(SPICE_UNIX_URI_PREFIX);
+
+        *flags = SPICE_ADDR_FLAG_UNIX_ONLY;
+        *addr = strdup(listen_spec);
+        return 0;
+    }

     /* Allow form of spice:// */
     if (strlen(listen_spec) > strlen(SPICE_URI_PREFIX))
diff --git a/src/listen.h b/src/listen.h
index 78f8792..86d5594 100644
--- a/src/listen.h
+++ b/src/listen.h
@@ -25,7 +25,7 @@
 /*----------------------------------------------------------------------------
 **  Prototypes
 **--------------------------------------------------------------------------*/
-int listen_parse(const char *listen_spec, char **addr, int
*port_start, int *port_end);
+int listen_parse(const char *listen_spec, char **addr, int
*port_start, int *port_end, int *flags);
 int listen_find_open_port(const char *addr, int start, int end, int *port);

 #endif
diff --git a/src/spice.c b/src/spice.c
index 0c6c610..fe5be17 100644
--- a/src/spice.c
+++ b/src/spice.c
@@ -582,9 +582,10 @@ static int try_listen(spice_t *s, options_t *options)
     char *addr = NULL;
     int start;
     int rc;
+    int flags;


-    rc = listen_parse(options->listen, &addr, &start, &port);
+    rc = listen_parse(options->listen, &addr, &start, &port, &flags);
     if (rc)
         return rc;

@@ -599,7 +600,7 @@ static int try_listen(spice_t *s, options_t *options)
     }

     if (addr) {
-        spice_server_set_addr(s->server, addr, 0);
+        spice_server_set_addr(s->server, addr, flags);
         free(addr);
     }

Frediano
