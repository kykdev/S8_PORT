.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread$1;
.super Ljava/lang/Object;
.source "GLSuperImpose.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose$GifPlayThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method