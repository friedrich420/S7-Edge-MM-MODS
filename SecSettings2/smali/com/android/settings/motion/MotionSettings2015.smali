.class public Lcom/android/settings/motion/MotionSettings2015;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MotionSettings2015.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final mMotionFeatures:[Ljava/lang/String;


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mMergedMutePauseSwitch:Landroid/preference/SwitchPreference;

.field private mMultiWindowSettingSwitch:Landroid/preference/SwitchPreference;

.field private mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

.field private final mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

.field private final mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

.field private mPickUpSwitch:Landroid/preference/SwitchPreference;

.field private mPickUpToCallOutSwitch:Landroid/preference/SwitchPreference;

.field private mPointArea:Landroid/widget/LinearLayout;

.field private mResolver:Landroid/content/ContentResolver;

.field private mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

.field private mViewPagerAdapter:Lcom/android/settings/motion/MotionViewPagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pick_up_to_call_out_switch"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pick_up_switch"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "merged_mute_or_pause_switch"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "palm_swipe_switch"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "multi_window_setting_switch"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/motion/MotionSettings2015;->mMotionFeatures:[Ljava/lang/String;

    .line 341
    new-instance v0, Lcom/android/settings/motion/MotionSettings2015$5;

    invoke-direct {v0}, Lcom/android/settings/motion/MotionSettings2015$5;-><init>()V

    sput-object v0, Lcom/android/settings/motion/MotionSettings2015;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion/MotionSettings2015;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 72
    new-instance v0, Lcom/android/settings/motion/MotionSettings2015$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion/MotionSettings2015$1;-><init>(Lcom/android/settings/motion/MotionSettings2015;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    .line 80
    new-instance v0, Lcom/android/settings/motion/MotionSettings2015$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion/MotionSettings2015$2;-><init>(Lcom/android/settings/motion/MotionSettings2015;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion/MotionSettings2015;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion/MotionSettings2015;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion/MotionSettings2015;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion/MotionSettings2015;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion/MotionSettings2015;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion/MotionSettings2015;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion/MotionSettings2015;)Lcom/android/settings/WrapContentHeightViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion/MotionSettings2015;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion/MotionSettings2015;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion/MotionSettings2015;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/motion/MotionSettings2015;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion/MotionSettings2015;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/motion/MotionSettings2015;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion/MotionSettings2015;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private dismissAllDialog()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings2015;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings2015;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion/MotionSettings2015;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 430
    :cond_0
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 6

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/android/settings/motion/MotionSettings2015;->dismissAllDialog()V

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "enabledTalkbackName":Ljava/lang/String;
    const v2, 0x7f0e09fa

    invoke-virtual {p0, v2}, Lcom/android/settings/motion/MotionSettings2015;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f0e1247

    invoke-virtual {p0, v5}, Lcom/android/settings/motion/MotionSettings2015;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "popup_msg":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e1260

    new-instance v4, Lcom/android/settings/motion/MotionSettings2015$6;

    invoke-direct {v4, p0}, Lcom/android/settings/motion/MotionSettings2015$6;-><init>(Lcom/android/settings/motion/MotionSettings2015;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion/MotionSettings2015;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 388
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings2015;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/settings/motion/MotionSettings2015$7;

    invoke-direct {v3, p0}, Lcom/android/settings/motion/MotionSettings2015$7;-><init>(Lcom/android/settings/motion/MotionSettings2015;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 395
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings2015;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 396
    return-void
.end method

.method private maketurnOffUniversalPopup()V
    .locals 6

    .prologue
    const v5, 0x7f0e092d

    .line 399
    invoke-direct {p0}, Lcom/android/settings/motion/MotionSettings2015;->dismissAllDialog()V

    .line 400
    const v1, 0x7f0e09fa

    invoke-virtual {p0, v1}, Lcom/android/settings/motion/MotionSettings2015;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f0e1247

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings2015;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v5}, Lcom/android/settings/motion/MotionSettings2015;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0, v5}, Lcom/android/settings/motion/MotionSettings2015;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "popup_msg":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e1260

    new-instance v3, Lcom/android/settings/motion/MotionSettings2015$8;

    invoke-direct {v3, p0}, Lcom/android/settings/motion/MotionSettings2015$8;-><init>(Lcom/android/settings/motion/MotionSettings2015;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 415
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/motion/MotionSettings2015$9;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionSettings2015$9;-><init>(Lcom/android/settings/motion/MotionSettings2015;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 422
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 423
    return-void
.end method


# virtual methods
.method public changeColor(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200aa

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200ab

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 97
    const/16 v0, 0x2a

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 171
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 173
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0400f0

    invoke-virtual {v3, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 175
    .local v1, "guideView":Landroid/view/View;
    const v6, 0x7f0d00c3

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/settings/WrapContentHeightViewPager;

    iput-object v6, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    .line 176
    new-instance v6, Lcom/android/settings/motion/MotionViewPagerAdapter;

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/settings/motion/MotionViewPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPagerAdapter:Lcom/android/settings/motion/MotionViewPagerAdapter;

    .line 177
    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    iget-object v7, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPagerAdapter:Lcom/android/settings/motion/MotionViewPagerAdapter;

    invoke-virtual {v6, v7}, Lcom/android/settings/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 178
    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    iget-object v7, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPagerAdapter:Lcom/android/settings/motion/MotionViewPagerAdapter;

    invoke-virtual {v7}, Lcom/android/settings/motion/MotionViewPagerAdapter;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settings/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    .line 179
    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    new-instance v7, Lcom/android/settings/motion/MotionSettings2015$3;

    invoke-direct {v7, p0}, Lcom/android/settings/motion/MotionSettings2015$3;-><init>(Lcom/android/settings/motion/MotionSettings2015;)V

    invoke-virtual {v6, v7}, Lcom/android/settings/WrapContentHeightViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 192
    const v6, 0x7f0d02df

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/settings/motion/MotionSettings2015;->mPointArea:Landroid/widget/LinearLayout;

    .line 193
    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPagerAdapter:Lcom/android/settings/motion/MotionViewPagerAdapter;

    invoke-virtual {v6}, Lcom/android/settings/motion/MotionViewPagerAdapter;->getCount()I

    move-result v5

    .line 194
    .local v5, "pointCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 195
    move v0, v2

    .line 197
    .local v0, "current":I
    const v6, 0x7f04005b

    invoke-virtual {v3, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 199
    .local v4, "point":Landroid/widget/ImageView;
    const v6, 0x7f0e1261

    invoke-virtual {p0, v6}, Lcom/android/settings/motion/MotionSettings2015;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    add-int/lit8 v8, v2, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 200
    new-instance v6, Lcom/android/settings/motion/MotionSettings2015$4;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/motion/MotionSettings2015$4;-><init>(Lcom/android/settings/motion/MotionSettings2015;I)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings2015;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    .end local v0    # "current":I
    .end local v4    # "point":Landroid/widget/ImageView;
    :cond_0
    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings2015;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 211
    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings2015;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f0200ab

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    :cond_1
    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings2015;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ne v6, v9, :cond_2

    .line 215
    iget-object v6, p0, Lcom/android/settings/motion/MotionSettings2015;->mPointArea:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 222
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v1, v10, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 224
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v4, 0x1

    .line 135
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 137
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v1}, Lcom/android/settings/WrapContentHeightViewPager;->getCurrentItem()I

    move-result v0

    .line 139
    .local v0, "position":I
    const-string v1, "MotionSettings2015"

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

    .line 141
    if-ltz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPagerAdapter:Lcom/android/settings/motion/MotionViewPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/android/settings/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 143
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPagerAdapter:Lcom/android/settings/motion/MotionViewPagerAdapter;

    invoke-virtual {v2}, Lcom/android/settings/motion/MotionViewPagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    .line 144
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v1, v0}, Lcom/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    .line 148
    .end local v0    # "position":I
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    iget v1, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v1, v4, :cond_2

    .line 150
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 155
    :cond_1
    :goto_0
    return-void

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings2015;->setHasOptionsMenu(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    .line 107
    const v4, 0x7f080077

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings2015;->addPreferencesFromResource(I)V

    .line 109
    const-string v4, "pick_up_switch"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings2015;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mPickUpSwitch:Landroid/preference/SwitchPreference;

    .line 110
    const-string v4, "pick_up_to_call_out_switch"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings2015;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreference;

    .line 111
    const-string v4, "merged_mute_or_pause_switch"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings2015;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mMergedMutePauseSwitch:Landroid/preference/SwitchPreference;

    .line 112
    const-string v4, "palm_swipe_switch"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings2015;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    .line 113
    const-string v4, "multi_window_setting_switch"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings2015;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mMultiWindowSettingSwitch:Landroid/preference/SwitchPreference;

    .line 115
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mPickUpSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 116
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mPickUpSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 118
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 119
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mMergedMutePauseSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 120
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mMergedMutePauseSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 121
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 122
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 123
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mMultiWindowSettingSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 124
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mMultiWindowSettingSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 126
    sget-object v0, Lcom/android/settings/motion/MotionSettings2015;->mMotionFeatures:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 127
    .local v3, "motionFeature":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 128
    invoke-virtual {p0, v3}, Lcom/android/settings/motion/MotionSettings2015;->removePreference(Ljava/lang/String;)V

    .line 126
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v3    # "motionFeature":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 296
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 298
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 302
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 306
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "key":Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 309
    .local v2, "value":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPagerAdapter:Lcom/android/settings/motion/MotionViewPagerAdapter;

    invoke-virtual {v4, v0}, Lcom/android/settings/motion/MotionViewPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v1

    .line 310
    .local v1, "position":I
    if-ltz v1, :cond_0

    .line 311
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v4, v1}, Lcom/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    .line 314
    :cond_0
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mPickUpSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 315
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_pick_up"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 336
    :cond_1
    :goto_1
    return v3

    .line 307
    .end local v1    # "position":I
    .end local v2    # "value":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 316
    .restart local v1    # "position":I
    .restart local v2    # "value":I
    :cond_3
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 317
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_pick_up_to_call_out"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 318
    :cond_4
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mMergedMutePauseSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 319
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_merged_mute_pause"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 320
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-nez v4, :cond_5

    .line 321
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_overturn"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 323
    :cond_5
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "surface_palm_touch"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 324
    :cond_6
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 325
    if-ne v2, v3, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 327
    invoke-direct {p0}, Lcom/android/settings/motion/MotionSettings2015;->maketurnOffUniversalPopup()V

    goto :goto_1

    .line 328
    :cond_7
    if-ne v2, v3, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 329
    invoke-direct {p0}, Lcom/android/settings/motion/MotionSettings2015;->makeTalkBackDisablePopup()V

    goto :goto_1

    .line 331
    :cond_8
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "surface_palm_swipe"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 333
    :cond_9
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mMultiWindowSettingSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 334
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "db_popup_view_shortcut"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPagerAdapter:Lcom/android/settings/motion/MotionViewPagerAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settings/motion/MotionViewPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v1

    .line 162
    .local v1, "position":I
    if-ltz v1, :cond_0

    .line 163
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings2015;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v2, v1}, Lcom/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    .line 166
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 236
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 238
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 240
    .local v2, "isScreenCaptureEnabled":Ljava/lang/Boolean;
    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "false"

    aput-object v5, v4, v7

    .line 243
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v9, "isScreenCaptureEnabled"

    invoke-static {v5, v8, v9, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 246
    .local v1, "isScreenCapture":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    if-eq v1, v6, :cond_0

    .line 247
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 252
    :cond_0
    iget-object v8, p0, Lcom/android/settings/motion/MotionSettings2015;->mPickUpSwitch:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "motion_pick_up"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 254
    iget-object v8, p0, Lcom/android/settings/motion/MotionSettings2015;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "motion_pick_up_to_call_out"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 256
    iget-object v8, p0, Lcom/android/settings/motion/MotionSettings2015;->mMergedMutePauseSwitch:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "motion_merged_mute_pause"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 258
    iget-object v8, p0, Lcom/android/settings/motion/MotionSettings2015;->mMultiWindowSettingSwitch:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "db_popup_view_shortcut"

    invoke-static {v5, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_8

    move v5, v6

    :goto_3
    invoke-virtual {v8, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "access_control_enabled"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 263
    .local v3, "onInteractionConrol":I
    if-ne v3, v6, :cond_1

    .line 264
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 267
    :cond_1
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_2

    .line 268
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 269
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 270
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 271
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "surface_palm_swipe"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 280
    :cond_2
    :goto_4
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_3

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "surface_palm_swipe"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v6, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "access_control_enabled"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v6, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 285
    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v5, v8}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings2015;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 287
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v5, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v5, v6, :cond_4

    .line 288
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 291
    .end local v0    # "conf":Landroid/content/res/Configuration;
    :cond_4
    return-void

    .end local v3    # "onInteractionConrol":I
    :cond_5
    move v5, v7

    .line 252
    goto/16 :goto_0

    :cond_6
    move v5, v7

    .line 254
    goto/16 :goto_1

    :cond_7
    move v5, v7

    .line 256
    goto/16 :goto_2

    :cond_8
    move v5, v7

    .line 258
    goto :goto_3

    .line 273
    .restart local v3    # "onInteractionConrol":I
    :cond_9
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 274
    iget-object v8, p0, Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings2015;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "surface_palm_swipe"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_a

    move v5, v6

    :goto_5
    invoke-virtual {v8, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_4

    :cond_a
    move v5, v7

    goto :goto_5
.end method
