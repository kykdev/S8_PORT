.class Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$2;
.super Ljava/lang/Object;
.source "ChangePlayerListDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$2;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$2;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->access$400(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lez v0, :cond_1

    if-lt p3, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$2;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->access$500(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    add-int/lit8 v1, v0, 0x1

    if-ge p3, v1, :cond_2

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$2;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->access$500(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$2;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$2;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mListAdapter:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->access$100(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;)Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;

    move-result-object v1

    sub-int v3, p3, v0

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;

    # invokes: Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->handleChangePlayer(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;)V
    invoke-static {v2, v1}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->access$600(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;)V

    goto :goto_0
.end method