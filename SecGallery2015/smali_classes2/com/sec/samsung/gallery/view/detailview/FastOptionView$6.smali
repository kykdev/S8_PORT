.class Lcom/sec/samsung/gallery/view/detailview/FastOptionView$6;
.super Ljava/lang/Object;
.source "FastOptionView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->childViewSetListener(ILandroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$6;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$6;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    const/4 v1, 0x1

    # setter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFastMenuItemLongPressed:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1702(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$6;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mListener:Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1300(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$6;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mListener:Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1300(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;->enableFastOptionTimeout(Z)V

    :cond_0
    return v2
.end method