.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$7;
.super Landroid/os/FileObserver;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setWallpaperFileObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$7;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 5

    const/16 v4, 0x12f2

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$7;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_wallpaper_path"

    const-string/jumbo v2, ""

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :sswitch_1
    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "CLOSE_WRITE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$7;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$7;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$7;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x200 -> :sswitch_0
        0x400 -> :sswitch_0
    .end sparse-switch
.end method
