.class Lcom/android/settings/wfd/WifiDisplaySettings$4;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string/jumbo v0, "WifiDisplaySettings"

    const-string/jumbo v1, "mScanTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->stopScanWifiDisplays()V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get12(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->-get19(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
