.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$1;
.super Ljava/lang/Object;
.source "AbstractMoreInfoItemLocation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->createDeleteClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->handleDeleteIconClick()V

    return-void
.end method