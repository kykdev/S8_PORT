.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$1$1;
.super Ljava/lang/Object;
.source "HistoryListViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$1;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$1$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$1$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$1;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$1$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$1;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$1;->val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;)V

    return-void
.end method
