.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$3;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->cleanUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$3;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$3;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->clearScreen()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$3;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->isUnlocked:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->access$402(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;Z)Z

    return-void
.end method