.class Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$5;
.super Ljava/lang/Object;
.source "DetailActionBarSkeleton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->createAndSetVisibilityOfFlipPhotoMenu(Landroid/view/Menu;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$5;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$5;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->saveFlippedPhotoAsNew()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->access$400(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;)V

    return-void
.end method