.class public final Landroid/support/v4/view/KeyEventCompat;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;,
        Landroid/support/v4/view/KeyEventCompat$EclairKeyEventVersionImpl;,
        Landroid/support/v4/view/KeyEventCompat$HoneycombKeyEventVersionImpl;,
        Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/KeyEventCompat$HoneycombKeyEventVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/KeyEventCompat$HoneycombKeyEventVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startTracking(Landroid/view/KeyEvent;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->startTracking(Landroid/view/KeyEvent;)V

    return-void
.end method
