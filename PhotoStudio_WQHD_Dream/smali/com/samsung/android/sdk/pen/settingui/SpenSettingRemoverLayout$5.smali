.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$5;
.super Ljava/lang/Object;
.source "SpenSettingRemoverLayout.java"

# interfaces
.implements Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZI)V
    .locals 4

    const/high16 v3, 0x41200000    # 10.0f

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCutterDataList:[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$1800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCurrentCutterType:I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$1900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCutterDataList:[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$1800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCurrentCutterType:I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$1900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)I

    move-result v2

    aget-object v1, v1, v2

    add-int/lit8 v2, p2, 0x1

    int-to-float v2, v2

    mul-float/2addr v2, v3

    div-float/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewRemoverInterface;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$2000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewRemoverInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewRemoverInterface;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$2000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewRemoverInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sdk/pen/SpenSettingViewRemoverInterface;->getRemoverSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$2100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    int-to-float v2, v2

    iput v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    iput v2, v1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$2100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    iput v2, v1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewRemoverInterface;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$2000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewRemoverInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/pen/SpenSettingViewRemoverInterface;->setRemoverSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;I)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;I)V
    .locals 0

    return-void
.end method

.method public onUpdate(ZI)V
    .locals 0

    return-void
.end method