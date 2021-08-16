Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E55D3ED0E1
	for <lists+spice-devel@lfdr.de>; Mon, 16 Aug 2021 11:13:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38CBF89D30;
	Mon, 16 Aug 2021 09:13:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72C8789D30
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Aug 2021 09:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1629105203;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=ItRCnsn83espwM+3oGCoIEWPzmtmD+4Nan+pZe5OAAo=;
 b=RGJToxfkQG64SX51VX1UIzJ0OS31FXWJ8D/2br3n+1hSl/cXehv+jrR3jsbP52EsJNyQEb
 01UqfGs/wRobeGs4MmQhDcN0o1adINhOnH5UX374LlEgt6eNi7TmzVTLMrxM8jmN9YuBSH
 NpTjxZ3PCTLvOASSEsstVzdvrtHQfYo=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-26-LnRkI7ruP7OCxvx_S0sGzg-1; Mon, 16 Aug 2021 05:13:20 -0400
X-MC-Unique: LnRkI7ruP7OCxvx_S0sGzg-1
Received: by mail-wm1-f70.google.com with SMTP id
 u15-20020a05600c210fb02902e6a5231792so3181156wml.0
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Aug 2021 02:13:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=ItRCnsn83espwM+3oGCoIEWPzmtmD+4Nan+pZe5OAAo=;
 b=HFIfYee3jv01CIJNBlJ+ls1Wx1SR1BFhBCGx7F4SCIw2KHlrz05B7aZXEY1qZjD98V
 nRLc681NrUY2/THoTEeNoPhOBA4pPQHoFU0mHVswCsIfbKWU9gzz3wAjc033VwJPeOXz
 OYoPJsMClFg99fTgKYs3hHzy/nRBMhYnklG9V3EAYARuLa5hsLqCREr+2omDTVUEcZ97
 8COd7Gshq9+jQfck3H2lN1BGSRrpPEunO0d3EJ3VDi5mESygkCScMUWLZIkOorQyPDJP
 fHWDrSsMGKfp9xlT4jAowfLydXqfQ39NIdvqDbatZpl1WAkgErfgXg0rVXGeDW+tdxt7
 ii4Q==
X-Gm-Message-State: AOAM531q4nfqCY0NbGs8vGB6o7pCvYDbS9cQ7f8Os3INwktDKlW2Cf1M
 1iSHqtjBrlWaVzhgGNe8uqFH8Tv0Y9o/TB3mYqkEQYhsFkVhK+mWfj9R9ynYH5rncrwQdfnRCLj
 rZbzA3HVAbXZ6Vk9qV0AH7i1lHzEENFUOrTs8s9JSAmdkmIw2Qy7SI1u3wlfT8d2Nn6tuSL7Ruo
 pup9dK
X-Received: by 2002:a05:600c:3b91:: with SMTP id
 n17mr14146684wms.72.1629105199399; 
 Mon, 16 Aug 2021 02:13:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzvSUUNTincKcJ5DyWYwAFXsw2xheC+wMIHX9SOEKgxUH7RH+2NXPxPcn9Y/ai0lrEfUoaETw==
X-Received: by 2002:a05:600c:3b91:: with SMTP id
 n17mr14146668wms.72.1629105199153; 
 Mon, 16 Aug 2021 02:13:19 -0700 (PDT)
Received: from t490s.jjelen.redhat.com (ip4-95-82-151-4.cust.nbox.cz.
 [95.82.151.4])
 by smtp.gmail.com with ESMTPSA id b201sm5466740wmb.6.2021.08.16.02.13.18
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Aug 2021 02:13:18 -0700 (PDT)
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
From: Jakub Jelen <jjelen@redhat.com>
Message-ID: <c94a4287-efa5-5f30-3cef-fa78feb0a0aa@redhat.com>
Date: Mon, 16 Aug 2021 11:13:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jjelen@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Spice-devel] libcacard 2.8.1 release
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

Hi all,

I just released a minor update to libcacard. Tarballs are available in 
the gitlab:

https://gitlab.freedesktop.org/spice/libcacard/-/releases/v2.8.1

It is signed with my new key:

0477 44C8 76CB 4EDD 6655 D1DF 91DB 0399 A3DD E969

https://keys.openpgp.org/search?q=jjelen@redhat.com

Regards,
-- 
Jakub Jelen
Crypto Team, Security Engineering
Red Hat, Inc.

