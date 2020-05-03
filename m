Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 440D31C2E27
	for <lists+spice-devel@lfdr.de>; Sun,  3 May 2020 19:09:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C7C76E171;
	Sun,  3 May 2020 17:09:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EE496E171
 for <spice-devel@lists.freedesktop.org>; Sun,  3 May 2020 17:09:45 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id x17so18073811wrt.5
 for <spice-devel@lists.freedesktop.org>; Sun, 03 May 2020 10:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:references:to:from:cc:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=yFBiIZaG3yYVvOAV6jcGfoMk/Ki91QalRT0V71PeO0A=;
 b=M4Er8kT9Ya1GSbp2pnDBlxrwqAR4gJnIkyRIPFMpFVVi9PM2N0CXlaZ6a89AK8TFUV
 Nw9FOLKGC82EyuO+J6eW8MdMwiVQM71ChySXgf8dv6PHn7WE7FHCUqBjhhVDiyET+waL
 GR8xO5tzIvueUhmOCZMkOfL5B8VSNmyKfTdOUdFRRwKOZHAaLLQhnvv034GlO4W6xv9a
 +yfy6dlIXUX9/12VNHftCJfp1lnW5sWrpMpko6S8EtGWZGQMkCyBkFZTkN8pENr7fH4V
 RiGXiUt/8tybneAFe3j+sF9ous9dOND+jLi5nRH9XcXufDqP6lRVlbD4WqQZFgbv5Fnk
 l3dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:references:to:from:cc:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=yFBiIZaG3yYVvOAV6jcGfoMk/Ki91QalRT0V71PeO0A=;
 b=FpaXTFhyi6xOhxPXYNPBeAsY1cnrfe00uSqimUghGThIOzreoo5clsW3H6Tq5EQuw3
 0v9c+RQdQ1bqui/SpSiKpTz6bGGI199mip5MJPi2aBzifFsSCN9LTANhb6G/3lIQ8BX3
 tAgo1okX+ioLYisK+2CNCJjT1vN/7+TQlYS+XsaBtPi42kYesIlBVeuMjEhrdyZQldr8
 CCn4uHosv3hDleVcbtXnrgq1/CcaK2+dqvAZp2Ewh8evI1xgnG3K/KjNKUarlZtUa1/1
 SjuQjvOAnDSBgOTywzZxXMQZcPaKhCExPYjUdBbYXaNx2UQbhRReiMYWOHZIjDkSaiu+
 RB0Q==
X-Gm-Message-State: AGi0PuaSe9t41VS3rCGXnVpcnBNQd0hfkg7QH66JbzHmvSxghU8FBlEi
 jUHl7/ULgVolYq1lZegz7ho=
X-Google-Smtp-Source: APiQypIKw8fOSafzBZZ7nKPmX3EHrSulpYhX9ZX5LVkioeUXYmJ7fUAsjQ6WQ6F6WqZ51cFa7xejhg==
X-Received: by 2002:a5d:54c4:: with SMTP id x4mr8887688wrv.73.1588525784112;
 Sun, 03 May 2020 10:09:44 -0700 (PDT)
Received: from [10.35.0.240] (p4FE9BCCC.dip0.t-ipconnect.de. [79.233.188.204])
 by smtp.googlemail.com with ESMTPSA id
 q143sm9700013wme.31.2020.05.03.10.09.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 03 May 2020 10:09:43 -0700 (PDT)
References: <7cbfbb62-31ff-5eef-5427-7958921a1bfa@gmail.com>
 <2742731588523000@vla5-4452c58d5c14.qloud-c.yandex.net>
To: spice-devel@lists.freedesktop.org
From: Felix Leimbach <felix.leimbach@gmail.com>
Message-ID: <1b9a0aa2-f9bc-05f7-85f5-2f4fa33219c3@gmail.com>
Date: Sun, 3 May 2020 19:09:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <2742731588523000@vla5-4452c58d5c14.qloud-c.yandex.net>
Content-Language: en-US
Subject: Re: [Spice-devel] Stuttering video playback on LAN
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
Cc: ole-krutov@yandex.ru
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Oleg

> Why not to use Windows' RDP?

Because host and guest are running Linux. Only the client computer is running Windows.

> Of course, there must be hardware attached to VM (say, Intel GVT-g mediated video device).

My headless server only has the Intel HD 630 integrated graphics.
I _think_ this is not an issue because qxl and spice don't use the GPU. Correct?

On a related note:
I thought that using virtio-gpu would not improve video playback over the network with remote-viewer/spice. Correct?

If it'd help I'd buy a dedicated GPU for the server.

Thanks
Felix

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
