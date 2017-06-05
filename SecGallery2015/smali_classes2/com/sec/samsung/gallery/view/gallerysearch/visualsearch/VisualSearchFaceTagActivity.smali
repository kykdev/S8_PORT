.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;
.super Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;
.source "VisualSearchFaceTagActivity.java"


# static fields
.field private static final FEATURE_GREAT_SEARCH_UI:Z

.field private static final INDEX_PHOTO_ID:I = 0x3

.field private static final INDEX_RAW_CONTACT_ID:I = 0x2

.field private static final KEY_IS_MY_PROFILE:Ljava/lang/String; = "is_my_profile"

.field private static final KEY_NEED_TO_UPDATE_PHOTO:Ljava/lang/String; = "need_to_update_photo"

.field private static final KEY_SELECTED_FACE_NAME:Ljava/lang/String; = "selected_face_name"

.field private static final KEY_SELECTED_FACE_PERSON_ID:Ljava/lang/String; = "selected_face_person_id"

.field private static final KEY_SELECTED_FACE_RAW_ID:Ljava/lang/String; = "selected_face_raw_id"

.field private static final MAX_INPUT_TAG_LENGTH:I = 0x32

.field private static final SAVE_BUTTON_ALPHA_DISABLED:F = 0.4f

.field private static final SAVE_BUTTON_ALPHA_ENABLED:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "VisualSearchFaceTagActivity"


# instance fields
.field private mAutoCompleteContactAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;

.field private mContextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

.field private mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

.field private mEditTextView:Landroid/widget/AutoCompleteTextView;

.field private final mLengthFilter:Landroid/text/InputFilter$LengthFilter;

.field private mLongTextToast:Landroid/widget/Toast;

.field private mMyProfileListView:Landroid/view/View;

.field private mMyProfileListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;

.field private mMyProfileSection:Ljava/lang/String;

.field private mSaveBtn:Landroid/widget/LinearLayout;

.field private mSuggestedNameListView:Landroid/view/View;

.field private mSuggestedNameListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;

.field private mSuggestedNameSection:Ljava/lang/String;

