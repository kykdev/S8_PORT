.class Lcom/android/phone/intprefix/CountryCodePreference$5;
.super Ljava/lang/Object;
.source "CountryCodePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/intprefix/CountryCodePreference;->launchEditDialog(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/intprefix/CountryCodePreference;

.field final synthetic val$editCode:Landroid/widget/EditText;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$pref:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/phone/intprefix/CountryCodePreference;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/intprefix/CountryCodePreference$5;->this$0:Lcom/android/phone/intprefix/CountryCodePreference;

    iput-object p2, p0, Lcom/android/phone/intprefix/CountryCodePreference$5;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/phone/intprefix/CountryCodePreference$5;->val$editCode:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/android/phone/intprefix/CountryCodePreference$5;->val$pref:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/phone/intprefix/CountryCodePreference$5;->this$0:Lcom/android/phone/intprefix/CountryCodePreference;

    invoke-static {v0}, Lcom/android/phone/intprefix/CountryCodePreference;->-get0(Lcom/android/phone/intprefix/CountryCodePreference;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/intprefix/CountryCodePreference$5;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/android/phone/intprefix/CountryCodePreference$5;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/intprefix/CountryCodePreference$5;->val$editCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/intprefix/CountryCodePreference$5;->this$0:Lcom/android/phone/intprefix/CountryCodePreference;

    iget-object v2, p0, Lcom/android/phone/intprefix/CountryCodePreference$5;->val$editText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/intprefix/CountryCodePreference$5;->val$editCode:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/phone/intprefix/CountryCodePreference$5;->val$pref:Landroid/preference/Preference;

    check-cast v0, Lcom/android/phone/intprefix/InternationalPrefixPreference;

    invoke-static {v1, v2, v3, v0}, Lcom/android/phone/intprefix/CountryCodePreference;->-wrap4(Lcom/android/phone/intprefix/CountryCodePreference;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/android/phone/intprefix/InternationalPrefixPreference;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/intprefix/CountryCodePreference$5;->this$0:Lcom/android/phone/intprefix/CountryCodePreference;

    invoke-static {v0}, Lcom/android/phone/intprefix/CountryCodePreference;->-wrap6(Lcom/android/phone/intprefix/CountryCodePreference;)V

    goto :goto_0
.end method
