Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8640432354
	for <lists+spice-devel@lfdr.de>; Sun,  2 Jun 2019 14:55:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4C54890A8;
	Sun,  2 Jun 2019 12:55:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E42CC89000
 for <spice-devel@lists.freedesktop.org>; Sun,  2 Jun 2019 12:55:32 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id g135so5574810wme.4
 for <spice-devel@lists.freedesktop.org>; Sun, 02 Jun 2019 05:55:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=fiQS4vHo79+9bLQ2MsVBRc4NG37Ww8uLQOpPg8M2c60=;
 b=YDcD6zGOE1/ewhv7ahtCrZGPAJvRfAA5u1qTVTrtVm1Ln3ltZYGeAJ29T2Ub6n0p/3
 ziblNbTxzk3lXb/p9THVhOBKxv4N2/P2YiHo/p3Qtg5w0YNtciCcUffzMOfSF+Y4yzAd
 SnUmT/1DtOunwrVqi5JSCSb740DBhWf7pPCeDgqlTiPLNInG+x1MwYFlpBeO0k4d7KvE
 JD1d9Y1bvrl5prN/RFB/nzg/fmBBCu9Q7SnNdmanTbSsz+UHes8KZ9c1BgxQX6zBtxVy
 CYxp52+Qy2XP8GmzSc4+PtuyfOwKpNpE5Pi3n/b2YwFKj1DHbNh3wDbkwlAP1MdGGOxZ
 GB4Q==
X-Gm-Message-State: APjAAAWJMj7ppf/v57d/81oNZZh9zEbI9mebErWPJ7mjNhnEtlX6mo4t
 QWW6q1j+6plBfv65zHoprUmkVoZ5Mtk=
X-Google-Smtp-Source: APXvYqzOlBP+mN2Z+w794Uo4ew0omwUvasrb8x5jYfMj/l7EMnw7C4Va5qw3nmnY+mjjwrjCVNA4kg==
X-Received: by 2002:a1c:7711:: with SMTP id t17mr5938802wmi.111.1559480131243; 
 Sun, 02 Jun 2019 05:55:31 -0700 (PDT)
Received: from dhcp-4-76.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id c2sm16242549wrf.75.2019.06.02.05.55.29
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 05:55:30 -0700 (PDT)
To: =?UTF-8?Q?Marc-Andr=c3=a9_Lureau?= <marcandre.lureau@gmail.com>
References: <8f0d6136-c5a4-b541-46bf-6c2280eb302d@redhat.com>
 <20190527080409.3430-1-ssheribe@redhat.com>
 <CAJ+F1CKvO3T+VjG7D3=0EQ827zhBRBY4R+fK+gGQQb98BwiR2Q@mail.gmail.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <53edc2b2-9233-bfd4-f5f7-d304204a6888@redhat.com>
Date: Sun, 2 Jun 2019 15:55:28 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAJ+F1CKvO3T+VjG7D3=0EQ827zhBRBY4R+fK+gGQQb98BwiR2Q@mail.gmail.com>
Content-Type: multipart/mixed; boundary="------------A62229620D63B47F73BC012B"
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH v3 spice-gtk] Adjust to window scaling
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--------------A62229620D63B47F73BC012B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,


