.class public Lcom/sec/samsung/gallery/lib/factory/ShowContextMenuFactory;
.super Ljava/lang/Object;
.source "ShowContextMenuFactory.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/factory/LibFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/lib/se/SeShowContextMenu;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/se/SeShowContextMenu;-><init>()V

    return-object v0
.end method