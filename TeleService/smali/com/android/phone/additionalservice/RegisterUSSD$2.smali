.class Lcom/android/phone/additionalservice/RegisterUSSD$2;
.super Ljava/lang/Object;
.source "RegisterUSSD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/additionalservice/RegisterUSSD;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/additionalservice/RegisterUSSD;


# direct methods
.method constructor <init>(Lcom/android/phone/additionalservice/RegisterUSSD;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$2;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD$2;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-static {v0}, Lcom/android/phone/additionalservice/RegisterUSSD;->-get0(Lcom/android/phone/additionalservice/RegisterUSSD;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$2;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    iget-object v1, v1, Lcom/android/phone/additionalservice/RegisterUSSD;->editText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