On 5/27/19 8:29 PM, Marc-André Lureau wrote:
> Hi
>
> On Mon, May 27, 2019 at 10:04 AM Snir Sheriber <ssheribe@redhat.com> wrote:
>> When GDK_SCALE is != 1 and egl is used, the image presented does not
>> fit to the window (scale of 2 is often used with hidpi monitors).
>> Usually this is not a problem since all components are adjusted by
>> gdk/gtk but with egl, pixel-based data is not being scaled. In this
>> case window's scale value can be used in order to determine whether
>> to use a pixel resource with higher resolution data.
>>
>> In order to reproduce the problem set spice with virgl/Intel-vGPU
>> and run spice-gtk with GDK_SCALE=2
>>
>> This issue was also reported at freedesktop gitlab repo:
>> https://gitlab.freedesktop.org/spice/spice-gtk/issues/99
>> ---
>>   src/spice-widget-egl.c |  8 ++++----
>>   src/spice-widget.c     | 31 +++++++++++++++++++++++--------
>>   2 files changed, 27 insertions(+), 12 deletions(-)
>>
>> diff --git a/src/spice-widget-egl.c b/src/spice-widget-egl.c
>> index 43fccd7..f688fd2 100644
>> --- a/src/spice-widget-egl.c
>> +++ b/src/spice-widget-egl.c
>> @@ -360,9 +360,9 @@ gboolean spice_egl_realize_display(SpiceDisplay *display, GdkWindow *win, GError
>>       DISPLAY_DEBUG(display, "egl realize");
>>       if (!spice_widget_init_egl_win(display, win, err))
>>           return FALSE;
>> -
>> -    spice_egl_resize_display(display, gdk_window_get_width(win),
>> -                             gdk_window_get_height(win));
>> +    gint gdk_scale = gdk_window_get_scale_factor(win);
> Here too, I suppose gtk_widget_get_scale_factor() would be better.


I used this for consistency although I'm still not sure which one is 
more consistent :P .
If I'm using gtk_* would make sense to get also the sizes with gtk_* 
function but then
passing the GdkWindow also seems a bit unnecessary..

Another version is attached


>
>> +    spice_egl_resize_display(display, gdk_window_get_width(win) * gdk_scale,
>> +                             gdk_window_get_height(win) * gdk_scale);
>>
>>       return TRUE;
>>   }
>> @@ -427,7 +427,7 @@ void spice_egl_unrealize_display(SpiceDisplay *display)
>>   }
>>
>>   G_GNUC_INTERNAL
>> -void spice_egl_resize_display(SpiceDisplay *display, int w, int h)
>> +void spice_egl_resize_display(SpiceDisplay *display, int w, int h) // w and h should be adjusted to gdk scaling
>>   {
>>       SpiceDisplayPrivate *d = display->priv;
>>       int prog;
>> diff --git a/src/spice-widget.c b/src/spice-widget.c
>> index 1f2a154..c475c39 100644
>> --- a/src/spice-widget.c
>> +++ b/src/spice-widget.c
>> @@ -1382,7 +1382,8 @@ static void set_egl_enabled(SpiceDisplay *display, bool enabled)
>>       }
>>
>>       if (enabled && d->egl.context_ready) {
>> -        spice_egl_resize_display(display, d->ww, d->wh);
>> +        gint gdk_scale = gtk_widget_get_scale_factor(GTK_WIDGET(display));
>> +        spice_egl_resize_display(display, d->ww * gdk_scale, d->wh * gdk_scale);
>>       }
>>
>>       d->egl.enabled = enabled;
>> @@ -1978,11 +1979,16 @@ static void transform_input(SpiceDisplay *display,
>>       SpiceDisplayPrivate *d = display->priv;
>>       int display_x, display_y, display_w, display_h;
>>       double is;
>> +    gint gdk_scale = 1;
>>
>>       spice_display_get_scaling(display, NULL,
>>                                 &display_x, &display_y,
>>                                 &display_w, &display_h);
>> -
>> +#if HAVE_EGL
>> +        if (egl_enabled(d)) {
>> +            gdk_scale = gtk_widget_get_scale_factor(GTK_WIDGET(display));
>> +        }
>> +#endif
>>       /* For input we need a different scaling factor in order to
>>          be able to reach the full width of a display. For instance, consider
>>          a display of 100 pixels showing in a window 10 pixels wide. The normal
>> @@ -1998,7 +2004,7 @@ static void transform_input(SpiceDisplay *display,
>>          coordinates in the inverse direction (window -> display) as the fb size
>>          (display -> window).
>>       */
>> -    is = (double)(d->area.width-1) / (double)(display_w-1);
>> +    is = ((double)(d->area.width-1) / (double)(display_w-1)) * gdk_scale;
>>
>>       window_x -= display_x;
>>       window_y -= display_y;
>> @@ -2183,8 +2189,10 @@ static void size_allocate(GtkWidget *widget, GtkAllocation *conf, gpointer data)
>>           d->wh = conf->height;
>>           recalc_geometry(widget);
>>   #if HAVE_EGL
>> -        if (egl_enabled(d))
>> -            spice_egl_resize_display(display, conf->width, conf->height);
>> +        if (egl_enabled(d)) {
>> +            gint gdk_scale = gtk_widget_get_scale_factor(widget);
>> +            spice_egl_resize_display(display, conf->width * gdk_scale, conf->height * gdk_scale);
>> +        }
>>   #endif
>>       }
>>
>> @@ -2942,10 +2950,16 @@ void spice_display_get_scaling(SpiceDisplay *display,
>>       int ww, wh;
>>       int x, y, w, h;
>>       double s;
>> +    gint gdk_scale = 1;
>>
>>       if (gtk_widget_get_realized (GTK_WIDGET(display))) {
>> -        ww = gtk_widget_get_allocated_width(GTK_WIDGET(display));
>> -        wh = gtk_widget_get_allocated_height(GTK_WIDGET(display));
>> +#if HAVE_EGL
>> +        if (egl_enabled(d)) {
>> +            gdk_scale = gtk_widget_get_scale_factor(GTK_WIDGET(display));
>> +        }
>> +#endif
>> +        ww = gtk_widget_get_allocated_width(GTK_WIDGET(display)) * gdk_scale;
>> +        wh = gtk_widget_get_allocated_height(GTK_WIDGET(display)) * gdk_scale;
>>       } else {
>>           ww = fbw;
>>           wh = fbh;
>> @@ -3091,7 +3105,8 @@ void spice_display_widget_gl_scanout(SpiceDisplay *display)
>>               g_clear_error(&err);
>>           }
>>
>> -        spice_egl_resize_display(display, d->ww, d->wh);
>> +        gint gdk_scale = gtk_widget_get_scale_factor(GTK_WIDGET(display));
>> +        spice_egl_resize_display(display, d->ww * gdk_scale, d->wh * gdk_scale);
>>       }
>>   #endif
>>
>> --
>> 2.21.0
>>
>> _______________________________________________
>> Spice-devel mailing list
>> Spice-devel@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/spice-devel
>
>

