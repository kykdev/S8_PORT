.class Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;
.super Landroid/os/Handler;
.source "VirtualShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/VirtualShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationHandler"
.end annotation


# instance fields
.field private mVirtualShot:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/VirtualShot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->mVirtualShot:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->mVirtualShot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->mVirtualShot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$600(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$1200(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$600(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$1300(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$1400(Lcom/sec/android/app/camera/shootingmode/VirtualShot;IZ)V

    goto :goto_0

    :pswitch_2
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$600(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$1500(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$1600(Lcom/sec/android/app/camera/shootingmode/VirtualShot;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
