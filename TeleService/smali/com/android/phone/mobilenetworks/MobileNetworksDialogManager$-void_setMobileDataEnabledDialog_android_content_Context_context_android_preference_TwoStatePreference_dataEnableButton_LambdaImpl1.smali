.class final synthetic Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$-void_setMobileDataEnabledDialog_android_content_Context_context_android_preference_TwoStatePreference_dataEnableButton_LambdaImpl1;
.super Ljava/lang/Object;
.source "MobileNetworksDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_setMobileDataEnabledDialog_android_content_Context_context_android_preference_TwoStatePreference_dataEnableButton_LambdaImpl1"
.end annotation


# instance fields
.field private synthetic val$dataEnableButton:Landroid/preference/TwoStatePreference;


# direct methods
.method public synthetic constructor <init>(Landroid/preference/TwoStatePreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$-void_setMobileDataEnabledDialog_android_content_Context_context_android_preference_TwoStatePreference_dataEnableButton_LambdaImpl1;->val$dataEnableButton:Landroid/preference/TwoStatePreference;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$-void_setMobileDataEnabledDialog_android_content_Context_context_android_preference_TwoStatePreference_dataEnableButton_LambdaImpl1;->val$dataEnableButton:Landroid/preference/TwoStatePreference;

    invoke-static {v0, p1, p2}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->-com_android_phone_mobilenetworks_MobileNetworksDialogManager_lambda$3(Landroid/preference/TwoStatePreference;Landroid/content/DialogInterface;I)V

    return-void
.end method
