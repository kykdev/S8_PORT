.class Lcom/android/phone/callsettings/BlockNumberProviderObserver$1;
.super Landroid/database/ContentObserver;
.source "BlockNumberProviderObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/BlockNumberProviderObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/BlockNumberProviderObserver;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/BlockNumberProviderObserver;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/BlockNumberProviderObserver$1;->this$0:Lcom/android/phone/callsettings/BlockNumberProviderObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    const-string/jumbo v0, "BlockNumberProviderObserver"

    const-string/jumbo v1, "BlockNumberProvider onChange"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/callsettings/BlockNumberProviderObserver$1;->this$0:Lcom/android/phone/callsettings/BlockNumberProviderObserver;

    invoke-static {v0}, Lcom/android/phone/callsettings/BlockNumberProviderObserver;->-wrap0(Lcom/android/phone/callsettings/BlockNumberProviderObserver;)V

    return-void
.end method
