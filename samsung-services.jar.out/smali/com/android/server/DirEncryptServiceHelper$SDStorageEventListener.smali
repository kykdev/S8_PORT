.class Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;
.super Landroid/os/storage/StorageEventListener;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DirEncryptServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SDStorageEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DirEncryptServiceHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/DirEncryptServiceHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DirEncryptServiceHelper;Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;-><init>(Lcom/android/server/DirEncryptServiceHelper;)V

    return-void
.end method


# virtual methods
.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-nez v5, :cond_1

    :cond_0
    const-string/jumbo v5, "DirEncryptService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "vol.getType() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v5, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "DirEncryptService"

    const-string/jumbo v6, "Not SD card"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {p2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "DirEncryptService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "newState is a same state with oldState:: newState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , oldState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " !!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo v5, "DirEncryptService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onVolumeStateChanged UUID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-static {v5}, Lcom/android/server/DirEncryptServiceHelper;->-get2(Lcom/android/server/DirEncryptServiceHelper;)Lcom/samsung/android/security/DirEncryptionWrapper;

    move-result-object v5

    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/android/security/DirEncryptionWrapper;->setExternalSDvolId(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-static {v5}, Lcom/android/server/DirEncryptServiceHelper;->-get2(Lcom/android/server/DirEncryptServiceHelper;)Lcom/samsung/android/security/DirEncryptionWrapper;

    move-result-object v5

    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/android/security/DirEncryptionWrapper;->setExternalSDvolFsUuid(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-static {v5}, Lcom/android/server/DirEncryptServiceHelper;->-get2(Lcom/android/server/DirEncryptServiceHelper;)Lcom/samsung/android/security/DirEncryptionWrapper;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->setExternalSDvolState(Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string/jumbo v5, "vold.decrypt"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "trigger_default_encryption"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "trigger_restart_min_framework"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    const/4 v3, 0x1

    :cond_5
    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-static {v5}, Lcom/android/server/DirEncryptServiceHelper;->-get2(Lcom/android/server/DirEncryptServiceHelper;)Lcom/samsung/android/security/DirEncryptionWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/security/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v5

    if-nez v5, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_6
    :goto_0
    const-string/jumbo v5, "unmounted"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-static {v5}, Lcom/android/server/DirEncryptServiceHelper;->-get2(Lcom/android/server/DirEncryptServiceHelper;)Lcom/samsung/android/security/DirEncryptionWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/security/DirEncryptionWrapper;->getUserDiff()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "DirEncryptService"

    const-string/jumbo v6, "MEDIA_UNMOUNTED + mDew.getUserDiff = true"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-static {v5}, Lcom/android/server/DirEncryptServiceHelper;->-get2(Lcom/android/server/DirEncryptServiceHelper;)Lcom/samsung/android/security/DirEncryptionWrapper;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/samsung/android/security/DirEncryptionWrapper;->setUserDiff(Z)V

    :try_start_0
    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-static {v5}, Lcom/android/server/DirEncryptServiceHelper;->-get2(Lcom/android/server/DirEncryptServiceHelper;)Lcom/samsung/android/security/DirEncryptionWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/security/DirEncryptionWrapper;->mountVolume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_1
    return-void

    :cond_8
    const-string/jumbo v5, "DirEncryptService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onVolumeStateChanged:: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , oldstate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " newState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_6

    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-static {v5}, Lcom/android/server/DirEncryptServiceHelper;->-get1(Lcom/android/server/DirEncryptServiceHelper;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string/jumbo v5, "unmounted"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string/jumbo v5, "removed"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_9
    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-static {v5}, Lcom/android/server/DirEncryptServiceHelper;->-get3(Lcom/android/server/DirEncryptServiceHelper;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