--------------A62229620D63B47F73BC012B
Content-Type: text/x-patch;
 name="0001-Adjust-to-window-scaling.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="0001-Adjust-to-window-scaling.patch"

From a9f677ef4725a8331b30dc3dfb43963cc2c15694 Mon Sep 17 00:00:00 2001
From: Snir Sheriber <ssheribe@redhat.com>
Date: Thu, 28 Feb 2019 11:44:34 +0200
Subject: [PATCH v4 spice-gtk] Adjust to window scaling

When GDK_SCALE is != 1 and egl is used, the image presented does not
fit to the window (scale of 2 is often used with hidpi monitors).
Usually this is not a problem since all components are adjusted by
gdk/gtk but with egl, pixel-based data is not being scaled. In this
case window's scale value can be used in order to determine whether
to use a pixel resource with higher resolution data.

In order to reproduce the problem set spice with virgl/Intel-vGPU
and run spice-gtk with GDK_SCALE=2

This issue was also reported at freedesktop gitlab repo:
https://gitlab.freedesktop.org/spice/spice-gtk/issues/99
---
Changes from v3:
-rename gdk_scale to scale_factor
-extract scale from gtk widget instead of gdk window
---
 src/spice-widget-egl.c |  8 ++++----
 src/spice-widget.c     | 31 +++++++++++++++++++++++--------
 2 files changed, 27 insertions(+), 12 deletions(-)

diff --git a/src/spice-widget-egl.c b/src/spice-widget-egl.c
index 43fccd7..4c2a58e 100644
--- a/src/spice-widget-egl.c
+++ b/src/spice-widget-egl.c
@@ -360,9 +360,9 @@ gboolean spice_egl_realize_display(SpiceDisplay *display, GdkWindow *win, GError
     DISPLAY_DEBUG(display, "egl realize");
     if (!spice_widget_init_egl_win(display, win, err))
         return FALSE;
-
-    spice_egl_resize_display(display, gdk_window_get_width(win),
-                             gdk_window_get_height(win));
+    gint scale_factor = gtk_widget_get_scale_factor(GTK_WIDGET(display));
+    spice_egl_resize_display(display, gdk_window_get_width(win) * scale_factor,
+                             gdk_window_get_height(win) * scale_factor);
 
     return TRUE;
 }
