.class Lcom/sec/ims/ImsManager$2;
.super Landroid/content/BroadcastReceiver;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/ims/ImsManager;->connectService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/ims/ImsManager;


# direct methods
.method constructor <init>(Lcom/sec/ims/ImsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/ImsManager$2;->this$0:Lcom/sec/ims/ImsManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v1, "ImsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.sec.ims.imsmanager.RESTART"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/ims/ImsManager$2;->this$0:Lcom/sec/ims/ImsManager;

    invoke-static {v1}, Lcom/sec/ims/ImsManager;->-wrap0(Lcom/sec/ims/ImsManager;)Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "ImsManager"

    const-string/jumbo v2, "ImsService not found, this should not happen!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/ims/ImsManager$2;->this$0:Lcom/sec/ims/ImsManager;

    invoke-static {v1}, Lcom/sec/ims/ImsManager;->-get1(Lcom/sec/ims/ImsManager;)Lcom/sec/ims/ImsManager$ConnectionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/ims/ImsManager$2;->this$0:Lcom/sec/ims/ImsManager;

    invoke-static {v1}, Lcom/sec/ims/ImsManager;->-get1(Lcom/sec/ims/ImsManager;)Lcom/sec/ims/ImsManager$ConnectionListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/ImsManager$ConnectionListener;->onConnected()V

    :cond_1
    iget-object v1, p0, Lcom/sec/ims/ImsManager$2;->this$0:Lcom/sec/ims/ImsManager;

    iget-object v2, p0, Lcom/sec/ims/ImsManager$2;->this$0:Lcom/sec/ims/ImsManager;

    invoke-static {v2}, Lcom/sec/ims/ImsManager;->-wrap0(Lcom/sec/ims/ImsManager;)Lcom/sec/ims/IImsService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/ims/ImsManager;->-wrap1(Lcom/sec/ims/ImsManager;Lcom/sec/ims/IImsService;)V

    :cond_2
    return-void
.end method
