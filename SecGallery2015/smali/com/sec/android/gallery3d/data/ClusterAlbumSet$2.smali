.class Lcom/sec/android/gallery3d/data/ClusterAlbumSet$2;
.super Ljava/lang/Object;
.source "ClusterAlbumSet.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->getMediaItemFromPath(Ljava/util/ArrayList;IILcom/sec/android/gallery3d/data/DataManager;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

.field final synthetic val$buf:[Lcom/sec/android/gallery3d/data/MediaItem;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/ClusterAlbumSet;[Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$2;->this$0:Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$2;->val$buf:[Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$2;->val$buf:[Lcom/sec/android/gallery3d/data/MediaItem;

    aput-object p2, v0, p1

    const/4 v0, 0x1

    return v0
.end method