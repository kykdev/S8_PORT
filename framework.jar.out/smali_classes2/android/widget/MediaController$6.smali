.class Landroid/widget/MediaController$6;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MediaController;


# direct methods
.method constructor <init>(Landroid/widget/MediaController;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    invoke-static {v4}, Landroid/widget/MediaController;->-get4(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v4

    int-to-long v0, v4

    int-to-long v4, p2

    mul-long/2addr v4, v0

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    iget-object v4, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    invoke-static {v4}, Landroid/widget/MediaController;->-get4(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v4

    long-to-int v5, v2

    invoke-interface {v4, v5}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    iget-object v4, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    invoke-static {v4}, Landroid/widget/MediaController;->-get0(Landroid/widget/MediaController;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    invoke-static {v4}, Landroid/widget/MediaController;->-get0(Landroid/widget/MediaController;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    long-to-int v6, v2

    invoke-static {v5, v6}, Landroid/widget/MediaController;->-wrap1(Landroid/widget/MediaController;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    const v1, 0x36ee80

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/MediaController;->-set0(Landroid/widget/MediaController;Z)Z

    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    iget-object v1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    invoke-static {v1}, Landroid/widget/MediaController;->-get5(Landroid/widget/MediaController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/MediaController;->-set0(Landroid/widget/MediaController;Z)Z

    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    invoke-static {v0}, Landroid/widget/MediaController;->-wrap0(Landroid/widget/MediaController;)I

    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    invoke-static {v0}, Landroid/widget/MediaController;->-wrap4(Landroid/widget/MediaController;)V

    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    iget-object v1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    invoke-static {v1}, Landroid/widget/MediaController;->-get5(Landroid/widget/MediaController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
