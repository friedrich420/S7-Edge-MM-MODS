.class public Lcom/android/settings/NewOneHandOperationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NewOneHandOperationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private accessControlEnabled:Z

.field private assistantMenuEnabled:Z

.field private directAccessEnabled:Z

.field private hoverzoomEnabled:Z

.field private mOneHandedInput:Landroid/preference/SwitchPreference;

.field private mPointArea:Landroid/widget/LinearLayout;

.field private mReduceScreenSize:Landroid/preference/SwitchPreference;

.field private mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

.field private mViewPagerAdapter:Lcom/android/settings/OneHandViewPagerAdapter;

.field private magnificationGesturesEnabled:Z

.field private magnifierWindowEnabled:Z

.field private sTalkbackEnabled:Z

.field private talkbackEnabled:Z

.field private universalSwitchEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 439
    new-instance v0, Lcom/android/settings/NewOneHandOperationSettings$9;

    invoke-direct {v0}, Lcom/android/settings/NewOneHandOperationSettings$9;-><init>()V

    sput-object v0, Lcom/android/settings/NewOneHandOperationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 75
    iput-boolean v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->sTalkbackEnabled:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->talkbackEnabled:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->hoverzoomEnabled:Z

    .line 78
    iput-boolean v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->magnificationGesturesEnabled:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->magnifierWindowEnabled:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->universalSwitchEnabled:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->accessControlEnabled:Z

    .line 82
    iput-boolean v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->assistantMenuEnabled:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->directAccessEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/NewOneHandOperationSettings;)Lcom/android/settings/WrapContentHeightViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NewOneHandOperationSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/NewOneHandOperationSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NewOneHandOperationSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->mReduceScreenSize:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/NewOneHandOperationSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NewOneHandOperationSettings;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/NewOneHandOperationSettings;->reduceSizeBroadcast(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/NewOneHandOperationSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NewOneHandOperationSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->mOneHandedInput:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/NewOneHandOperationSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NewOneHandOperationSettings;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/NewOneHandOperationSettings;->oneHandedInputBroadcast(I)V

    return-void
.end method

.method private oneHandedInputBroadcast(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 414
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.ONEHAND_INPUT_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "is_enabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 417
    return-void
.end method

.method private oneHandedInputDisablePopup()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 375
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e1195

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e0f8a

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, "title":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0e096f

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "message":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0e090e

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/NewOneHandOperationSettings$8;

    invoke-direct {v5, p0}, Lcom/android/settings/NewOneHandOperationSettings$8;-><init>(Lcom/android/settings/NewOneHandOperationSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/settings/NewOneHandOperationSettings$7;

    invoke-direct {v5, p0}, Lcom/android/settings/NewOneHandOperationSettings$7;-><init>(Lcom/android/settings/NewOneHandOperationSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/NewOneHandOperationSettings$6;

    invoke-direct {v4, p0}, Lcom/android/settings/NewOneHandOperationSettings$6;-><init>(Lcom/android/settings/NewOneHandOperationSettings;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 405
    return-void
.end method

.method private reduceSizeBroadcast(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 408
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.ONEHAND_REDUCE_SCREEN_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "is_enabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 411
    return-void
.end method

.method private reduceSizeDisablePopup()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e0a47

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e0f8a

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "title":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0e096f

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.samsung.android.app.talkback"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0e0a0c

    invoke-virtual {p0, v4}, Lcom/android/settings/NewOneHandOperationSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.google.android.marvin.talkback"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0e0a0b

    invoke-virtual {p0, v4}, Lcom/android/settings/NewOneHandOperationSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0e090e

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.sec.feature.overlaymagnifier"

    invoke-static {v3, v4}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 327
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0e0913

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.samsung.android.universalswitch"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0e0a0d

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.samsung.android.app.accesscontrol"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 333
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0e095e

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.samsung.android.app.assistantmenu"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 336
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0e0a34

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 338
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0e0a07

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 340
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/NewOneHandOperationSettings$5;

    invoke-direct {v5, p0}, Lcom/android/settings/NewOneHandOperationSettings$5;-><init>(Lcom/android/settings/NewOneHandOperationSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/settings/NewOneHandOperationSettings$4;

    invoke-direct {v5, p0}, Lcom/android/settings/NewOneHandOperationSettings$4;-><init>(Lcom/android/settings/NewOneHandOperationSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/NewOneHandOperationSettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings/NewOneHandOperationSettings$3;-><init>(Lcom/android/settings/NewOneHandOperationSettings;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 372
    return-void
.end method


# virtual methods
.method public changeColor(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200aa

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200ab

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 91
    const/16 v0, 0x57

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 153
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 156
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f0400f0

    invoke-virtual {v4, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 158
    .local v2, "guideView":Landroid/view/View;
    const v7, 0x7f0d00c3

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/settings/WrapContentHeightViewPager;

    iput-object v7, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    .line 159
    new-instance v7, Lcom/android/settings/OneHandViewPagerAdapter;

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/settings/OneHandViewPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/android/settings/OneHandViewPagerAdapter;

    .line 160
    iget-object v7, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    iget-object v8, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/android/settings/OneHandViewPagerAdapter;

    invoke-virtual {v7, v8}, Lcom/android/settings/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 161
    iget-object v7, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    iget-object v8, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/android/settings/OneHandViewPagerAdapter;

    invoke-virtual {v8}, Lcom/android/settings/OneHandViewPagerAdapter;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/settings/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    .line 162
    iget-object v7, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    new-instance v8, Lcom/android/settings/NewOneHandOperationSettings$1;

    invoke-direct {v8, p0}, Lcom/android/settings/NewOneHandOperationSettings$1;-><init>(Lcom/android/settings/NewOneHandOperationSettings;)V

    invoke-virtual {v7, v8}, Lcom/android/settings/WrapContentHeightViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 176
    const v7, 0x7f0d02df

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/settings/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    .line 177
    iget-object v7, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/android/settings/OneHandViewPagerAdapter;

    invoke-virtual {v7}, Lcom/android/settings/OneHandViewPagerAdapter;->getCount()I

    move-result v6

    .line 178
    .local v6, "pointCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_0

    .line 179
    move v0, v3

    .line 181
    .local v0, "current":I
    const v7, 0x7f04005b

    invoke-virtual {v4, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 182
    .local v5, "point":Landroid/widget/ImageView;
    const v7, 0x7f0e1261

    invoke-virtual {p0, v7}, Lcom/android/settings/NewOneHandOperationSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    add-int/lit8 v9, v3, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 183
    new-instance v7, Lcom/android/settings/NewOneHandOperationSettings$2;

    invoke-direct {v7, p0, v0}, Lcom/android/settings/NewOneHandOperationSettings$2;-><init>(Lcom/android/settings/NewOneHandOperationSettings;I)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v7, p0, Lcom/android/settings/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "current":I
    .end local v5    # "point":Landroid/widget/ImageView;
    :cond_0
    iget-object v7, p0, Lcom/android/settings/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-lez v7, :cond_1

    .line 193
    iget-object v7, p0, Lcom/android/settings/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f0200ab

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    :cond_1
    iget-object v7, p0, Lcom/android/settings/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ne v7, v10, :cond_2

    .line 197
    iget-object v7, p0, Lcom/android/settings/NewOneHandOperationSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 199
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 200
    const v7, 0x7f0d00b0

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 201
    .local v1, "divider":Landroid/view/View;
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 205
    .end local v1    # "divider":Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v2, v11, v10}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 207
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 128
    iget-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v1}, Lcom/android/settings/WrapContentHeightViewPager;->getCurrentItem()I

    move-result v0

    .line 130
    .local v0, "position":I
    const-string v1, "OneHandOperationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged() : position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    if-ltz v0, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    iget-object v2, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/android/settings/OneHandViewPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/android/settings/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 134
    iget-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    iget-object v2, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/android/settings/OneHandViewPagerAdapter;

    invoke-virtual {v2}, Lcom/android/settings/OneHandViewPagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    .line 135
    iget-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v1, v0}, Lcom/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    .line 138
    .end local v0    # "position":I
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v1, 0x7f08007a

    invoke-virtual {p0, v1}, Lcom/android/settings/NewOneHandOperationSettings;->addPreferencesFromResource(I)V

    .line 100
    const-string v1, "reduce_screen_size"

    invoke-virtual {p0, v1}, Lcom/android/settings/NewOneHandOperationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mReduceScreenSize:Landroid/preference/SwitchPreference;

    .line 101
    const-string v1, "one_handed_input"

    invoke-virtual {p0, v1}, Lcom/android/settings/NewOneHandOperationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mOneHandedInput:Landroid/preference/SwitchPreference;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e1196

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "summary":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e1197

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e1198

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e1199

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mReduceScreenSize:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 110
    iget-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mReduceScreenSize:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 111
    iget-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mOneHandedInput:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 112
    iget-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mOneHandedInput:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 113
    iget-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings;->mOneHandedInput:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 121
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/NewOneHandOperationSettings;->setHasOptionsMenu(Z)V

    .line 122
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    .line 421
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    const/4 v1, 0x1

    const v2, 0x7f0e0f6f

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 423
    .local v0, "helpitem":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 425
    .end local v0    # "helpitem":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 426
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 430
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 431
    .local v1, "itemId":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 432
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "helphub:section"

    const-string v3, "one_handed_operation"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    invoke-virtual {p0, v0}, Lcom/android/settings/NewOneHandOperationSettings;->startActivity(Landroid/content/Intent;)V

    .line 436
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const v11, 0x7f0e0fc1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 228
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "key":Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 231
    .local v3, "value":Z
    iget-object v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/android/settings/OneHandViewPagerAdapter;

    invoke-virtual {v4, v1}, Lcom/android/settings/OneHandViewPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v2

    .line 232
    .local v2, "position":I
    if-ltz v2, :cond_0

    .line 233
    iget-object v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v4, v2}, Lcom/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    .line 236
    :cond_0
    iget-object v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->mReduceScreenSize:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 237
    if-eqz v3, :cond_e

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->sTalkbackEnabled:Z

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isGEDTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->talkbackEnabled:Z

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v7, "com.sec.feature.overlaymagnifier"

    invoke-static {v4, v7}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "accessibility_magnifier"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_2

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->hoverzoomEnabled:Z

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "accessibility_display_magnification_enabled"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_3

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->magnificationGesturesEnabled:Z

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "finger_magnifier"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_4

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->magnifierWindowEnabled:Z

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->universalSwitchEnabled:Z

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "access_control_use"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_6

    move v4, v5

    :goto_4
    iput-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->accessControlEnabled:Z

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "assistant_menu"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_7

    move v4, v5

    :goto_5
    iput-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->assistantMenuEnabled:Z

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "direct_access"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_8

    move v4, v5

    :goto_6
    iput-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->directAccessEnabled:Z

    .line 253
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v7, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v4, v7}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 255
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v4, v5, :cond_a

    .line 256
    iget-object v7, p0, Lcom/android/settings/NewOneHandOperationSettings;->mReduceScreenSize:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "any_screen_enabled"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_9

    move v4, v5

    :goto_7
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0a47

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v7, v11, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 308
    .end local v0    # "conf":Landroid/content/res/Configuration;
    :goto_8
    return v6

    :cond_2
    move v4, v6

    .line 242
    goto/16 :goto_0

    :cond_3
    move v4, v6

    .line 244
    goto/16 :goto_1

    :cond_4
    move v4, v6

    .line 246
    goto/16 :goto_2

    :cond_5
    move v4, v6

    .line 248
    goto/16 :goto_3

    :cond_6
    move v4, v6

    .line 249
    goto :goto_4

    :cond_7
    move v4, v6

    .line 250
    goto :goto_5

    :cond_8
    move v4, v6

    .line 251
    goto :goto_6

    .restart local v0    # "conf":Landroid/content/res/Configuration;
    :cond_9
    move v4, v6

    .line 256
    goto :goto_7

    .line 262
    .end local v0    # "conf":Landroid/content/res/Configuration;
    :cond_a
    iget-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->sTalkbackEnabled:Z

    if-nez v4, :cond_b

    iget-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->talkbackEnabled:Z

    if-nez v4, :cond_b

    iget-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->hoverzoomEnabled:Z

    if-nez v4, :cond_b

    iget-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->magnificationGesturesEnabled:Z

    if-nez v4, :cond_b

    iget-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->magnifierWindowEnabled:Z

    if-nez v4, :cond_b

    iget-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->universalSwitchEnabled:Z

    if-nez v4, :cond_b

    iget-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->accessControlEnabled:Z

    if-nez v4, :cond_b

    iget-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->assistantMenuEnabled:Z

    if-nez v4, :cond_b

    iget-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->directAccessEnabled:Z

    if-eqz v4, :cond_d

    .line 264
    :cond_b
    invoke-direct {p0}, Lcom/android/settings/NewOneHandOperationSettings;->reduceSizeDisablePopup()V

    :cond_c
    :goto_9
    move v6, v5

    .line 308
    goto :goto_8

    .line 266
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "any_screen_enabled"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 267
    invoke-direct {p0, v5}, Lcom/android/settings/NewOneHandOperationSettings;->reduceSizeBroadcast(I)V

    goto :goto_9

    .line 270
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "any_screen_enabled"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 271
    invoke-direct {p0, v6}, Lcom/android/settings/NewOneHandOperationSettings;->reduceSizeBroadcast(I)V

    goto :goto_9

    .line 282
    :cond_f
    iget-object v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->mOneHandedInput:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 283
    if-eqz v3, :cond_15

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "accessibility_display_magnification_enabled"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_10

    move v4, v5

    :goto_a
    iput-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->magnificationGesturesEnabled:Z

    .line 287
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v7, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v4, v7}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 289
    .restart local v0    # "conf":Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v4, v5, :cond_12

    .line 290
    iget-object v7, p0, Lcom/android/settings/NewOneHandOperationSettings;->mOneHandedInput:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "interactionarea_switch"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_11

    move v4, v5

    :goto_b
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e1195

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v7, v11, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .end local v0    # "conf":Landroid/content/res/Configuration;
    :cond_10
    move v4, v6

    .line 284
    goto :goto_a

    .restart local v0    # "conf":Landroid/content/res/Configuration;
    :cond_11
    move v4, v6

    .line 290
    goto :goto_b

    .line 296
    .end local v0    # "conf":Landroid/content/res/Configuration;
    :cond_12
    iget-boolean v4, p0, Lcom/android/settings/NewOneHandOperationSettings;->magnificationGesturesEnabled:Z

    if-eqz v4, :cond_14

    .line 297
    invoke-direct {p0}, Lcom/android/settings/NewOneHandOperationSettings;->oneHandedInputDisablePopup()V

    .line 306
    :goto_c
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v7, "com.samsung.android.providers.context"

    const-string v8, "ST4B"

    if-eqz v3, :cond_13

    const/16 v6, 0x3e8

    :cond_13
    invoke-static {v4, v7, v8, v6}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 299
    :cond_14
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "interactionarea_switch"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 300
    invoke-direct {p0, v5}, Lcom/android/settings/NewOneHandOperationSettings;->oneHandedInputBroadcast(I)V

    goto :goto_c

    .line 303
    :cond_15
    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "interactionarea_switch"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 304
    invoke-direct {p0, v6}, Lcom/android/settings/NewOneHandOperationSettings;->oneHandedInputBroadcast(I)V

    goto :goto_c
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPagerAdapter:Lcom/android/settings/OneHandViewPagerAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settings/OneHandViewPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v1

    .line 145
    .local v1, "position":I
    if-ltz v1, :cond_0

    .line 146
    iget-object v2, p0, Lcom/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v2, v1}, Lcom/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    .line 148
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 218
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 220
    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->mReduceScreenSize:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 221
    iget-object v3, p0, Lcom/android/settings/NewOneHandOperationSettings;->mReduceScreenSize:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "any_screen_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->mOneHandedInput:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings;->mOneHandedInput:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "interactionarea_switch"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 224
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 221
    goto :goto_0

    :cond_3
    move v1, v2

    .line 223
    goto :goto_1
.end method
