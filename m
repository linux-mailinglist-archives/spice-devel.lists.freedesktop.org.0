Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7324C89197
	for <lists+spice-devel@lfdr.de>; Sun, 11 Aug 2019 13:56:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 086336E328;
	Sun, 11 Aug 2019 11:56:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E31B6E328
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 11:56:34 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id b16so5477809wrq.9
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 04:56:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=4syP5LPf2fIWX/MVq3IRDWDSNuLiofp8xlEKfMFf51c=;
 b=Z6cbWwYK5YzkQU1Q2DympPleQLSCTNn5L8TDR8VyDWngHpmPTnq0JjCZH8Rxp0A0zc
 uSSnAZFEmPwLqmhmY1d3mOXn2Yhd0ADoOQYNhBlqBcjW7JyZwNC9vypFfzQjzjRpT6ii
 22CUMqggn1InnD/beR45YpUNg0qdFuNizDlacB8ZjzTz1v0FFZNmS7kfr7/60H/zMtD2
 scJmO+LVwrZVgBkJO/FLM8kzcQ0HeRM/L3FABbSX/Ty+WhPKpIL58PEQCFGWqyuTFGm/
 P+zPP8RyWw/2Id33Ndq78Zuw/EOIzgfl2KvWg/l+Cx6VgwyntFhrIEe7OUUqgi/SSHKB
 21kQ==
X-Gm-Message-State: APjAAAWGEZ/PGZMzVzSJn9UYgwVpSoaqteGTAyP+83KdU9L6U5sZVNac
 FyGTvjCIf3Tmw+Jlw6XInK+iE74vI7s=
X-Google-Smtp-Source: APXvYqzeBO//NgrW7BdBL30HVlvVs6Z1ZJt4AaioC8uOUpFT3P2N3WEUhxL8WVbr/NsX9x6yhQUPmw==
X-Received: by 2002:adf:ea51:: with SMTP id j17mr11097533wrn.184.1565524592763; 
 Sun, 11 Aug 2019 04:56:32 -0700 (PDT)
Received: from dhcp-4-70.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id f17sm14238336wmf.27.2019.08.11.04.56.31
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Aug 2019 04:56:31 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190723082230.10381-1-fziglio@redhat.com>
 <20190723082230.10381-3-fziglio@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <97647106-04d4-662c-5b8d-baacafab2ed6@redhat.com>
Date: Sun, 11 Aug 2019 14:56:30 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723082230.10381-3-fziglio@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH spice-server] Use (u)intptr_t for virtual
 addresses
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1146015406=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============1146015406==
Content-Type: multipart/alternative;
 boundary="------------0972A5E32EDA71A5B24414CF"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0972A5E32EDA71A5B24414CF
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi

On 7/23/19 11:22 AM, Frediano Ziglio wrote:
> ﻿
>
>
>       When to Say "a" or "an" | Pronunciation | EnglishClub
>
> https://www.englishclub.com/pronunciation/a-an.htm
> On LLP64 platforms (like Windows) a virtual address cannot
> be represented by a "unsigned long" type, so use uintptr_t
> which is defined as a integral type large like a pointer.


This sentence sounds a bit odd to me

should be integer?

also s/a/an


> "address_delta" is a difference of pointers so use same
> type size.


Not a big deal but wouldn't be preferable to be consistent with addr_delta?

Snir.

> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>   server/memslot.c       | 22 ++++++++++++----------
>   server/memslot.h       | 20 ++++++++++----------
>   server/red-parse-qxl.c |  2 +-
>   server/spice-qxl.h     |  4 ++--
>   4 files changed, 25 insertions(+), 23 deletions(-)
>
> diff --git a/server/memslot.c b/server/memslot.c
> index 2a1771b02..182d2b7e9 100644
> --- a/server/memslot.c
> +++ b/server/memslot.c
> @@ -21,7 +21,7 @@
>   
>   #include "memslot.h"
>   
> -static unsigned long __get_clean_virt(RedMemSlotInfo *info, QXLPHYSICAL addr)
> +static uintptr_t __get_clean_virt(RedMemSlotInfo *info, QXLPHYSICAL addr)
>   {
>       return addr & info->memslot_clean_virt_mask;
>   }
> @@ -37,7 +37,8 @@ static void print_memslots(RedMemSlotInfo *info)
>                   !info->mem_slots[i][x].virt_end_addr) {
>                   continue;
>               }
> -            printf("id %d, group %d, virt start %lx, virt end %lx, generation %u, delta %lx\n",
> +            printf("id %d, group %d, virt start %" PRIxPTR ", virt end %" PRIxPTR ", generation %u,"
> +                   " delta %" PRIxPTR "\n",
>                      x, i, info->mem_slots[i][x].virt_start_addr,
>                      info->mem_slots[i][x].virt_end_addr, info->mem_slots[i][x].generation,
>                      info->mem_slots[i][x].address_delta);
> @@ -46,7 +47,7 @@ static void print_memslots(RedMemSlotInfo *info)
>   }
>   
>   /* return 1 if validation successfull, 0 otherwise */
> -int memslot_validate_virt(RedMemSlotInfo *info, unsigned long virt, int slot_id,
> +int memslot_validate_virt(RedMemSlotInfo *info, uintptr_t virt, int slot_id,
>                             uint32_t add_size, uint32_t group_id)
>   {
>       MemSlot *slot;
> @@ -60,8 +61,9 @@ int memslot_validate_virt(RedMemSlotInfo *info, unsigned long virt, int slot_id,
>       if (virt < slot->virt_start_addr || (virt + add_size) > slot->virt_end_addr) {
>           print_memslots(info);
>           spice_warning("virtual address out of range"
> -              "    virt=0x%lx+0x%x slot_id=%d group_id=%d\n"
> -              "    slot=0x%lx-0x%lx delta=0x%lx",
> +              "    virt=0x%" G_GINTPTR_MODIFIER "x+0x%x slot_id=%d group_id=%d\n"
> +              "    slot=0x%" G_GINTPTR_MODIFIER "x-0x%" G_GINTPTR_MODIFIER "x"
> +              " delta=0x%" G_GINTPTR_MODIFIER "x",
>                 virt, add_size, slot_id, group_id,
>                 slot->virt_start_addr, slot->virt_end_addr, slot->address_delta);
>           return 0;
> @@ -69,9 +71,9 @@ int memslot_validate_virt(RedMemSlotInfo *info, unsigned long virt, int slot_id,
>       return 1;
>   }
>   
> -unsigned long memslot_max_size_virt(RedMemSlotInfo *info,
> -                                    unsigned long virt, int slot_id,
> -                                    uint32_t group_id)
> +uintptr_t memslot_max_size_virt(RedMemSlotInfo *info,
> +                                uintptr_t virt, int slot_id,
> +                                uint32_t group_id)
>   {
>       MemSlot *slot;
>   
> @@ -91,7 +93,7 @@ void *memslot_get_virt(RedMemSlotInfo *info, QXLPHYSICAL addr, uint32_t add_size
>   {
>       int slot_id;
>       int generation;
> -    unsigned long h_virt;
> +    uintptr_t h_virt;
>   
>       MemSlot *slot;
>   
> @@ -171,7 +173,7 @@ void memslot_info_destroy(RedMemSlotInfo *info)
>   }
>   
>   void memslot_info_add_slot(RedMemSlotInfo *info, uint32_t slot_group_id, uint32_t slot_id,
> -                           uint64_t addr_delta, unsigned long virt_start, unsigned long virt_end,
> +                           uint64_t addr_delta, uintptr_t virt_start, uintptr_t virt_end,
>                              uint32_t generation)
>   {
>       spice_assert(info->num_memslots_groups > slot_group_id);
> diff --git a/server/memslot.h b/server/memslot.h
> index 00728c4b6..45381feb9 100644
> --- a/server/memslot.h
> +++ b/server/memslot.h
> @@ -25,9 +25,9 @@
>   
>   typedef struct MemSlot {
>       int generation;
> -    unsigned long virt_start_addr;
> -    unsigned long virt_end_addr;
> -    long address_delta;
> +    uintptr_t virt_start_addr;
> +    uintptr_t virt_end_addr;
> +    intptr_t address_delta;
>   } MemSlot;
>   
>   typedef struct RedMemSlotInfo {
> @@ -39,8 +39,8 @@ typedef struct RedMemSlotInfo {
>       uint8_t memslot_id_shift;
>       uint8_t memslot_gen_shift;
>       uint8_t internal_groupslot_id;
> -    unsigned long memslot_gen_mask;
> -    unsigned long memslot_clean_virt_mask;
> +    uintptr_t memslot_gen_mask;
> +    uintptr_t memslot_clean_virt_mask;
>   } RedMemSlotInfo;
>   
>   static inline int memslot_get_id(RedMemSlotInfo *info, uint64_t addr)
> @@ -53,11 +53,11 @@ static inline int memslot_get_generation(RedMemSlotInfo *info, uint64_t addr)
>       return (addr >> info->memslot_gen_shift) & info->memslot_gen_mask;
>   }
>   
> -int memslot_validate_virt(RedMemSlotInfo *info, unsigned long virt, int slot_id,
> +int memslot_validate_virt(RedMemSlotInfo *info, uintptr_t virt, int slot_id,
>                             uint32_t add_size, uint32_t group_id);
> -unsigned long memslot_max_size_virt(RedMemSlotInfo *info,
> -                                    unsigned long virt, int slot_id,
> -                                    uint32_t group_id);
> +uintptr_t memslot_max_size_virt(RedMemSlotInfo *info,
> +                                uintptr_t virt, int slot_id,
> +                                uint32_t group_id);
>   void *memslot_get_virt(RedMemSlotInfo *info, QXLPHYSICAL addr, uint32_t add_size,
>                          int group_id);
>   
> @@ -68,7 +68,7 @@ void memslot_info_init(RedMemSlotInfo *info,
>                          uint8_t internal_groupslot_id);
>   void memslot_info_destroy(RedMemSlotInfo *info);
>   void memslot_info_add_slot(RedMemSlotInfo *info, uint32_t slot_group_id, uint32_t slot_id,
> -                           uint64_t addr_delta, unsigned long virt_start, unsigned long virt_end,
> +                           uint64_t addr_delta, uintptr_t virt_start, uintptr_t virt_end,
>                              uint32_t generation);
>   void memslot_info_del_slot(RedMemSlotInfo *info, uint32_t slot_group_id, uint32_t slot_id);
>   void memslot_info_reset(RedMemSlotInfo *info);
> diff --git a/server/red-parse-qxl.c b/server/red-parse-qxl.c
> index eb2c0b538..01fd60580 100644
> --- a/server/red-parse-qxl.c
> +++ b/server/red-parse-qxl.c
> @@ -1335,7 +1335,7 @@ static bool red_get_message(QXLInstance *qxl_instance, RedMemSlotInfo *slots, in
>   {
>       QXLMessage *qxl;
>       int memslot_id;
> -    unsigned long len;
> +    uintptr_t len;
>       uint8_t *end;
>   
>       /*
> diff --git a/server/spice-qxl.h b/server/spice-qxl.h
> index 2f47910b9..5349d9275 100644
> --- a/server/spice-qxl.h
> +++ b/server/spice-qxl.h
> @@ -187,8 +187,8 @@ struct QXLDevMemSlot {
>       uint32_t slot_group_id;
>       uint32_t slot_id;
>       uint32_t generation;
> -    unsigned long virt_start;
> -    unsigned long virt_end;
> +    uintptr_t virt_start;
> +    uintptr_t virt_end;
>       uint64_t addr_delta;
>       uint32_t qxl_ram_size;
>   };

--------------0972A5E32EDA71A5B24414CF
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi<br>
    </p>
    <div class="moz-cite-prefix">On 7/23/19 11:22 AM, Frediano Ziglio
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20190723082230.10381-3-fziglio@redhat.com">
      <pre class="moz-quote-pre" wrap="">﻿<a href="https://www.englishclub.com/pronunciation/a-an.htm"><h3 class="LC20lb"><span dir="ltr">When to Say "a" or "an" | Pronunciation | EnglishClub</span></h3>
<div class="TbwUpd"><cite class="iUh30"><span dir="ltr">https://www.englishclub.com/pronunciation/a-an.htm</span></cite></div></a>On LLP64 platforms (like Windows) a virtual address cannot
be represented by a "unsigned long" type, so use uintptr_t
which is defined as a integral type large like a pointer.</pre>
    </blockquote>
    <p><br>
    </p>
    <p>This sentence sounds a bit odd to me<br>
    </p>
    <p>should be integer?</p>
    <p>also s/a/an<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
      cite="mid:20190723082230.10381-3-fziglio@redhat.com">
      <pre class="moz-quote-pre" wrap="">
"address_delta" is a difference of pointers so use same
type size.
</pre>
    </blockquote>
    <p><br>
    </p>
    <p>Not a big deal but wouldn't be preferable to be consistent with
      addr_delta?</p>
    <p>Snir.<br>
    </p>
    <blockquote type="cite"
      cite="mid:20190723082230.10381-3-fziglio@redhat.com">
      <pre class="moz-quote-pre" wrap="">
Signed-off-by: Frediano Ziglio <a class="moz-txt-link-rfc2396E" href="mailto:fziglio@redhat.com">&lt;fziglio@redhat.com&gt;</a>
---
 server/memslot.c       | 22 ++++++++++++----------
 server/memslot.h       | 20 ++++++++++----------
 server/red-parse-qxl.c |  2 +-
 server/spice-qxl.h     |  4 ++--
 4 files changed, 25 insertions(+), 23 deletions(-)

diff --git a/server/memslot.c b/server/memslot.c
index 2a1771b02..182d2b7e9 100644
--- a/server/memslot.c
+++ b/server/memslot.c
@@ -21,7 +21,7 @@
 
 #include "memslot.h"
 
-static unsigned long __get_clean_virt(RedMemSlotInfo *info, QXLPHYSICAL addr)
+static uintptr_t __get_clean_virt(RedMemSlotInfo *info, QXLPHYSICAL addr)
 {
     return addr &amp; info-&gt;memslot_clean_virt_mask;
 }
@@ -37,7 +37,8 @@ static void print_memslots(RedMemSlotInfo *info)
                 !info-&gt;mem_slots[i][x].virt_end_addr) {
                 continue;
             }
-            printf("id %d, group %d, virt start %lx, virt end %lx, generation %u, delta %lx\n",
+            printf("id %d, group %d, virt start %" PRIxPTR ", virt end %" PRIxPTR ", generation %u,"
+                   " delta %" PRIxPTR "\n",
                    x, i, info-&gt;mem_slots[i][x].virt_start_addr,
                    info-&gt;mem_slots[i][x].virt_end_addr, info-&gt;mem_slots[i][x].generation,
                    info-&gt;mem_slots[i][x].address_delta);
@@ -46,7 +47,7 @@ static void print_memslots(RedMemSlotInfo *info)
 }
 
 /* return 1 if validation successfull, 0 otherwise */
-int memslot_validate_virt(RedMemSlotInfo *info, unsigned long virt, int slot_id,
+int memslot_validate_virt(RedMemSlotInfo *info, uintptr_t virt, int slot_id,
                           uint32_t add_size, uint32_t group_id)
 {
     MemSlot *slot;
@@ -60,8 +61,9 @@ int memslot_validate_virt(RedMemSlotInfo *info, unsigned long virt, int slot_id,
     if (virt &lt; slot-&gt;virt_start_addr || (virt + add_size) &gt; slot-&gt;virt_end_addr) {
         print_memslots(info);
         spice_warning("virtual address out of range"
-              "    virt=0x%lx+0x%x slot_id=%d group_id=%d\n"
-              "    slot=0x%lx-0x%lx delta=0x%lx",
+              "    virt=0x%" G_GINTPTR_MODIFIER "x+0x%x slot_id=%d group_id=%d\n"
+              "    slot=0x%" G_GINTPTR_MODIFIER "x-0x%" G_GINTPTR_MODIFIER "x"
+              " delta=0x%" G_GINTPTR_MODIFIER "x",
               virt, add_size, slot_id, group_id,
               slot-&gt;virt_start_addr, slot-&gt;virt_end_addr, slot-&gt;address_delta);
         return 0;
@@ -69,9 +71,9 @@ int memslot_validate_virt(RedMemSlotInfo *info, unsigned long virt, int slot_id,
     return 1;
 }
 
-unsigned long memslot_max_size_virt(RedMemSlotInfo *info,
-                                    unsigned long virt, int slot_id,
-                                    uint32_t group_id)
+uintptr_t memslot_max_size_virt(RedMemSlotInfo *info,
+                                uintptr_t virt, int slot_id,
+                                uint32_t group_id)
 {
     MemSlot *slot;
 
@@ -91,7 +93,7 @@ void *memslot_get_virt(RedMemSlotInfo *info, QXLPHYSICAL addr, uint32_t add_size
 {
     int slot_id;
     int generation;
-    unsigned long h_virt;
+    uintptr_t h_virt;
 
     MemSlot *slot;
 
@@ -171,7 +173,7 @@ void memslot_info_destroy(RedMemSlotInfo *info)
 }
 
 void memslot_info_add_slot(RedMemSlotInfo *info, uint32_t slot_group_id, uint32_t slot_id,
-                           uint64_t addr_delta, unsigned long virt_start, unsigned long virt_end,
+                           uint64_t addr_delta, uintptr_t virt_start, uintptr_t virt_end,
                            uint32_t generation)
 {
     spice_assert(info-&gt;num_memslots_groups &gt; slot_group_id);
diff --git a/server/memslot.h b/server/memslot.h
index 00728c4b6..45381feb9 100644
--- a/server/memslot.h
+++ b/server/memslot.h
@@ -25,9 +25,9 @@
 
 typedef struct MemSlot {
     int generation;
-    unsigned long virt_start_addr;
-    unsigned long virt_end_addr;
-    long address_delta;
+    uintptr_t virt_start_addr;
+    uintptr_t virt_end_addr;
+    intptr_t address_delta;
 } MemSlot;
 
 typedef struct RedMemSlotInfo {
@@ -39,8 +39,8 @@ typedef struct RedMemSlotInfo {
     uint8_t memslot_id_shift;
     uint8_t memslot_gen_shift;
     uint8_t internal_groupslot_id;
-    unsigned long memslot_gen_mask;
-    unsigned long memslot_clean_virt_mask;
+    uintptr_t memslot_gen_mask;
+    uintptr_t memslot_clean_virt_mask;
 } RedMemSlotInfo;
 
 static inline int memslot_get_id(RedMemSlotInfo *info, uint64_t addr)
@@ -53,11 +53,11 @@ static inline int memslot_get_generation(RedMemSlotInfo *info, uint64_t addr)
     return (addr &gt;&gt; info-&gt;memslot_gen_shift) &amp; info-&gt;memslot_gen_mask;
 }
 
-int memslot_validate_virt(RedMemSlotInfo *info, unsigned long virt, int slot_id,
+int memslot_validate_virt(RedMemSlotInfo *info, uintptr_t virt, int slot_id,
                           uint32_t add_size, uint32_t group_id);
-unsigned long memslot_max_size_virt(RedMemSlotInfo *info,
-                                    unsigned long virt, int slot_id,
-                                    uint32_t group_id);
+uintptr_t memslot_max_size_virt(RedMemSlotInfo *info,
+                                uintptr_t virt, int slot_id,
+                                uint32_t group_id);
 void *memslot_get_virt(RedMemSlotInfo *info, QXLPHYSICAL addr, uint32_t add_size,
                        int group_id);
 
@@ -68,7 +68,7 @@ void memslot_info_init(RedMemSlotInfo *info,
                        uint8_t internal_groupslot_id);
 void memslot_info_destroy(RedMemSlotInfo *info);
 void memslot_info_add_slot(RedMemSlotInfo *info, uint32_t slot_group_id, uint32_t slot_id,
-                           uint64_t addr_delta, unsigned long virt_start, unsigned long virt_end,
+                           uint64_t addr_delta, uintptr_t virt_start, uintptr_t virt_end,
                            uint32_t generation);
 void memslot_info_del_slot(RedMemSlotInfo *info, uint32_t slot_group_id, uint32_t slot_id);
 void memslot_info_reset(RedMemSlotInfo *info);
diff --git a/server/red-parse-qxl.c b/server/red-parse-qxl.c
index eb2c0b538..01fd60580 100644
--- a/server/red-parse-qxl.c
+++ b/server/red-parse-qxl.c
@@ -1335,7 +1335,7 @@ static bool red_get_message(QXLInstance *qxl_instance, RedMemSlotInfo *slots, in
 {
     QXLMessage *qxl;
     int memslot_id;
-    unsigned long len;
+    uintptr_t len;
     uint8_t *end;
 
     /*
diff --git a/server/spice-qxl.h b/server/spice-qxl.h
index 2f47910b9..5349d9275 100644
--- a/server/spice-qxl.h
+++ b/server/spice-qxl.h
@@ -187,8 +187,8 @@ struct QXLDevMemSlot {
     uint32_t slot_group_id;
     uint32_t slot_id;
     uint32_t generation;
-    unsigned long virt_start;
-    unsigned long virt_end;
+    uintptr_t virt_start;
+    uintptr_t virt_end;
     uint64_t addr_delta;
     uint32_t qxl_ram_size;
 };
</pre>
    </blockquote>
  </body>
</html>

--------------0972A5E32EDA71A5B24414CF--

--===============1146015406==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1146015406==--
