.class Lcom/android/providers/media/ContentApp$4;
.super Ljava/lang/Thread;
.source "ContentApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/ContentApp;->startScan(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/ContentApp;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/providers/media/ContentApp;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/providers/media/ContentApp$4;->this$0:Lcom/android/providers/media/ContentApp;

    iput p3, p0, Lcom/android/providers/media/ContentApp$4;->val$type:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0xc

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    sput-boolean v3, Lcom/android/providers/media/ContentApp;->mStopScan:Z

    const-string/jumbo v0, "ContentApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "face_restore FINISHED_TYPE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/providers/media/ContentApp$4;->val$type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/providers/media/ContentApp;->-get0()Lcom/android/providers/media/FaceScanner;

    move-result-object v0

    iget v1, p0, Lcom/android/providers/media/ContentApp$4;->val$type:I

    invoke-virtual {v0, v1}, Lcom/android/providers/media/FaceScanner;->sync(I)V

    sget-boolean v0, Lcom/android/providers/media/ContentApp;->mRestartScanner:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ContentApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "face_restore mRestartScanner 2 FINISHED_TYPE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/providers/media/ContentApp$4;->val$type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v3, Lcom/android/providers/media/ContentApp;->mRestartScanner:Z

    invoke-static {}, Lcom/android/providers/media/ContentApp;->-get0()Lcom/android/providers/media/FaceScanner;

    move-result-object v0

    iget v1, p0, Lcom/android/providers/media/ContentApp$4;->val$type:I

    invoke-virtual {v0, v1}, Lcom/android/providers/media/FaceScanner;->sync(I)V

    :cond_0
    return-void
.end method
