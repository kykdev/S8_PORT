.class Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$17$1;
.super Ljava/lang/Object;
.source "Drawing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$17;->onClearAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$17;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$17;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$17$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$17;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->isClearing:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$2002(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;Z)Z

    return-void
.end method