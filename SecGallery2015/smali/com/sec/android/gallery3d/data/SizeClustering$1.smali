.class Lcom/sec/android/gallery3d/data/SizeClustering$1;
.super Ljava/lang/Object;
.source "SizeClustering.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/SizeClustering;->run(Lcom/sec/android/gallery3d/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/SizeClustering;

.field final synthetic val$group:[Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/SizeClustering;[Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/SizeClustering$1;->this$0:Lcom/sec/android/gallery3d/data/SizeClustering;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/SizeClustering$1;->val$group:[Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 6

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getSize()J

    move-result-wide v2

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/sec/android/gallery3d/data/SizeClustering;->access$000()[J

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/data/SizeClustering;->access$000()[J

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    aget-wide v4, v4, v5

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/SizeClustering$1;->val$group:[Ljava/util/ArrayList;

    aget-object v1, v4, v0

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/SizeClustering$1;->val$group:[Ljava/util/ArrayList;

    aput-object v1, v4, v0

    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    return v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
