.class Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$4;
.super Ljava/lang/Object;
.source "NearbyViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->startTimeViewState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$4;->this$0:Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "KEY_VIEW_REDRAW"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$4;->this$0:Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->access$600(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$4;->this$0:Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->access$600(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$4;->this$0:Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->access$700(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$4;->this$0:Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->access$800(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->moveTab(I)V

    :cond_0
    return-void
.end method
