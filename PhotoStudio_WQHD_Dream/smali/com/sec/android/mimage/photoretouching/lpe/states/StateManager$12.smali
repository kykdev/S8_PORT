.class Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$12;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setStateTOSuperImpose(ILjava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

.field final synthetic val$gifBitmapList:Ljava/util/ArrayList;

.field final synthetic val$gifTimeList:Ljava/util/ArrayList;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$12;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$12;->val$id:I

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$12;->val$gifBitmapList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$12;->val$gifTimeList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$12;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mSuperImposeState:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$12;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mSuperImposeState:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$12;->val$id:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$12;->val$gifBitmapList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$12;->val$gifTimeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->addImageToView(ILjava/util/ArrayList;Ljava/util/ArrayList;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$12;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$12;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$1300(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->enableDone(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$12;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$1300(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->enableCancel(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$12;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getLayerLayout()Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$12;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getLayerLayout()Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    move-result-object v1

    const v2, 0x10000004

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->setSelection(I)V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$12;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mSuperImposeState:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->highLightView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;)V

    :cond_1
    return-void
.end method