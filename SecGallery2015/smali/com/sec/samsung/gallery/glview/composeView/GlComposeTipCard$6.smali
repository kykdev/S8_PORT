.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$6;
.super Ljava/lang/Object;
.source "GlComposeTipCard.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->processDoneClick()Z

    move-result v0

    return v0
.end method