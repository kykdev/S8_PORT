.class public final Lcom/sec/android/gallery3d/data/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;,
        Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;,
        Lcom/sec/android/gallery3d/data/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field private static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field private static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field private static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field private static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field private static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field private static final US_ASCII:Ljava/nio/charset/Charset;

.field private static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field private final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/DiskLruCache;->US_ASCII:Ljava/nio/charset/Charset;

    new-instance v0, Lcom/sec/android/gallery3d/data/DiskLruCache$2;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/DiskLruCache$2;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/data/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 8

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->size:J

    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->nextSequenceNumber:J

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/sec/android/gallery3d/data/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/data/DiskLruCache$1;-><init>(Lcom/sec/android/gallery3d/data/DiskLruCache;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->directory:Ljava/io/File;

    iput p2, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->appVersion:I

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalFileTmp:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalFileBackup:Ljava/io/File;

    iput p3, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->valueCount:I

    iput-wide p4, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->maxSize:J

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/data/DiskLruCache;)Ljava/io/Writer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/data/DiskLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1600(Ljava/io/Closeable;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/gallery3d/data/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/gallery3d/data/DiskLruCache;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/gallery3d/data/DiskLruCache;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1900()Ljava/io/OutputStream;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/data/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/data/DiskLruCache;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/gallery3d/data/DiskLruCache;Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/data/DiskLruCache;->completeEdit(Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/data/DiskLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402(Lcom/sec/android/gallery3d/data/DiskLruCache;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private declared-synchronized completeEdit(Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;->access$1400(Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;)Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$700(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;)Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;

    move-result-object v8

    if-eq v8, p1, :cond_0

    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    invoke-static {v2}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$600(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;)Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v3, 0x0

    :goto_0
    iget v8, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_4

    invoke-static {p1}, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;->access$1500(Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;)[Z

    move-result-object v8

    aget-boolean v8, v8, v3

    if-nez v8, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;->abort()V

    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Newly created entry didn\'t create value for index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_2
    :try_start_2
    iget v8, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_7

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    if-eqz p2, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$1000(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$1000(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    iget-wide v8, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->size:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->size:J

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    invoke-static {v1}, Lcom/sec/android/gallery3d/data/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_3

    :cond_7
    iget v8, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->redundantOpCount:I

    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$702(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;)Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$600(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$602(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;Z)Z

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CLEAN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$1100(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_8

    iget-wide v8, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->nextSequenceNumber:J

    invoke-static {v2, v8, v9}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$1302(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;J)J

    :cond_8
    :goto_4
    iget-object v8, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v8}, Ljava/io/Writer;->flush()V

    iget-wide v8, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->size:J

    iget-wide v10, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->maxSize:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_9

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalRebuildRequired()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_9
    iget-object v8, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1

    :cond_a
    iget-object v8, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$1100(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "REMOVE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$1100(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method private delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/DiskLruCache;->close()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DiskLruCache;->deleteContents(Ljava/io/File;)V

    return-void
.end method

.method private static deleteContents(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not a directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DiskLruCache;->deleteContents(Ljava/io/File;)V

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to delete file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/DiskLruCache;->checkNotClosed()V

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/DiskLruCache;->validateKey(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;

    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$1300(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    if-nez v1, :cond_3

    :try_start_1
    new-instance v1, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;-><init>(Lcom/sec/android/gallery3d/data/DiskLruCache;Ljava/lang/String;Lcom/sec/android/gallery3d/data/DiskLruCache$1;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v0, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;-><init>(Lcom/sec/android/gallery3d/data/DiskLruCache;Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;Lcom/sec/android/gallery3d/data/DiskLruCache$1;)V

    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$702(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;)Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_3
    :try_start_2
    invoke-static {v1}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$700(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;)Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method private journalRebuildRequired()Z
    .locals 3

    const/16 v0, 0x7d0

    iget v1, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->redundantOpCount:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/sec/android/gallery3d/data/DiskLruCache;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-gtz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-gtz p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "valueCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v6, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v6, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v8, Ljava/io/File;

    const-string/jumbo v1, "journal"

    invoke-direct {v8, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_2
    :goto_0
    new-instance v0, Lcom/sec/android/gallery3d/data/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_0
    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/DiskLruCache;->readJournal()V

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/DiskLruCache;->processJournal()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    :goto_1
    return-object v7

    :cond_3
    const/4 v1, 0x0

    invoke-static {v6, v8, v1}, Lcom/sec/android/gallery3d/data/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    :catch_0
    move-exception v9

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DiskLruCache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/DiskLruCache;->delete()V

    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Lcom/sec/android/gallery3d/data/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/DiskLruCache;->rebuildJournal()V

    move-object v7, v0

    goto :goto_1
.end method

.method private processJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$700(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;)Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_0

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->size:J

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$1000(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->size:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$702(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;)Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;

    const/4 v2, 0x0

    :goto_2
    iget v3, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private readJournal()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v5, Lcom/sec/android/gallery3d/data/StrictLineReader;

    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v9, Lcom/sec/android/gallery3d/data/DiskLruCache;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v5, v8, v9}, Lcom/sec/android/gallery3d/data/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    :try_start_0
    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, "libcore.io.DiskLruCache"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "1"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->appVersion:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->valueCount:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unexpected journal header: ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v8

    invoke-static {v5}, Lcom/sec/android/gallery3d/data/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    throw v8

    :cond_1
    const/4 v3, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sec/android/gallery3d/data/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    iget-object v8, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    sub-int v8, v3, v8

    iput v8, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->redundantOpCount:I

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/StrictLineReader;->hasUnterminatedLine()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/DiskLruCache;->rebuildJournal()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {v5}, Lcom/sec/android/gallery3d/data/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_2
    :try_start_3
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    new-instance v10, Ljava/io/FileOutputStream;

    iget-object v11, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v12, 0x1

    invoke-direct {v10, v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v11, Lcom/sec/android/gallery3d/data/DiskLruCache;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v9, v10, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v8, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x20

    const/4 v8, 0x0

    const/4 v7, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v7, :cond_0

    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unexpected journal line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ne v5, v7, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "REMOVE"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_3

    const-string/jumbo v6, "REMOVE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_3
    iget-object v6, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;

    if-nez v0, :cond_4

    new-instance v0, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;

    invoke-direct {v0, p0, v2, v8}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;-><init>(Lcom/sec/android/gallery3d/data/DiskLruCache;Ljava/lang/String;Lcom/sec/android/gallery3d/data/DiskLruCache$1;)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eq v5, v7, :cond_5

    const-string/jumbo v6, "CLEAN"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_5

    const-string/jumbo v6, "CLEAN"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v0, v6}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$602(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;Z)Z

    invoke-static {v0, v8}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$702(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;)Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;

    invoke-static {v0, v4}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$800(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-ne v5, v7, :cond_6

    const-string/jumbo v6, "DIRTY"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_6

    const-string/jumbo v6, "DIRTY"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;

    invoke-direct {v6, p0, v0, v8}, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;-><init>(Lcom/sec/android/gallery3d/data/DiskLruCache;Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;Lcom/sec/android/gallery3d/data/DiskLruCache$1;)V

    invoke-static {v0, v6}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$702(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;)Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;

    goto :goto_0

    :cond_6
    if-ne v5, v7, :cond_7

    const-string/jumbo v6, "READ"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_7

    const-string/jumbo v6, "READ"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_7
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unexpected journal line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v4, Lcom/sec/android/gallery3d/data/DiskLruCache;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string/jumbo v2, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->appVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->valueCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$700(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;)Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$1100(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$1100(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalFileBackup:Ljava/io/File;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sec/android/gallery3d/data/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/android/gallery3d/data/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v5, Lcom/sec/android/gallery3d/data/DiskLruCache;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/sec/android/gallery3d/data/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_1
    return-void
.end method

.method private trimToSize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->size:J

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->maxSize:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/data/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "keys must not contain spaces or newlines: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$700(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;)Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$700(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;)Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/DiskLruCache;->trimToSize()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public edit(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/DiskLruCache;->checkNotClosed()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/DiskLruCache;->trimToSize()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/DiskLruCache$Snapshot;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/DiskLruCache;->checkNotClosed()V

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/DiskLruCache;->validateKey(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$600(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->valueCount:I

    new-array v3, v5, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_1
    :try_start_2
    iget v5, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->valueCount:I

    if-ge v2, v5, :cond_2

    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v5, v3, v2
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    :goto_2
    :try_start_3
    iget v5, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->valueCount:I

    if-ge v2, v5, :cond_0

    aget-object v5, v3, v2

    if-eqz v5, :cond_0

    aget-object v5, v3, v2

    invoke-static {v5}, Lcom/sec/android/gallery3d/data/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget v4, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->redundantOpCount:I

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string/jumbo v5, "READ "

    invoke-virtual {v4, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalRebuildRequired()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_3
    new-instance v4, Lcom/sec/android/gallery3d/data/DiskLruCache$Snapshot;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/sec/android/gallery3d/data/DiskLruCache$Snapshot;-><init>([Ljava/io/InputStream;Lcom/sec/android/gallery3d/data/DiskLruCache$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/DiskLruCache;->checkNotClosed()V

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/DiskLruCache;->validateKey(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$700(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;)Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    monitor-exit p0

    return v3

    :cond_1
    const/4 v2, 0x0

    :goto_1
    :try_start_1
    iget v3, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "failed to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_2
    :try_start_2
    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->size:J

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$1000(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->size:J

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;->access$1000(Lcom/sec/android/gallery3d/data/DiskLruCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->redundantOpCount:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string/jumbo v4, "REMOVE "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/DiskLruCache;->journalRebuildRequired()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public declared-synchronized size()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
