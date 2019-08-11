Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC71E89241
	for <lists+spice-devel@lfdr.de>; Sun, 11 Aug 2019 17:12:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14F556E357;
	Sun, 11 Aug 2019 15:12:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 786F86E357
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 15:12:33 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id p17so102485495wrf.11
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 08:12:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=IdfzSbaoV8lAmSzKZgoZTXxEMoM5XppEsUP/YbnGcXc=;
 b=IEvLu0jjKHtHXUnBKawCNrWje7r8rdGUrayhGJtILZYsun6WxqhkylVzdqAToC7+Uw
 fp7qNoGOXm06XFxA4b4OHRMulLyvgCgped6iuWiFi6HRPLRuR0ZlZJJNoMqh9gsVDj4X
 uxKvPF50xD4q+8uziUYh3dM5jpBdQHryHKbcT3bIaynXuhXfeNhi0FbFmVi/gJi4mHdn
 8huWx9hfEU4Z02DZvwe22nx0WxDHuUejgjFeulvPxngZqSIHNhtYyXZ5eBy8T38GIDk0
 QH+XkMKsO/+MAgqIWL3ZnviquVccnjRTqvmcXyagmHgJADe5SkVXkuNSgxAq/g0V+ADV
 w+6g==
X-Gm-Message-State: APjAAAUx8R1YfS6ZdTrCXVY0EqOojhN+KC9k3CY3aM9wJ4M/bxUvjHdk
 KCAsKO3sKRaRPJqXIEWOO9jaLM75CEw=
X-Google-Smtp-Source: APXvYqzvRhu9L/7rhdxts0OLdn+ehtddeMQa1Xs3TdXMx1+NzMLMkGMfdHr/nNvBcVTG2VIkVADKVg==
X-Received: by 2002:a5d:570e:: with SMTP id a14mr21438988wrv.258.1565536351727; 
 Sun, 11 Aug 2019 08:12:31 -0700 (PDT)
Received: from dhcp-4-70.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id t13sm121825609wrr.0.2019.08.11.08.12.30
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Aug 2019 08:12:31 -0700 (PDT)
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190723082230.10381-1-fziglio@redhat.com>
 <20190723082230.10381-3-fziglio@redhat.com>
 <97647106-04d4-662c-5b8d-baacafab2ed6@redhat.com>
 <1029345715.5453659.1565525540653.JavaMail.zimbra@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <b5369913-240c-2220-9d44-ade89026ddf6@redhat.com>
Date: Sun, 11 Aug 2019 18:12:28 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1029345715.5453659.1565525540653.JavaMail.zimbra@redhat.com>
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============1910436277=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============1910436277==
Content-Type: multipart/alternative;
 boundary="------------861CD13FE27EE71844E3B778"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------861CD13FE27EE71844E3B778
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 8/11/19 3:12 PM, Frediano Ziglio wrote:
>
>
>     Hi
>
>     On 7/23/19 11:22 AM, Frediano Ziglio wrote:
>
>
>               When to Say "a" or "an" | Pronunciation | EnglishClub
>
>         https://www.englishclub.com/pronunciation/a-an.htm
>         On LLP64 platforms (like Windows) a virtual address cannot
>         be represented by a "unsigned long" type, so use uintptr_t
>         which is defined as a integral type large like a pointer.
>
>
>     This sentence sounds a bit odd to me
>
>     should be integer?
>
> C/C++ documentation classify these types as integral, not integer.
>
>     also s/a/an
>
> fixed, thanks
>
>
>
>         "address_delta" is a difference of pointers so use same
>         type size.
>
>
>     Not a big deal but wouldn't be preferable to be consistent with
>     addr_delta?
>
> It sounds reasonable, although the value came from "addr_delta" field 
> of QXLDevMemSlot
> which is part of SPICE ABI (so cannot be changed).


Actually I thought to change address_delta to match everywhere to 
uint64_t of addr_delta
can this delta be actually negative? seems not since it's coming from 
addr_delta,wouldn't be
better to keep it unsigned

Snir.


