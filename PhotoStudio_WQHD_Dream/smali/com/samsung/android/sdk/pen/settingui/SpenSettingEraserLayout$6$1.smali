.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$6$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SpenSettingEraserLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$6;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$6;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$6$1;->this$1:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$6;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$6$1;->this$1:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$6;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$6;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->setVisibility(I)V

    return-void
.end method