.field private final mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGreatSearchUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->FEATURE_GREAT_SEARCH_UI:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mMyProfileListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSuggestedNameListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mMyProfileSection:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSuggestedNameSection:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mMyProfileListView:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSuggestedNameListView:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSaveBtn:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$6;

    const/16 v1, 0x32

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$6;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;I)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mLengthFilter:Landroid/text/InputFilter$LengthFilter;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$7;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$7;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->closeSoftInputFromWindow()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mEditTextView:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;Ljava/lang/String;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->faceTagSubmit(Ljava/lang/String;JZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->updateMyProfileListView()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->updateSuggestedNameListView()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mLongTextToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mLongTextToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mContextReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->updateSaveButton(Z)V

    return-void
.end method

.method private checkRequiredPermissions()Z
    .locals 2

    sget-object v0, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_ENTERING_SEARCH_FACE_TAG:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private closeSoftInputFromWindow()V
    .locals 3

    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mEditTextView:Landroid/widget/AutoCompleteTextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mEditTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private faceTagSubmit(Ljava/lang/String;JZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "selected_face_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "selected_face_raw_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "need_to_update_photo"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->setResult(ILandroid/content/Intent;)V

    const-string/jumbo v0, "315"

    const-string/jumbo v1, "4771"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->finish()V

    return-void
.end method

.method private handleSetName(Ljava/lang/String;)V
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mAutoCompleteContactAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;

    invoke-virtual {v8, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;->runQueryForBixby(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_0

    move v4, v6

    :goto_0
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    if-eqz v4, :cond_1

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v8, 0x3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_1

    :cond_0
    move v4, v7

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mEditTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v8, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    if-gtz v1, :cond_2

    :goto_2
    invoke-direct {p0, p1, v2, v3, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->faceTagSubmit(Ljava/lang/String;JZ)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    if-eqz v4, :cond_3

    const v6, 0x7f0a0853

    :goto_3
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8, v6, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "SearchPeopleNameDone"

    sget-object v8, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v6, v7, v8, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void

    :cond_2
    move v6, v7

    goto :goto_2

    :cond_3
    const v6, 0x7f0a0854

    goto :goto_3
.end method

.method private initEditTextView()V
    .locals 8

    const/4 v3, 0x0

    new-instance v7, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;->CONTACT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;->CONTACT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {v7, p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mAutoCompleteContactAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mAutoCompleteContactAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$3;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;->registerAutoCompleteContactObserver(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$AutoCompleteContactObserver;)V

    const v0, 0x7f12012d

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mEditTextView:Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mEditTextView:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mAutoCompleteContactAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mEditTextView:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mEditTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mEditTextView:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mLengthFilter:Landroid/text/InputFilter$LengthFilter;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private initMyProfileListView()V
    .locals 5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mMyProfileListView:Landroid/view/View;

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040081

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mRootView:Landroid/widget/AbsListView;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mMyProfileListView:Landroid/view/View;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mMyProfileListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mMyProfileListView:Landroid/view/View;

    const v2, 0x7f12013d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mMyProfileListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mMyProfileListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;

    new-instance v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;)V

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;->registerMyProfileListObserver(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$MyProfileListObserver;)V

    :cond_0
    return-void
.end method

.method private initSuggestedNameListView()V
    .locals 5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSuggestedNameListView:Landroid/view/View;

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040081

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mRootView:Landroid/widget/AbsListView;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSuggestedNameListView:Landroid/view/View;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSuggestedNameListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSuggestedNameListView:Landroid/view/View;

    const v2, 0x7f12013d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSuggestedNameListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSuggestedNameListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;

    new-instance v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$5;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$5;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;)V

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->registerSuggestedNameListObserver(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$SuggestedNameListObserver;)V

    :cond_0
    return-void
.end method

.method private setBtnClickListener()V
    .locals 3

    const v1, 0x7f120078

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f120112

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSaveBtn:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSaveBtn:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$2;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mEditTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->updateSaveButton(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setShowButtonShapeOnBG()V
    .locals 4

    const v3, 0x7f020253

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEnableButtonBackgrounds(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f120078

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f12007a

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method private updateMyProfileListView()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mMyProfileListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mMyProfileSection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->existSection(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mMyProfileListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mMyProfileSection:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mMyProfileListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mMyProfileSection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->removeSection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateRegisteredNameListView()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mRegisteredNameListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mRegisteredNameSection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->existSection(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mRegisteredNameListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mRegisteredNameSection:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mRegisteredNameListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mRegisteredNameSection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->removeSection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateSaveButton(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSaveBtn:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSaveBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSaveBtn:Landroid/widget/LinearLayout;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0
.end method

.method private updateSuggestedNameListView()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSuggestedNameListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSuggestedNameSection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->existSection(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSuggestedNameListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSuggestedNameSection:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSuggestedNameListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSuggestedNameSection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->removeSection(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getDCScreenStateId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "PeopleName"

    return-object v0
.end method

.method getLayoutId()I
    .locals 1

    const v0, 0x7f040079

    return v0
.end method

.method getListId()I
    .locals 1

    const v0, 0x7f12012e

    return v0
.end method

.method public getNextExpectedState(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->updateRegisteredNameListView()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->checkRequiredPermissions()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mContextReference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->setShowButtonShapeOnBG()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/devicecog/gallery/DeviceCogVisualSearchFaceTagActivityListenerImpl;

    invoke-direct {v0, p0, p0}, Lcom/samsung/android/devicecog/gallery/DeviceCogVisualSearchFaceTagActivityListenerImpl;-><init>(Landroid/app/Activity;Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchFaceTagActivityDCHandler;

    invoke-direct {v0, p0, p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchFaceTagActivityDCHandler;-><init>(Landroid/app/Activity;Ljava/util/Observer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

    const-string/jumbo v0, "PeopleName"

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v0, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_0
.end method

.method public onDCCommandStarted(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;->startCommand(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onDCParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->closeSoftInputFromWindow()V

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->onDestroy()V

    return-void
.end method

.method public onListTouched()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->closeSoftInputFromWindow()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->onPause()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-interface {v0}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityPause()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    const v3, 0x7f0a0437

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->onResume()V

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->initFaceImageView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->initEditTextView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->setBtnClickListener()V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->FEATURE_GREAT_SEARCH_UI:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->initRegisteredNameListView()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->initMyProfileListView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->initSuggestedNameListView()V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->FEATURE_GREAT_SEARCH_UI:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mMyProfileSection:Ljava/lang/String;

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->FEATURE_GREAT_SEARCH_UI:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, ""

    :goto_1
    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSuggestedNameSection:Ljava/lang/String;

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->FEATURE_GREAT_SEARCH_UI:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a08a5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mRegisteredNameSection:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mRegisteredNameSection:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mRegisteredNameListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;

    invoke-virtual {v0, v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mRegisteredNameListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mFaceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;->loadData(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mMyProfileSection:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mMyProfileListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;

    invoke-virtual {v0, v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSuggestedNameSection:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSuggestedNameListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;

    invoke-virtual {v0, v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mMyProfileListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;->loadData()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSuggestedNameListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mMyProfileListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->loadData(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mRootView:Landroid/widget/AbsListView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mRootView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-interface {v0}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityResume()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a028b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4

    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v1

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_PEOPLE_NAME_DONE:I

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->handleSetName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method