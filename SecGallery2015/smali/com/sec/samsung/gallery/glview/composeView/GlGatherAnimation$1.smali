.class Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$1;
.super Ljava/lang/Object;
.source "GlGatherAnimation.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->startDragAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->startFollowingAnim()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;)V

    return-void
.end method

.method public onAnimationRepeat(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    const/4 v1, 0x1

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCurrentAnim:I
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->access$002(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;I)I

    return-void
.end method