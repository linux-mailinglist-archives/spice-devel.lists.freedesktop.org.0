Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD03365983
	for <lists+spice-devel@lfdr.de>; Tue, 20 Apr 2021 15:08:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91E746E500;
	Tue, 20 Apr 2021 13:08:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 024176E500
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Apr 2021 13:08:51 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id cq11so1355364edb.0
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Apr 2021 06:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=kN2s6IZwt8xzSQuSKNSN6pmRlhCExPcPYg+nUrgXZrA=;
 b=OcL64qbg5A9fDRv9PcKIehQegHzwiIPpDr7w0hsQUSr4DbmrgOTp2yApv4ZLRxTHPb
 NW7rKppT9uNhmIBXXesUGYZ6rLHDxWciE7lfnBJtOooxV/3k9r6uSKABgic4yOl22FUU
 kA/trR3y0WITneBxxNHXVuuB+I9FFwetpcbdJMQb3MZnudESIBBR/QU5vR/nIhnMzfoe
 pQd/zs8z5XGrt3nSNRbGPYYY764t2SQ5EW8Ak75yGpLpcZC55gc1GYcYSL97c3rD+5HS
 LstNCr/pDDizma52vdFVZ8Hbhy8siNibxR/efKc1En1wBRsEQ8nHq7ny4VkoodzYNVDW
 Annw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=kN2s6IZwt8xzSQuSKNSN6pmRlhCExPcPYg+nUrgXZrA=;
 b=cobOtGcKTQB9LGvdrTLLj6lwKDMTnSSTVm/tq4aco/C8RlyVxont2M7JEOTxZPhtb6
 qe4krsc2hKosdiAN897fFrO0VHtpzwv+Ymnq5emfbENlad6cw8gBozg1w4Rb1CYVNf2o
 UHxhKV1FDga3WNjffqvmZi4tceiCAleHyO7hDnM0leYUEhQ1/wTai7DKJXnFcEBR7KdN
 rdkx/87FgMgHkJe2n1RF+H2yJWz2bo3S9dMF7kG7rkSwoMNv6nhm74UUgHfrCKmIXRyK
 c6hZ5WcFHNn7qLAbqv9YZqrkq6TN1kGOthnALJMAviVigMPrdfsyyuLxrO2EmXVub0/u
 4RdQ==
X-Gm-Message-State: AOAM530gYE4kqqQyJexZy1lmWJCECrt5oMTamVFSrB3S2Qn5oySkFSwu
 pPbb8WL9ZDKVQhFor8uUw+Vt26e9ZNE=
X-Google-Smtp-Source: ABdhPJxqNCKIRgFOo9xCK7hX+Ed8ao5pyvDOMb58hUguY28fwvBwskVLalSXhw+fUl7Nx3BRUeLpaA==
X-Received: by 2002:a05:6402:22f9:: with SMTP id
 dn25mr31856187edb.171.1618924130720; 
 Tue, 20 Apr 2021 06:08:50 -0700 (PDT)
Received: from [192.168.1.3] (93-48-172-72.ip258.fastwebnet.it. [93.48.172.72])
 by smtp.googlemail.com with ESMTPSA id s8sm5298384edj.25.2021.04.20.06.08.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Apr 2021 06:08:49 -0700 (PDT)
To: =?UTF-8?Q?Daniel_P=2e_Berrang=c3=a9?= <berrange@redhat.com>
References: <5861b1c3-a4f5-2faf-4dc7-dd8167ec3ea5@gmail.com>
 <YH68grWhEqF4lINL@redhat.com>
 <ec4c7b10-28dd-cfc8-3f68-96248352ae00@gmail.com>
 <YH7PBECpLUGLiOFN@redhat.com>
From: Germano Massullo <germano.massullo@gmail.com>
Message-ID: <c1961ee5-6177-4358-f790-b05fcc12e299@gmail.com>
Date: Tue, 20 Apr 2021 15:08:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <YH7PBECpLUGLiOFN@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] Fedora 34 guests can no longer paste from host
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

https://germano.fedorapeople.org/bugreport/spice/spice_vda_fedora34kde.txt
https://germano.fedorapeople.org/bugreport/spice/spice_vda_fedora34gnome.txt
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
