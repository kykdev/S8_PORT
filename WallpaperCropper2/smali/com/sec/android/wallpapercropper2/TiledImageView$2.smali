.class Lcom/sec/android/wallpapercropper2/TiledImageView$2;
.super Ljava/lang/Object;
.source "TiledImageView.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/wallpapercropper2/TiledImageView;->invalOnVsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;


# direct methods
.method constructor <init>(Lcom/sec/android/wallpapercropper2/TiledImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$2;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$2;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/wallpapercropper2/TiledImageView;->-set0(Lcom/sec/android/wallpapercropper2/TiledImageView;Z)Z

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$2;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/TiledImageView;->-get0(Lcom/sec/android/wallpapercropper2/TiledImageView;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method
