.class Lcom/sec/samsung/gallery/view/eventview/EventViewState$19;
.super Ljava/lang/Object;
.source "EventViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/eventview/EventViewState;->runSelectionTask(Lcom/sec/android/gallery3d/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

.field final synthetic val$mediaSet:Lcom/sec/android/gallery3d/data/MediaSet;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$19;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$19;->val$mediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$SelectionTask;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$19;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$19;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$5100(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    new-instance v3, Lcom/sec/samsung/gallery/view/eventview/EventViewState$19$1;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$19$1;-><init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState$19;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$19;->val$mediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$SelectionTask;-><init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;Landroid/content/Context;Lcom/sec/android/gallery3d/data/OnProgressListener;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$19;->val$mediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$SelectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
