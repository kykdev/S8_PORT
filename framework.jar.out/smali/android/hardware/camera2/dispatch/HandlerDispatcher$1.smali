.class Landroid/hardware/camera2/dispatch/HandlerDispatcher$1;
.super Ljava/lang/Object;
.source "HandlerDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/dispatch/HandlerDispatcher;->dispatch(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/dispatch/HandlerDispatcher;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/dispatch/HandlerDispatcher;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/dispatch/HandlerDispatcher$1;->this$0:Landroid/hardware/camera2/dispatch/HandlerDispatcher;

    iput-object p2, p0, Landroid/hardware/camera2/dispatch/HandlerDispatcher$1;->val$method:Ljava/lang/reflect/Method;

    iput-object p3, p0, Landroid/hardware/camera2/dispatch/HandlerDispatcher$1;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v5, p0, Landroid/hardware/camera2/dispatch/HandlerDispatcher$1;->this$0:Landroid/hardware/camera2/dispatch/HandlerDispatcher;

    invoke-static {v5}, Landroid/hardware/camera2/dispatch/HandlerDispatcher;->-get0(Landroid/hardware/camera2/dispatch/HandlerDispatcher;)Landroid/hardware/camera2/dispatch/Dispatchable;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/camera2/dispatch/HandlerDispatcher$1;->val$method:Ljava/lang/reflect/Method;

    iget-object v7, p0, Landroid/hardware/camera2/dispatch/HandlerDispatcher$1;->val$args:[Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Landroid/hardware/camera2/dispatch/Dispatchable;->dispatch(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-static {v2}, Landroid/hardware/camera2/utils/UncheckedThrow;->throwAnyException(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v5, "HandlerDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IllegalArgumentException while invoking "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/hardware/camera2/dispatch/HandlerDispatcher$1;->val$method:Ljava/lang/reflect/Method;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v5, "HandlerDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IllegalAccessException while invoking "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/hardware/camera2/dispatch/HandlerDispatcher$1;->val$method:Ljava/lang/reflect/Method;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/camera2/utils/UncheckedThrow;->throwAnyException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
