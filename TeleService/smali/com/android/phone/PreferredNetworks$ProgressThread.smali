.class Lcom/android/phone/PreferredNetworks$ProgressThread;
.super Ljava/lang/Thread;
.source "PreferredNetworks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PreferredNetworks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressThread"
.end annotation


# instance fields
.field progressHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/phone/PreferredNetworks;


# direct methods
.method constructor <init>(Lcom/android/phone/PreferredNetworks;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PreferredNetworks$ProgressThread;->this$0:Lcom/android/phone/PreferredNetworks;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/phone/PreferredNetworks$ProgressThread;->progressHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/PreferredNetworks$ProgressThread;->this$0:Lcom/android/phone/PreferredNetworks;

    iget-object v1, v1, Lcom/android/phone/PreferredNetworks;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget v2, Lcom/android/phone/PreferredNetworks;->sSimId:I

    invoke-static {v1, v2}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getPreferredNetworkList(Landroid/os/Message;I)V

    iget-object v1, p0, Lcom/android/phone/PreferredNetworks$ProgressThread;->progressHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PreferredNetworks$ProgressThread;->progressHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
