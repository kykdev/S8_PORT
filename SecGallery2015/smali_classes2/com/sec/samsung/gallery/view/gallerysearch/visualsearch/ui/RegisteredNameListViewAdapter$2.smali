.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$2;
.super Ljava/lang/Object;
.source "RegisteredNameListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$RegisteredNameListObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$RegisteredNameListObserver;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$RegisteredNameListObserver;->onListTouched()V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
