.class public Lcom/amap/api/services/a/bd$a;
.super Ljava/lang/Object;
.source "SDKInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/a/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/services/a/bd$a;->d:Z

    const-string/jumbo v0, "standard"

    iput-object v0, p0, Lcom/amap/api/services/a/bd$a;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/bd$a;->f:[Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/services/a/bd$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/amap/api/services/a/bd$a;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/services/a/bd$a;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/bd$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/bd$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/services/a/bd$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/bd$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/services/a/bd$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/bd$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/services/a/bd$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/services/a/bd$a;->d:Z

    return v0
.end method

.method static synthetic e(Lcom/amap/api/services/a/bd$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/bd$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/amap/api/services/a/bd$a;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/bd$a;->f:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a([Ljava/lang/String;)Lcom/amap/api/services/a/bd$a;
    .locals 1

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/services/a/bd$a;->f:[Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/amap/api/services/a/bd;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/au;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/services/a/bd$a;->f:[Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/services/a/au;

    const-string/jumbo v1, "sdk packages is null"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/amap/api/services/a/bd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amap/api/services/a/bd;-><init>(Lcom/amap/api/services/a/bd$a;Lcom/amap/api/services/a/bd$1;)V

    return-object v0
.end method