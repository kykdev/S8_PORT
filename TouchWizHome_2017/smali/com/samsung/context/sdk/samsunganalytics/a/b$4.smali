.class Lcom/samsung/context/sdk/samsunganalytics/a/b$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/a/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/context/sdk/samsunganalytics/a/b;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b$4;->a:Lcom/samsung/context/sdk/samsunganalytics/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b$4;->a:Lcom/samsung/context/sdk/samsunganalytics/a/b;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->c(Lcom/samsung/context/sdk/samsunganalytics/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "uncaughtException"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/i/a;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/c/c$a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/c/c$a;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/c/c;->a(Lcom/samsung/context/sdk/samsunganalytics/a/c/c$a;)Lcom/samsung/context/sdk/samsunganalytics/a/c/a;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/samsung/context/sdk/samsunganalytics/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b$4;->a:Lcom/samsung/context/sdk/samsunganalytics/a/b;

    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;

    invoke-direct {v2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;-><init>()V

    invoke-virtual {v2, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;->setMessage(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;

    move-result-object v0

    const-string v2, "pn"

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;->isCrash(Z)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;->build()Ljava/util/Map;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->a(Ljava/util/Map;Z)I

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b$4;->a:Lcom/samsung/context/sdk/samsunganalytics/a/b;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->d(Lcom/samsung/context/sdk/samsunganalytics/a/b;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b$4;->a:Lcom/samsung/context/sdk/samsunganalytics/a/b;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->d(Lcom/samsung/context/sdk/samsunganalytics/a/b;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
