.class Lcom/android/phone/callsettings/MultiNumberSettings$2;
.super Ljava/lang/Object;
.source "MultiNumberSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/MultiNumberSettings;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/MultiNumberSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/MultiNumberSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/MultiNumberSettings$2;->this$0:Lcom/android/phone/callsettings/MultiNumberSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/callsettings/MultiNumberSettings$2;->this$0:Lcom/android/phone/callsettings/MultiNumberSettings;

    iget-object v0, p0, Lcom/android/phone/callsettings/MultiNumberSettings$2;->this$0:Lcom/android/phone/callsettings/MultiNumberSettings;

    invoke-static {v0}, Lcom/android/phone/callsettings/MultiNumberSettings;->-get0(Lcom/android/phone/callsettings/MultiNumberSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/phone/callsettings/MultiNumberSettings;->setSwitchbarChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
