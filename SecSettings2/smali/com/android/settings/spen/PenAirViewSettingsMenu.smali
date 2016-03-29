.class public Lcom/android/settings/spen/PenAirViewSettingsMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PenAirViewSettingsMenu.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static mActivity:Landroid/app/Activity;


# instance fields
.field private guideView:Landroid/view/View;

.field private mAirViewDialog:Landroid/app/AlertDialog;

.field private mAirViewObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mPointArea:Landroid/widget/LinearLayout;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;

.field private mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

.field private mViewPagerAdapter:Lcom/android/settings/spen/PenAirViewPagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    .line 76
    iput-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 83
    iput-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 86
    iput-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->guideView:Landroid/view/View;

    .line 93
    new-instance v0, Lcom/android/settings/spen/PenAirViewSettingsMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/spen/PenAirViewSettingsMenu$1;-><init>(Lcom/android/settings/spen/PenAirViewSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mAirViewObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/spen/PenAirViewSettingsMenu;)Lcom/android/settings/widget/SwitchBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/spen/PenAirViewSettingsMenu;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/spen/PenAirViewSettingsMenu;)Lcom/android/settings/WrapContentHeightViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/spen/PenAirViewSettingsMenu;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/spen/PenAirViewSettingsMenu;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/spen/PenAirViewSettingsMenu;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/spen/PenAirViewSettingsMenu;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/spen/PenAirViewSettingsMenu;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private createAirViewSetting(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    .line 124
    if-eqz p2, :cond_0

    .line 125
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 126
    :cond_0
    const v4, 0x7f040024

    invoke-virtual {p1, v4, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->guideView:Landroid/view/View;

    .line 127
    iget-object v4, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->guideView:Landroid/view/View;

    const v5, 0x7f0d00c3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings/WrapContentHeightViewPager;

    iput-object v4, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    .line 128
    new-instance v4, Lcom/android/settings/spen/PenAirViewPagerAdapter;

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/spen/PenAirViewPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mViewPagerAdapter:Lcom/android/settings/spen/PenAirViewPagerAdapter;

    .line 129
    iget-object v4, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    iget-object v5, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mViewPagerAdapter:Lcom/android/settings/spen/PenAirViewPagerAdapter;

    invoke-virtual {v4, v5}, Lcom/android/settings/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 130
    iget-object v4, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    iget-object v5, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mViewPagerAdapter:Lcom/android/settings/spen/PenAirViewPagerAdapter;

    invoke-virtual {v5}, Lcom/android/settings/spen/PenAirViewPagerAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    .line 131
    iget-object v4, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;

    new-instance v5, Lcom/android/settings/spen/PenAirViewSettingsMenu$2;

    invoke-direct {v5, p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu$2;-><init>(Lcom/android/settings/spen/PenAirViewSettingsMenu;)V

    invoke-virtual {v4, v5}, Lcom/android/settings/WrapContentHeightViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 144
    iget-object v4, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->guideView:Landroid/view/View;

    const v5, 0x7f0d02df

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mPointArea:Landroid/widget/LinearLayout;

    .line 145
    iget-object v4, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mViewPagerAdapter:Lcom/android/settings/spen/PenAirViewPagerAdapter;

    invoke-virtual {v4}, Lcom/android/settings/spen/PenAirViewPagerAdapter;->getCount()I

    move-result v3

    .line 146
    .local v3, "pointCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 147
    move v0, v1

    .line 149
    .local v0, "current":I
    const v4, 0x7f04005b

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 150
    .local v2, "point":Landroid/widget/ImageView;
    const v4, 0x7f0e1261

    invoke-virtual {p0, v4}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 151
    new-instance v4, Lcom/android/settings/spen/PenAirViewSettingsMenu$3;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/spen/PenAirViewSettingsMenu$3;-><init>(Lcom/android/settings/spen/PenAirViewSettingsMenu;I)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v4, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v0    # "current":I
    .end local v2    # "point":Landroid/widget/ImageView;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 162
    iget-object v4, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0200ab

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    :cond_2
    iget-object v4, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->guideView:Landroid/view/View;

    return-object v4
.end method

.method private dismissAllDialog()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 324
    :cond_0
    return-void
.end method

.method private showTalkBackDisableDialog()V
    .locals 4

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->dismissAllDialog()V

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e1263

    invoke-virtual {p0, v2}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.samsung.android.app.talkback"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0e0a0c

    invoke-virtual {p0, v2}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.google.android.marvin.talkback"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0e0a0b

    invoke-virtual {p0, v2}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0e090e

    invoke-virtual {p0, v2}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    sget-object v1, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    const-string v2, "com.sec.feature.overlaymagnifier"

    invoke-static {v1, v2}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0e0913

    invoke-virtual {p0, v2}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e1260

    new-instance v3, Lcom/android/settings/spen/PenAirViewSettingsMenu$5;

    invoke-direct {v3, p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu$5;-><init>(Lcom/android/settings/spen/PenAirViewSettingsMenu;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/spen/PenAirViewSettingsMenu$4;

    invoke-direct {v3, p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu$4;-><init>(Lcom/android/settings/spen/PenAirViewSettingsMenu;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 309
    iget-object v1, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 310
    iget-object v1, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/spen/PenAirViewSettingsMenu$6;

    invoke-direct {v2, p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu$6;-><init>(Lcom/android/settings/spen/PenAirViewSettingsMenu;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 318
    return-void
.end method


# virtual methods
.method public changeColor(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200aa

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200ab

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 90
    const/16 v0, 0x57

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 115
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 116
    iget-object v1, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 117
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 182
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->createAirViewSetting(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 183
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    const-string v0, "PenAirViewSettings"

    const-string v1, "onCreate() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    .line 108
    sget-object v0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mContext:Landroid/content/Context;

    .line 109
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->createAirViewSetting(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 216
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 217
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 221
    const-string v0, "PenAirViewSettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 223
    iget-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 226
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 187
    const-string v4, "PenAirViewSettings"

    const-string v5, "onResume() "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 190
    sget-object v4, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_1

    move v0, v2

    .line 192
    .local v0, "airViewState":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 193
    iget-object v4, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 195
    sget-object v4, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    const-string v5, "content://com.sec.knox.provider2/KioskMode"

    const-string v6, "isAirViewModeAllowed"

    invoke-static {v4, v5, v6}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 198
    .local v1, "sAirViewModeAllowed":I
    if-nez v1, :cond_0

    .line 199
    iget-object v4, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 205
    return-void

    .end local v0    # "airViewState":Z
    .end local v1    # "sAirViewModeAllowed":I
    :cond_1
    move v0, v3

    .line 190
    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 209
    const-string v0, "PenAirViewSettings"

    const-string v1, "onStrop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 211
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 6
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 231
    iget-object v4, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v4

    if-eq p1, v4, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    if-eqz p2, :cond_7

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "hoverZoom":Z
    const/4 v1, 0x0

    .line 237
    .local v1, "magnifier":Z
    sget-object v4, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    const-string v5, "com.sec.feature.overlaymagnifier"

    invoke-static {v4, v5}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_magnifier"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4

    move v0, v2

    .line 240
    :cond_2
    :goto_1
    sget-object v4, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_magnifier"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_5

    move v1, v2

    .line 241
    :goto_2
    sget-object v4, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_display_magnification_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_3

    if-nez v0, :cond_3

    if-eqz v1, :cond_6

    .line 245
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->showTalkBackDisableDialog()V

    goto :goto_0

    :cond_4
    move v0, v3

    .line 238
    goto :goto_1

    :cond_5
    move v1, v3

    .line 240
    goto :goto_2

    .line 247
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_information_preview"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_icon_label"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_list_scroll"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_link_preview"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    iget-object v3, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportPenUsp10(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_air_menu"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 259
    .end local v0    # "hoverZoom":Z
    .end local v1    # "magnifier":Z
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "pen_hovering"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "pen_hovering_information_preview"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "pen_hovering_icon_label"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "pen_hovering_list_scroll"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "pen_hovering_link_preview"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 265
    iget-object v2, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportPenUsp10(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "pen_hovering_air_menu"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method
