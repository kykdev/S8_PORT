.class Lcom/sec/samsung/gallery/view/AbstractActionBar$1;
.super Ljava/lang/Object;
.source "AbstractActionBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/AbstractActionBar;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/AbstractActionBar;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar$1;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->access$000(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    return-void
.end method
