.class Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate$1;
.super Landroid/os/Handler;
.source "SemContextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;-><init>(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    invoke-static {v3}, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;->-get1(Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;)Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/hardware/context/SemContextEvent;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v0, v1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    invoke-static {v3}, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;->-get0(Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "SemContextManager"

    const-string/jumbo v4, "Data is received so remove listener related HistoryData"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    invoke-static {v3}, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;->-get1(Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;)Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/samsung/android/hardware/context/SemContextListener;->onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    iget-object v3, v3, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;->this$0:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    invoke-static {v4}, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;->-get1(Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;)Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    iget-object v3, v3, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;->this$0:Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-static {v3, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->-wrap0(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextEvent;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    invoke-static {v3}, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;->-get1(Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;)Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/samsung/android/hardware/context/SemContextListener;->onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    iget-object v3, v3, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;->this$0:Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-static {v3}, Lcom/samsung/android/hardware/context/SemContextManager;->-get0(Lcom/samsung/android/hardware/context/SemContextManager;)Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    iget-object v3, v3, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;->this$0:Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-static {v3}, Lcom/samsung/android/hardware/context/SemContextManager;->-get0(Lcom/samsung/android/hardware/context/SemContextManager;)Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    invoke-static {v4}, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;->-get1(Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;)Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "SemContextManager"

    const-string/jumbo v4, "Listener is already registered and history data is sent to Application"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    iget-object v3, v3, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;->this$0:Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-static {v3}, Lcom/samsung/android/hardware/context/SemContextManager;->-get0(Lcom/samsung/android/hardware/context/SemContextManager;)Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/samsung/android/hardware/context/SemContextListener;->onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V

    goto :goto_0
.end method