>     Snir.
>
>         Signed-off-by: Frediano Ziglio<fziglio@redhat.com>
>         ---
>           server/memslot.c       | 22 ++++++++++++----------
>           server/memslot.h       | 20 ++++++++++----------
>           server/red-parse-qxl.c |  2 +-
>           server/spice-qxl.h     |  4 ++--
>           4 files changed, 25 insertions(+), 23 deletions(-)
>
>         diff --git a/server/memslot.c b/server/memslot.c
>         index 2a1771b02..182d2b7e9 100644
>         --- a/server/memslot.c
>         +++ b/server/memslot.c
>         @@ -21,7 +21,7 @@
>           
>           #include "memslot.h"
>           
>         -static unsigned long __get_clean_virt(RedMemSlotInfo *info, QXLPHYSICAL addr)
>         +static uintptr_t __get_clean_virt(RedMemSlotInfo *info, QXLPHYSICAL addr)
>           {
>               return addr & info->memslot_clean_virt_mask;
>           }
>         @@ -37,7 +37,8 @@ static void print_memslots(RedMemSlotInfo *info)
>                           !info->mem_slots[i][x].virt_end_addr) {
>                           continue;
>                       }
>         -            printf("id %d, group %d, virt start %lx, virt end %lx, generation %u, delta %lx\n",
>         +            printf("id %d, group %d, virt start %" PRIxPTR ", virt end %" PRIxPTR ", generation %u,"
>         +                   " delta %" PRIxPTR "\n",
>                              x, i, info->mem_slots[i][x].virt_start_addr,
>                              info->mem_slots[i][x].virt_end_addr, info->mem_slots[i][x].generation,
>                              info->mem_slots[i][x].address_delta);
>         @@ -46,7 +47,7 @@ static void print_memslots(RedMemSlotInfo *info)
>           }
>           
>           /* return 1 if validation successfull, 0 otherwise */
>         -int memslot_validate_virt(RedMemSlotInfo *info, unsigned long virt, int slot_id,
>         +int memslot_validate_virt(RedMemSlotInfo *info, uintptr_t virt, int slot_id,
>                                     uint32_t add_size, uint32_t group_id)
>           {
>               MemSlot *slot;
>         @@ -60,8 +61,9 @@ int memslot_validate_virt(RedMemSlotInfo *info, unsigned long virt, int slot_id,
>               if (virt < slot->virt_start_addr || (virt + add_size) > slot->virt_end_addr) {
>                   print_memslots(info);
>                   spice_warning("virtual address out of range"
>         -              "    virt=0x%lx+0x%x slot_id=%d group_id=%d\n"
>         -              "    slot=0x%lx-0x%lx delta=0x%lx",
>         +              "    virt=0x%" G_GINTPTR_MODIFIER "x+0x%x slot_id=%d group_id=%d\n"
>         +              "    slot=0x%" G_GINTPTR_MODIFIER "x-0x%" G_GINTPTR_MODIFIER "x"
>         +              " delta=0x%" G_GINTPTR_MODIFIER "x",
>                         virt, add_size, slot_id, group_id,
>                         slot->virt_start_addr, slot->virt_end_addr, slot->address_delta);
>                   return 0;
>         @@ -69,9 +71,9 @@ int memslot_validate_virt(RedMemSlotInfo *info, unsigned long virt, int slot_id,
>               return 1;
>           }
>           
>         -unsigned long memslot_max_size_virt(RedMemSlotInfo *info,
>         -                                    unsigned long virt, int slot_id,
>         -                                    uint32_t group_id)
>         +uintptr_t memslot_max_size_virt(RedMemSlotInfo *info,
>         +                                uintptr_t virt, int slot_id,
>         +                                uint32_t group_id)
>           {
>               MemSlot *slot;
>           
>         @@ -91,7 +93,7 @@ void *memslot_get_virt(RedMemSlotInfo *info, QXLPHYSICAL addr, uint32_t add_size
>           {
>               int slot_id;
>               int generation;
>         -    unsigned long h_virt;
>         +    uintptr_t h_virt;
>           
>               MemSlot *slot;
>           
>         @@ -171,7 +173,7 @@ void memslot_info_destroy(RedMemSlotInfo *info)
>           }
>           
>           void memslot_info_add_slot(RedMemSlotInfo *info, uint32_t slot_group_id, uint32_t slot_id,
>         -                           uint64_t addr_delta, unsigned long virt_start, unsigned long virt_end,
>         +                           uint64_t addr_delta, uintptr_t virt_start, uintptr_t virt_end,
>                                      uint32_t generation)
>           {
>               spice_assert(info->num_memslots_groups > slot_group_id);
>         diff --git a/server/memslot.h b/server/memslot.h
>         index 00728c4b6..45381feb9 100644
>         --- a/server/memslot.h
>         +++ b/server/memslot.h
>         @@ -25,9 +25,9 @@
>           
>           typedef struct MemSlot {
>               int generation;
>         -    unsigned long virt_start_addr;
>         -    unsigned long virt_end_addr;
>         -    long address_delta;
>         +    uintptr_t virt_start_addr;
>         +    uintptr_t virt_end_addr;
>         +    intptr_t address_delta;
>           } MemSlot;
>           
>           typedef struct RedMemSlotInfo {
>         @@ -39,8 +39,8 @@ typedef struct RedMemSlotInfo {
>               uint8_t memslot_id_shift;
>               uint8_t memslot_gen_shift;
>               uint8_t internal_groupslot_id;
>         -    unsigned long memslot_gen_mask;
>         -    unsigned long memslot_clean_virt_mask;
>         +    uintptr_t memslot_gen_mask;
>         +    uintptr_t memslot_clean_virt_mask;
>           } RedMemSlotInfo;
>           
>           static inline int memslot_get_id(RedMemSlotInfo *info, uint64_t addr)
>         @@ -53,11 +53,11 @@ static inline int memslot_get_generation(RedMemSlotInfo *info, uint64_t addr)
>               return (addr >> info->memslot_gen_shift) & info->memslot_gen_mask;
>           }
>           
>         -int memslot_validate_virt(RedMemSlotInfo *info, unsigned long virt, int slot_id,
>         +int memslot_validate_virt(RedMemSlotInfo *info, uintptr_t virt, int slot_id,
>                                     uint32_t add_size, uint32_t group_id);
>         -unsigned long memslot_max_size_virt(RedMemSlotInfo *info,
>         -                                    unsigned long virt, int slot_id,
>         -                                    uint32_t group_id);
>         +uintptr_t memslot_max_size_virt(RedMemSlotInfo *info,
>         +                                uintptr_t virt, int slot_id,
>         +                                uint32_t group_id);
>           void *memslot_get_virt(RedMemSlotInfo *info, QXLPHYSICAL addr, uint32_t add_size,
>                                  int group_id);
>           
>         @@ -68,7 +68,7 @@ void memslot_info_init(RedMemSlotInfo *info,
>                                  uint8_t internal_groupslot_id);
>           void memslot_info_destroy(RedMemSlotInfo *info);
>           void memslot_info_add_slot(RedMemSlotInfo *info, uint32_t slot_group_id, uint32_t slot_id,
>         -                           uint64_t addr_delta, unsigned long virt_start, unsigned long virt_end,
>         +                           uint64_t addr_delta, uintptr_t virt_start, uintptr_t virt_end,
>                                      uint32_t generation);
>           void memslot_info_del_slot(RedMemSlotInfo *info, uint32_t slot_group_id, uint32_t slot_id);
>           void memslot_info_reset(RedMemSlotInfo *info);
>         diff --git a/server/red-parse-qxl.c b/server/red-parse-qxl.c
>         index eb2c0b538..01fd60580 100644
>         --- a/server/red-parse-qxl.c
>         +++ b/server/red-parse-qxl.c
>         @@ -1335,7 +1335,7 @@ static bool red_get_message(QXLInstance *qxl_instance, RedMemSlotInfo *slots, in
>           {
>               QXLMessage *qxl;
>               int memslot_id;
>         -    unsigned long len;
>         +    uintptr_t len;
>               uint8_t *end;
>           
>               /*
>         diff --git a/server/spice-qxl.h b/server/spice-qxl.h
>         index 2f47910b9..5349d9275 100644
>         --- a/server/spice-qxl.h
>         +++ b/server/spice-qxl.h
>         @@ -187,8 +187,8 @@ struct QXLDevMemSlot {
>               uint32_t slot_group_id;
>               uint32_t slot_id;
>               uint32_t generation;
>         -    unsigned long virt_start;
>         -    unsigned long virt_end;
>         +    uintptr_t virt_start;
>         +    uintptr_t virt_end;
>               uint64_t addr_delta;
>               uint32_t qxl_ram_size;
>           };
>
> Frediano
>

--------------861CD13FE27EE71844E3B778
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 8/11/19 3:12 PM, Frediano Ziglio
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:1029345715.5453659.1565525540653.JavaMail.zimbra@redhat.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div style="font-family: times new roman, new york, times, serif;
        font-size: 12pt; color: #000000">
        <div><br>
        </div>
        <blockquote style="border-left:2px solid
#1010FF;margin-left:5px;padding-left:5px;color:#000;font-weight:normal;font-style:normal;text-decoration:none;font-family:Helvetica,Arial,sans-serif;font-size:12pt;">
          <div><br>
          </div>
          <p>Hi<br>
          </p>
          <div class="moz-cite-prefix">On 7/23/19 11:22 AM, Frediano
            Ziglio wrote:<br>
          </div>
          <blockquote
            cite="mid:20190723082230.10381-3-fziglio@redhat.com">
            <pre class="moz-quote-pre"><a href="https://www.englishclub.com/pronunciation/a-an.htm" target="_blank" moz-do-not-send="true"><h3 class="LC20lb"><span dir="ltr">When to Say "a" or "an" | Pronunciation | EnglishClub</span></h3>
<div class="TbwUpd"><cite class="iUh30"><span dir="ltr">https://www.englishclub.com/pronunciation/a-an.htm</span></cite></div></a>On LLP64 platforms (like Windows) a virtual address cannot
be represented by a "unsigned long" type, so use uintptr_t
which is defined as a integral type large like a pointer.</pre>
          </blockquote>
          <p><br>
          </p>
          <p>This sentence sounds a bit odd to me<br>
          </p>
          <p>should be integer?</p>
        </blockquote>
        <div>C/C++ documentation classify these types as integral, not
          integer.<br>
        </div>
        <blockquote style="border-left:2px solid
#1010FF;margin-left:5px;padding-left:5px;color:#000;font-weight:normal;font-style:normal;text-decoration:none;font-family:Helvetica,Arial,sans-serif;font-size:12pt;">
          <p>also s/a/an</p>
        </blockquote>
        <div>fixed, thanks<br>
        </div>
        <blockquote style="border-left:2px solid
#1010FF;margin-left:5px;padding-left:5px;color:#000;font-weight:normal;font-style:normal;text-decoration:none;font-family:Helvetica,Arial,sans-serif;font-size:12pt;">
          <p><br>
          </p>
          <p><br>
          </p>
          <blockquote
            cite="mid:20190723082230.10381-3-fziglio@redhat.com">
            <pre class="moz-quote-pre">"address_delta" is a difference of pointers so use same
type size.
</pre>
          </blockquote>
          <p><br>
          </p>
          <p>Not a big deal but wouldn't be preferable to be consistent
            with addr_delta?</p>
        </blockquote>
        <div>It sounds reasonable, although the value came from
          "addr_delta" field of QXLDevMemSlot<br>
        </div>
        <div>which is part of SPICE ABI (so cannot be changed).<br>
        </div>
      </div>
    </blockquote>
    <p><br>
    </p>
    <p>Actually I thought to change address_delta to match everywhere to
      uint64_t of addr_delta<br>
      can this delta be actually negative? seems not since it's coming
      from addr_delta,wouldn't be<br>
      better to keep it unsigned<br>
    </p>
    <p>Snir.<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
      cite="mid:1029345715.5453659.1565525540653.JavaMail.zimbra@redhat.com">
      <div style="font-family: times new roman, new york, times, serif;
        font-size: 12pt; color: #000000">
        <blockquote style="border-left:2px solid
#1010FF;margin-left:5px;padding-left:5px;color:#000;font-weight:normal;font-style:normal;text-decoration:none;font-family:Helvetica,Arial,sans-serif;font-size:12pt;">
          <p>Snir.<br>
          </p>
          <blockquote
            cite="mid:20190723082230.10381-3-fziglio@redhat.com">
            <pre class="moz-quote-pre">Signed-off-by: Frediano Ziglio <a class="moz-txt-link-rfc2396E" href="mailto:fziglio@redhat.com" target="_blank" moz-do-not-send="true">&lt;fziglio@redhat.com&gt;</a>
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
        </blockquote>
        <div>Frediano</div>
        <div><br>
        </div>
      </div>
    </blockquote>
  </body>
</html>

--------------861CD13FE27EE71844E3B778--

--===============1910436277==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1910436277==--
