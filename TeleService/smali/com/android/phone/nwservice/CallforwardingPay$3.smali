.class Lcom/android/phone/nwservice/CallforwardingPay$3;
.super Ljava/lang/Object;
.source "CallforwardingPay.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nwservice/CallforwardingPay;->showAlertDialogSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nwservice/CallforwardingPay;


# direct methods
.method constructor <init>(Lcom/android/phone/nwservice/CallforwardingPay;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/nwservice/CallforwardingPay$3;->this$0:Lcom/android/phone/nwservice/CallforwardingPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/nwservice/CallforwardingPay$3;->this$0:Lcom/android/phone/nwservice/CallforwardingPay;

    const-string/jumbo v1, "+819031014290"

    invoke-static {v0, v1}, Lcom/android/phone/nwservice/CallforwardingPay;->-wrap0(Lcom/android/phone/nwservice/CallforwardingPay;Ljava/lang/String;)V

    return-void
.end method
