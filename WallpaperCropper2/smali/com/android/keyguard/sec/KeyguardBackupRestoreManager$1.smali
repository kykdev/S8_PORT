.class Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$1;
.super Landroid/content/BroadcastReceiver;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "KeyguardBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive ( action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "com.sec.android.intent.action.REQUEST_BACKUP_LOCKSCREEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.sec.android.intent.action.REQUEST_RESTORE_LOCKSCREEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "SAVE_PATH"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->access$002(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "SOURCE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->access$102(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->launchKeyguardBackuporRestore(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "SAVE_PATH"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->access$002(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "SOURCE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->access$102(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->launchKeyguardBackuporRestore(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