@@ -427,7 +427,7 @@ void spice_egl_unrealize_display(SpiceDisplay *display)
 }
 
 G_GNUC_INTERNAL
-void spice_egl_resize_display(SpiceDisplay *display, int w, int h)
+void spice_egl_resize_display(SpiceDisplay *display, int w, int h) // w and h should be adjusted to gdk scaling
 {
     SpiceDisplayPrivate *d = display->priv;
     int prog;
diff --git a/src/spice-widget.c b/src/spice-widget.c
index 1f2a154..a2651ff 100644
--- a/src/spice-widget.c
+++ b/src/spice-widget.c
@@ -1382,7 +1382,8 @@ static void set_egl_enabled(SpiceDisplay *display, bool enabled)
     }
 
     if (enabled && d->egl.context_ready) {
-        spice_egl_resize_display(display, d->ww, d->wh);
+        gint scale_factor = gtk_widget_get_scale_factor(GTK_WIDGET(display));
+        spice_egl_resize_display(display, d->ww * scale_factor, d->wh * scale_factor);
     }
 
     d->egl.enabled = enabled;
@@ -1978,11 +1979,16 @@ static void transform_input(SpiceDisplay *display,
     SpiceDisplayPrivate *d = display->priv;
     int display_x, display_y, display_w, display_h;
     double is;
+    gint scale_factor = 1;
 
     spice_display_get_scaling(display, NULL,
                               &display_x, &display_y,
                               &display_w, &display_h);
-
+#if HAVE_EGL
+        if (egl_enabled(d)) {
+            scale_factor = gtk_widget_get_scale_factor(GTK_WIDGET(display));
+        }
+#endif
     /* For input we need a different scaling factor in order to
        be able to reach the full width of a display. For instance, consider
        a display of 100 pixels showing in a window 10 pixels wide. The normal
@@ -1998,7 +2004,7 @@ static void transform_input(SpiceDisplay *display,
        coordinates in the inverse direction (window -> display) as the fb size
        (display -> window).
     */
-    is = (double)(d->area.width-1) / (double)(display_w-1);
+    is = ((double)(d->area.width-1) / (double)(display_w-1)) * scale_factor;
 
     window_x -= display_x;
     window_y -= display_y;
@@ -2183,8 +2189,10 @@ static void size_allocate(GtkWidget *widget, GtkAllocation *conf, gpointer data)
         d->wh = conf->height;
         recalc_geometry(widget);
 #if HAVE_EGL
-        if (egl_enabled(d))
-            spice_egl_resize_display(display, conf->width, conf->height);
+        if (egl_enabled(d)) {
+            gint scale_factor = gtk_widget_get_scale_factor(widget);
+            spice_egl_resize_display(display, conf->width * scale_factor, conf->height * scale_factor);
+        }
 #endif
     }
 
@@ -2942,10 +2950,16 @@ void spice_display_get_scaling(SpiceDisplay *display,
     int ww, wh;
     int x, y, w, h;
     double s;
+    gint scale_factor = 1;
 
     if (gtk_widget_get_realized (GTK_WIDGET(display))) {
-        ww = gtk_widget_get_allocated_width(GTK_WIDGET(display));
-        wh = gtk_widget_get_allocated_height(GTK_WIDGET(display));
+#if HAVE_EGL
+        if (egl_enabled(d)) {
+            scale_factor = gtk_widget_get_scale_factor(GTK_WIDGET(display));
+        }
+#endif
+        ww = gtk_widget_get_allocated_width(GTK_WIDGET(display)) * scale_factor;
+        wh = gtk_widget_get_allocated_height(GTK_WIDGET(display)) * scale_factor;
     } else {
         ww = fbw;
         wh = fbh;
@@ -3091,7 +3105,8 @@ void spice_display_widget_gl_scanout(SpiceDisplay *display)
             g_clear_error(&err);
         }
 
-        spice_egl_resize_display(display, d->ww, d->wh);
+        gint scale_factor = gtk_widget_get_scale_factor(GTK_WIDGET(display));
+        spice_egl_resize_display(display, d->ww * scale_factor, d->wh * scale_factor);
     }
 #endif
 
-- 
2.21.0


--------------A62229620D63B47F73BC012B
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--------------A62229620D63B47F73BC012B--
