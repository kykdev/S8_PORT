.class Lcom/android/server/desktopmode/DesktopModeService$5;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/desktopmode/DesktopModeService;->-set2(Lcom/android/server/desktopmode/DesktopModeService;I)I

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/desktopmode/DesktopModeService;->-set0(Lcom/android/server/desktopmode/DesktopModeService;Z)Z

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/android/server/desktopmode/DesktopModeService;->-set1(Lcom/android/server/desktopmode/DesktopModeService;Z)Z

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCoverStateChanged: attach: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get3(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  mCoverClosed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get4(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  mCoverType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get5(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap1(Lcom/android/server/desktopmode/DesktopModeService;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$5;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap17(Lcom/android/server/desktopmode/DesktopModeService;I)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method
