.class Landroid/widget/SemFastScroller$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SemFastScroller;


# direct methods
.method constructor <init>(Landroid/widget/SemFastScroller;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemFastScroller$2;->this$0:Landroid/widget/SemFastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v1, p0, Landroid/widget/SemFastScroller$2;->this$0:Landroid/widget/SemFastScroller;

    iget-object v0, p0, Landroid/widget/SemFastScroller$2;->this$0:Landroid/widget/SemFastScroller;

    invoke-static {v0}, Landroid/widget/SemFastScroller;->-get0(Landroid/widget/SemFastScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Landroid/widget/SemFastScroller;->-set0(Landroid/widget/SemFastScroller;Z)Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
