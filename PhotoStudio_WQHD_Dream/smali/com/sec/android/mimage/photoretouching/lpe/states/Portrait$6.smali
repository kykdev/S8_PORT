.class Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$6;
.super Ljava/lang/Object;
.source "Portrait.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->applyFirstEffect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    return-void
.end method