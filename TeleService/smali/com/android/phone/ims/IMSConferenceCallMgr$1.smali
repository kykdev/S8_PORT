.class Lcom/android/phone/ims/IMSConferenceCallMgr$1;
.super Landroid/content/BroadcastReceiver;
.source "IMSConferenceCallMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ims/IMSConferenceCallMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ims/IMSConferenceCallMgr;


# direct methods
.method constructor <init>(Lcom/android/phone/ims/IMSConferenceCallMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ims/IMSConferenceCallMgr$1;->this$0:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[IMSConferenceCallMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IMSConferenceCallMgrReceiver onReceive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallMgr$1;->this$0:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-static {v1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->-wrap0(Lcom/android/phone/ims/IMSConferenceCallMgr;)V

    :cond_0
    return-void
.end method
