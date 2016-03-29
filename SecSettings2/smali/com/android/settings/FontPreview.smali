.class public Lcom/android/settings/FontPreview;
.super Landroid/app/Activity;
.source "FontPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/FontPreview$LoadListTask;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field private static DUAL_COLOR_FOR_ELEVENLEVEL_FONT_VALUE:I

.field public static REBOOT:Z

.field private static final apkNameList:[Ljava/lang/String;

.field public static mSelectedFontSizeSeekBarProgress:I

.field private static persistString:Ljava/lang/String;


# instance fields
.field private charSeqRevisedValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private floatRevisedValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private fontSizeStrings:[Ljava/lang/String;

.field private isCheckPlatformSignatures:Z

.field private isCheckReleaseSignatures:Z

.field private isClickSwitch:Z

.field private isEnabledShowBtnBg:Z

.field private mAccessFontOnOff:I

.field private mActionBar:Landroid/app/ActionBar;

.field private mChangingSizeText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDefaultUseHelvetica:Z

.field private mExtraHugeString:Ljava/lang/String;

.field private mExtraLargeFontIndex:I

.field private mFontFloatSize:F

.field private mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

.field private mFontPreviewSizeStyleLayout:Landroid/widget/LinearLayout;

.field private mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

.field private mFontStyleListView:Landroid/widget/ListView;

.field private mFontSwitch:Landroid/widget/Switch;

.field private mHugeString:Ljava/lang/String;

.field private mIsAccessibilitySettingsVision:Z

.field private mIsChangedFontSizeSeekBar:Z

.field private mIsFont11Level:Z

.field private mIsFontLargerOn:Z

.field private mIsRunLoadListTask:Z

.field mIsSelectedCurrentThemeFont:Z

.field private mLoadListTask:Lcom/android/settings/FontPreview$LoadListTask;

.field private mMaxTextView:Landroid/widget/TextSwitcher;

.field private mMinTextView:Landroid/widget/TextView;

.field private mPackageName:Ljava/lang/String;

.field private mPreviousFont:I

.field private mProgressBarLayout:Landroid/widget/RelativeLayout;

.field private mSaveButton:Landroid/widget/Button;

.field private mSavedClickedItem:I

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSelectedFontSize:I

.field private mSelectedFontStyleItemIndex:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mShowForHugeFontTextView:Landroid/widget/TextView;

.field private mcancelButton:Landroid/widget/Button;

.field private themeFontTypeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x0

    .line 94
    sput-boolean v3, Lcom/android/settings/FontPreview;->DEBUG:Z

    .line 112
    sput v4, Lcom/android/settings/FontPreview;->DUAL_COLOR_FOR_ELEVENLEVEL_FONT_VALUE:I

    .line 157
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "com.monotype.android.font.chococooky"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.monotype.android.font.cooljazz"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.monotype.android.font.helvneuelt"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.monotype.android.font.samsungsans"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.monotype.android.font.rosemary"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.monotype.android.font.applemint"

    aput-object v2, v0, v1

    const-string v1, "com.monotype.android.font.tinkerbell"

    aput-object v1, v0, v4

    const/16 v1, 0x8

    const-string v2, "com.monotype.android.font.udrgothic"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.monotype.android.font.udmincho"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.monotype.android.font.arjpopb"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.monotype.android.font.kaiti"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.monotype.android.font.shaonv"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.monotype.android.font.miao"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/FontPreview;->apkNameList:[Ljava/lang/String;

    .line 1031
    sput-boolean v3, Lcom/android/settings/FontPreview;->REBOOT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 97
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/FontPreview;->mExtraLargeFontIndex:I

    .line 98
    iput v2, p0, Lcom/android/settings/FontPreview;->mPreviousFont:I

    .line 101
    iput v2, p0, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    .line 102
    iput v2, p0, Lcom/android/settings/FontPreview;->mSavedClickedItem:I

    .line 104
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/FontPreview;->mCurConfig:Landroid/content/res/Configuration;

    .line 175
    iput-boolean v1, p0, Lcom/android/settings/FontPreview;->mDefaultUseHelvetica:Z

    .line 176
    iput-boolean v1, p0, Lcom/android/settings/FontPreview;->mIsAccessibilitySettingsVision:Z

    .line 177
    iput-boolean v1, p0, Lcom/android/settings/FontPreview;->mIsChangedFontSizeSeekBar:Z

    .line 179
    iput-boolean v1, p0, Lcom/android/settings/FontPreview;->mIsFontLargerOn:Z

    .line 180
    iput-boolean v1, p0, Lcom/android/settings/FontPreview;->isCheckPlatformSignatures:Z

    .line 181
    iput-boolean v1, p0, Lcom/android/settings/FontPreview;->isCheckReleaseSignatures:Z

    .line 182
    iput-boolean v1, p0, Lcom/android/settings/FontPreview;->isClickSwitch:Z

    .line 183
    iput-boolean v1, p0, Lcom/android/settings/FontPreview;->isEnabledShowBtnBg:Z

    .line 185
    iput-boolean v1, p0, Lcom/android/settings/FontPreview;->mIsSelectedCurrentThemeFont:Z

    .line 1401
    iput-boolean v1, p0, Lcom/android/settings/FontPreview;->mIsRunLoadListTask:Z

    .line 1402
    iput-object v3, p0, Lcom/android/settings/FontPreview;->mLoadListTask:Lcom/android/settings/FontPreview$LoadListTask;

    .line 1403
    iput-object v3, p0, Lcom/android/settings/FontPreview;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    .line 1404
    iput-object v3, p0, Lcom/android/settings/FontPreview;->mFontPreviewSizeStyleLayout:Landroid/widget/LinearLayout;

    .line 1406
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FontPreview;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/FontPreview;
    .param p1, "x1"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/settings/FontPreview;->changeFontSizeFromSeekBar(I)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/settings/FontPreview;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/FontPreview;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/settings/FontPreview;->mIsRunLoadListTask:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/FontPreview;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/FontPreview;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/settings/FontPreview;->mIsChangedFontSizeSeekBar:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/FontPreview;)Lcom/android/settings/flipfont/FontListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FontPreview;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings/FontPreview;Lcom/android/settings/flipfont/FontListAdapter;)Lcom/android/settings/flipfont/FontListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/FontPreview;
    .param p1, "x1"    # Lcom/android/settings/flipfont/FontListAdapter;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/settings/FontPreview;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FontPreview;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings/FontPreview;->getFontNameFromSystem()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/FontPreview;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FontPreview;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/FontPreview;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/FontPreview;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/settings/FontPreview;->setFontStyleList(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/FontPreview;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FontPreview;

    .prologue
    .line 83
    iget v0, p0, Lcom/android/settings/FontPreview;->mExtraLargeFontIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/FontPreview;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FontPreview;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/FontPreview;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FontPreview;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/FontPreview;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FontPreview;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/FontPreview;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/FontPreview;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings/FontPreview;->doneFontPreview()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/FontPreview;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FontPreview;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/FontPreview;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FontPreview;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontPreviewSizeStyleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private changeFontSizeFromSeekBar(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    const/4 v3, 0x1

    .line 574
    const/high16 v0, 0x3f800000    # 1.0f

    .line 575
    .local v0, "fontsize":F
    iget-object v1, p0, Lcom/android/settings/FontPreview;->floatRevisedValueList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/FontPreview;->floatRevisedValueList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 576
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 580
    :goto_0
    iget-object v1, p0, Lcom/android/settings/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 581
    sput p1, Lcom/android/settings/FontPreview;->mSelectedFontSizeSeekBarProgress:I

    .line 582
    iput v0, p0, Lcom/android/settings/FontPreview;->mFontFloatSize:F

    .line 583
    return-void

    .line 578
    :cond_1
    iget-object v1, p0, Lcom/android/settings/FontPreview;->floatRevisedValueList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1520
    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    .line 1521
    .local v0, "EMPTY":[[I
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/android/settings/FontPreview;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/FontPreview;->mActionBar:Landroid/app/ActionBar;

    .line 534
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 535
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f040081

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 536
    return-void
.end method

.method private copyFileWithCR(Lcom/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "fontWriter"    # Lcom/android/settings/flipfont/FontWriter;
    .param p2, "dir"    # Ljava/io/File;
    .param p3, "sPackageName"    # Ljava/lang/String;
    .param p4, "sFileIn"    # Ljava/lang/String;
    .param p5, "sFileOut"    # Ljava/lang/String;

    .prologue
    .line 1266
    const/4 v0, 0x0

    .line 1267
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 1270
    .local v2, "err_filecopy":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1276
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/fonts/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1277
    .local v4, "uriFont":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 1280
    .local v3, "isFont":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 1287
    invoke-virtual {p1, p2, v3, p5}, Lcom/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v2

    .line 1290
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    move v5, v2

    .line 1294
    .end local v3    # "isFont":Ljava/io/InputStream;
    .end local v4    # "uriFont":Landroid/net/Uri;
    :goto_1
    return v5

    .line 1271
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move v5, v2

    .line 1272
    goto :goto_1

    .line 1281
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "isFont":Ljava/io/InputStream;
    .restart local v4    # "uriFont":Landroid/net/Uri;
    :catch_1
    move-exception v1

    .line 1283
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_1

    .line 1291
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    goto :goto_0
.end method

.method private doneFontPreview()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 870
    iget-boolean v0, p0, Lcom/android/settings/FontPreview;->mIsAccessibilitySettingsVision:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/FontPreview;->mIsFont11Level:Z

    if-eqz v0, :cond_0

    .line 871
    invoke-virtual {p0}, Lcom/android/settings/FontPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessiblity_font_switch"

    iget-boolean v0, p0, Lcom/android/settings/FontPreview;->mIsFontLargerOn:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 876
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/FontPreview;->mIsChangedFontSizeSeekBar:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    iget v2, p0, Lcom/android/settings/FontPreview;->mPreviousFont:I

    if-eq v0, v2, :cond_5

    :cond_1
    sget v0, Lcom/android/settings/FontPreview;->mSelectedFontSizeSeekBarProgress:I

    iget v2, p0, Lcom/android/settings/FontPreview;->mSelectedFontSize:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    iget v2, p0, Lcom/android/settings/FontPreview;->mPreviousFont:I

    if-eq v0, v2, :cond_5

    :cond_2
    sget v0, Lcom/android/settings/FontPreview;->mSelectedFontSizeSeekBarProgress:I

    if-gez v0, :cond_3

    iget v0, p0, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    if-ltz v0, :cond_5

    :cond_3
    sget v0, Lcom/android/settings/FontPreview;->mSelectedFontSizeSeekBarProgress:I

    iget v2, p0, Lcom/android/settings/FontPreview;->mSelectedFontSize:I

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    if-ltz v0, :cond_5

    :cond_4
    sget v0, Lcom/android/settings/FontPreview;->mSelectedFontSizeSeekBarProgress:I

    if-gez v0, :cond_7

    iget v0, p0, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    iget v2, p0, Lcom/android/settings/FontPreview;->mPreviousFont:I

    if-ne v0, v2, :cond_7

    .line 881
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/FontPreview;->finish()V

    .line 899
    :goto_1
    return-void

    .line 871
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 885
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/FontPreview;->mIsChangedFontSizeSeekBar:Z

    if-ne v0, v1, :cond_9

    sget v0, Lcom/android/settings/FontPreview;->mSelectedFontSizeSeekBarProgress:I

    if-ltz v0, :cond_9

    sget v0, Lcom/android/settings/FontPreview;->mSelectedFontSizeSeekBarProgress:I

    iget v2, p0, Lcom/android/settings/FontPreview;->mSelectedFontSize:I

    if-eq v0, v2, :cond_9

    iget v0, p0, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    iget v2, p0, Lcom/android/settings/FontPreview;->mPreviousFont:I

    if-eq v0, v2, :cond_8

    iget v0, p0, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    if-gez v0, :cond_9

    .line 889
    :cond_8
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/FontPreview;->doneFontStyleOrFontSize(I)V

    goto :goto_1

    .line 890
    :cond_9
    iget v0, p0, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    if-ltz v0, :cond_b

    iget v0, p0, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    iget v2, p0, Lcom/android/settings/FontPreview;->mPreviousFont:I

    if-eq v0, v2, :cond_b

    iget-boolean v0, p0, Lcom/android/settings/FontPreview;->mIsChangedFontSizeSeekBar:Z

    if-eqz v0, :cond_a

    sget v0, Lcom/android/settings/FontPreview;->mSelectedFontSizeSeekBarProgress:I

    if-ltz v0, :cond_a

    sget v0, Lcom/android/settings/FontPreview;->mSelectedFontSizeSeekBarProgress:I

    iget v2, p0, Lcom/android/settings/FontPreview;->mSelectedFontSize:I

    if-ne v0, v2, :cond_b

    .line 892
    :cond_a
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/settings/FontPreview;->doneFontStyleOrFontSize(I)V

    goto :goto_1

    .line 893
    :cond_b
    iget-boolean v0, p0, Lcom/android/settings/FontPreview;->mIsChangedFontSizeSeekBar:Z

    if-ne v0, v1, :cond_c

    sget v0, Lcom/android/settings/FontPreview;->mSelectedFontSizeSeekBarProgress:I

    if-ltz v0, :cond_c

    sget v0, Lcom/android/settings/FontPreview;->mSelectedFontSizeSeekBarProgress:I

    iget v2, p0, Lcom/android/settings/FontPreview;->mSelectedFontSize:I

    if-eq v0, v2, :cond_c

    iget v0, p0, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    if-ltz v0, :cond_c

    iget v0, p0, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    iget v2, p0, Lcom/android/settings/FontPreview;->mPreviousFont:I

    if-eq v0, v2, :cond_c

    .line 894
    invoke-direct {p0, v1}, Lcom/android/settings/FontPreview;->doneFontStyleOrFontSize(I)V

    goto :goto_1

    .line 896
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/FontPreview;->finish()V

    goto :goto_1
.end method

.method private doneFontSize()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 969
    sget v0, Lcom/android/settings/FontPreview;->mSelectedFontSizeSeekBarProgress:I

    .line 970
    .local v0, "fontIndex":I
    iget-object v3, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_size"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 971
    .local v2, "previousIndex":I
    const-string v3, "FontPreview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KKK onPreferenceChange fontIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v3, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_size"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 975
    iget-boolean v3, p0, Lcom/android/settings/FontPreview;->mIsFont11Level:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/settings/FontPreview;->mExtraLargeFontIndex:I

    if-le v0, v3, :cond_0

    .line 976
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 977
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "large_font"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 978
    const-string v3, "FontPreview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    iget-object v3, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 993
    :goto_0
    return-void

    .line 981
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    iget v3, p0, Lcom/android/settings/FontPreview;->mExtraLargeFontIndex:I

    if-gt v2, v3, :cond_1

    iget v3, p0, Lcom/android/settings/FontPreview;->mExtraLargeFontIndex:I

    if-le v0, v3, :cond_1

    .line 982
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 983
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v3, "large_font"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 984
    const-string v3, "FontPreview"

    const-string v4, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v3, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 988
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 989
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v3, "large_font"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 990
    iget-object v3, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 991
    const-string v3, "FontPreview"

    const-string v4, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doneFontStyleOrFontSize(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 943
    packed-switch p1, :pswitch_data_0

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 945
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/FontPreview;->doneFontSize()V

    .line 946
    invoke-virtual {p0}, Lcom/android/settings/FontPreview;->savePreferences()V

    .line 947
    invoke-virtual {p0}, Lcom/android/settings/FontPreview;->onOkButtonPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    iget v0, p0, Lcom/android/settings/FontPreview;->mFontFloatSize:F

    invoke-virtual {p0, v0}, Lcom/android/settings/FontPreview;->writeFontSizePreference(F)V

    .line 949
    invoke-virtual {p0}, Lcom/android/settings/FontPreview;->readFontSizePreference()V

    .line 950
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 954
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/FontPreview;->doneFontSize()V

    .line 955
    iget v0, p0, Lcom/android/settings/FontPreview;->mFontFloatSize:F

    invoke-virtual {p0, v0}, Lcom/android/settings/FontPreview;->writeFontSizePreference(F)V

    .line 956
    invoke-virtual {p0}, Lcom/android/settings/FontPreview;->readFontSizePreference()V

    .line 957
    invoke-virtual {p0}, Lcom/android/settings/FontPreview;->finish()V

    goto :goto_0

    .line 960
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/FontPreview;->savePreferences()V

    .line 961
    invoke-virtual {p0}, Lcom/android/settings/FontPreview;->onOkButtonPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 943
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getFontNameFromSystem()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1497
    iget-object v5, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "font_size"

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1499
    .local v0, "mSelectedFontSize":I
    const/4 v1, 0x0

    .line 1500
    .local v1, "mode":I
    iget-object v5, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    const-string v6, "prefs"

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1502
    .local v2, "mySharedPreference":Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 1503
    .local v3, "selectedFont":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1504
    .local v4, "temp":[Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1505
    if-eqz v4, :cond_0

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-lez v5, :cond_0

    .line 1506
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v3, v4, v5

    .line 1511
    :cond_0
    const-string v5, "monotype"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "default"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1512
    :cond_1
    iget-object v5, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e1130

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .end local v3    # "selectedFont":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1516
    .restart local v3    # "selectedFont":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1514
    :cond_2
    iget-object v5, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/android/settings/Utils;->getFontName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private setAccessiblityFontSizeView(Z)V
    .locals 7
    .param p1, "isFont11Level"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 370
    if-eqz p1, :cond_1

    .line 372
    const v3, 0x7f0d02d2

    invoke-virtual {p0, v3}, Lcom/android/settings/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 373
    .local v1, "layoutLinearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 374
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 377
    const v3, 0x7f0d02d4

    invoke-virtual {p0, v3}, Lcom/android/settings/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 378
    .local v2, "switchDividerView":Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 380
    const v3, 0x7f0d02d3

    invoke-virtual {p0, v3}, Lcom/android/settings/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/android/settings/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    .line 381
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 382
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 383
    iget-object v3, p0, Lcom/android/settings/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 384
    iget-object v3, p0, Lcom/android/settings/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setClickable(Z)V

    .line 386
    :cond_0
    iget-object v3, p0, Lcom/android/settings/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 387
    iget-object v6, p0, Lcom/android/settings/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    iget v3, p0, Lcom/android/settings/FontPreview;->mAccessFontOnOff:I

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 388
    iget-object v4, p0, Lcom/android/settings/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0e14f4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v1    # "layoutLinearLayout":Landroid/widget/LinearLayout;
    .end local v2    # "switchDividerView":Landroid/view/View;
    :cond_1
    return-void

    .restart local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .restart local v1    # "layoutLinearLayout":Landroid/widget/LinearLayout;
    .restart local v2    # "switchDividerView":Landroid/view/View;
    :cond_2
    move v3, v5

    .line 387
    goto :goto_0
.end method

.method private setDim(ZZ)V
    .locals 4
    .param p1, "isChecked"    # Z
    .param p2, "isPressed"    # Z

    .prologue
    const v3, 0x7f0a011d

    const v2, 0x7f02034d

    .line 393
    if-eqz p1, :cond_5

    .line 394
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lcom/android/settings/FontPreview;->mExtraHugeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/settings/IntervalSeekBar;->setMax(I)V

    .line 398
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    const v1, 0x7f020334

    invoke-virtual {v0, v1}, Lcom/android/settings/IntervalSeekBar;->setDrawable(I)V

    .line 399
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    iget-object v1, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/IntervalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 400
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    invoke-virtual {p0}, Lcom/android/settings/FontPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/IntervalSeekBar;->setOverlapBackgroundForDualColor(I)V

    .line 401
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    sget v1, Lcom/android/settings/FontPreview;->DUAL_COLOR_FOR_ELEVENLEVEL_FONT_VALUE:I

    invoke-virtual {v0, v1}, Lcom/android/settings/IntervalSeekBar;->setOverlapPointForDualColor(I)V

    .line 414
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/FontPreview;->isClickSwitch:Z

    if-eqz v0, :cond_3

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    if-eqz v0, :cond_3

    .line 416
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/IntervalSeekBar;->animationStart(Z)V

    .line 418
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/FontPreview;->isClickSwitch:Z

    .line 420
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    if-eqz v0, :cond_4

    .line 421
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    invoke-virtual {v0}, Lcom/android/settings/IntervalSeekBar;->invalidate()V

    .line 423
    :cond_4
    return-void

    .line 404
    :cond_5
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    if-eqz v0, :cond_6

    .line 405
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lcom/android/settings/FontPreview;->mHugeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 406
    :cond_6
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/settings/IntervalSeekBar;->setMax(I)V

    .line 408
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    const v1, 0x7f020333

    invoke-virtual {v0, v1}, Lcom/android/settings/IntervalSeekBar;->setDrawable(I)V

    .line 409
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    iget-object v1, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/IntervalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 410
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    invoke-virtual {p0}, Lcom/android/settings/FontPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/IntervalSeekBar;->setOverlapBackgroundForDualColor(I)V

    .line 411
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/IntervalSeekBar;->setOverlapPointForDualColor(I)V

    goto :goto_0
.end method

.method private setFontStyleList(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 441
    iput-object p1, p0, Lcom/android/settings/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    .line 442
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 445
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListAdapter;->isCurrentThemeFontInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListAdapter;->isCurrentThemeFontSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iput-boolean v4, p0, Lcom/android/settings/FontPreview;->mIsSelectedCurrentThemeFont:Z

    .line 451
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListAdapter;->getThemeFontCurrentPath()Ljava/lang/String;

    move-result-object v6

    .line 452
    .local v6, "currentThemeFontPath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 454
    .local v8, "f":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/FontPreview;->themeFontTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    .end local v6    # "currentThemeFontPath":Ljava/lang/String;
    .end local v8    # "f":Ljava/io/File;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/FontPreview;->setReHeightFontStyleListview()V

    .line 464
    const v0, 0x7f0d02ce

    invoke-virtual {p0, v0}, Lcom/android/settings/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ScrollView;

    .line 465
    .local v9, "fontScrollView":Landroid/widget/ScrollView;
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 466
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/settings/FontPreview$3;

    invoke-direct {v2, p0, v9}, Lcom/android/settings/FontPreview$3;-><init>(Lcom/android/settings/FontPreview;Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 497
    invoke-virtual {p0}, Lcom/android/settings/FontPreview;->loadPreferences()V

    .line 499
    invoke-direct {p0}, Lcom/android/settings/FontPreview;->setSelectedFontStyle()V

    .line 500
    if-eqz p1, :cond_2

    .line 501
    const-string v0, "USER_SELECTED_FONT_STYLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 503
    .local v3, "userSelectedStyleIndex":I
    const/4 v0, -0x1

    if-le v3, v0, :cond_2

    .line 504
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 505
    const-wide/16 v4, 0x1

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/FontPreview;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 508
    .end local v3    # "userSelectedStyleIndex":I
    :cond_2
    return-void

    .line 457
    .end local v9    # "fontScrollView":Landroid/widget/ScrollView;
    :catch_0
    move-exception v7

    .line 458
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setFontsizeLayoutSevenOrEleven(Z)V
    .locals 6
    .param p1, "isFont11Level"    # Z

    .prologue
    .line 318
    const v3, 0x7f0400ec

    invoke-virtual {p0, v3}, Lcom/android/settings/FontPreview;->setContentView(I)V

    .line 319
    const v3, 0x7f0d02cf

    invoke-virtual {p0, v3}, Lcom/android/settings/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/settings/FontPreview;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    .line 320
    const v3, 0x7f0d02d1

    invoke-virtual {p0, v3}, Lcom/android/settings/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/FontPreview;->mFontPreviewSizeStyleLayout:Landroid/widget/LinearLayout;

    .line 322
    const v3, 0x7f0d02da

    invoke-virtual {p0, v3}, Lcom/android/settings/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    .line 323
    const v3, 0x7f0d02d9

    invoke-virtual {p0, v3}, Lcom/android/settings/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/IntervalSeekBar;

    iput-object v3, p0, Lcom/android/settings/FontPreview;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    .line 324
    iget-object v3, p0, Lcom/android/settings/FontPreview;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    iget-object v4, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    const v5, 0x7f02034d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/IntervalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    iget-object v3, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a011e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/FontPreview;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 326
    .local v2, "tint_list":Landroid/content/res/ColorStateList;
    iget-object v3, p0, Lcom/android/settings/FontPreview;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    invoke-virtual {v3, v2}, Lcom/android/settings/IntervalSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 327
    iget-object v3, p0, Lcom/android/settings/FontPreview;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    sget v4, Lcom/android/settings/FontPreview;->DUAL_COLOR_FOR_ELEVENLEVEL_FONT_VALUE:I

    invoke-virtual {v3, v4}, Lcom/android/settings/IntervalSeekBar;->setOverlapPointForDualColor(I)V

    .line 328
    const v3, 0x7f0d02d6

    invoke-virtual {p0, v3}, Lcom/android/settings/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    .line 330
    const v3, 0x7f0d02d8

    invoke-virtual {p0, v3}, Lcom/android/settings/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextSwitcher;

    iput-object v3, p0, Lcom/android/settings/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    .line 331
    iget-object v3, p0, Lcom/android/settings/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    new-instance v4, Lcom/android/settings/FontPreview$2;

    invoke-direct {v4, p0}, Lcom/android/settings/FontPreview$2;-><init>(Lcom/android/settings/FontPreview;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 343
    const/high16 v3, 0x10a0000

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 344
    .local v0, "in":Landroid/view/animation/Animation;
    const v3, 0x10a0001

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 345
    .local v1, "out":Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/android/settings/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    invoke-virtual {v3, v0}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 346
    iget-object v3, p0, Lcom/android/settings/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    invoke-virtual {v3, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 348
    if-eqz p1, :cond_0

    .line 349
    const v3, 0x7f0d02d7

    invoke-virtual {p0, v3}, Lcom/android/settings/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/FontPreview;->mMinTextView:Landroid/widget/TextView;

    .line 350
    iget-object v3, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e09a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings/FontPreview;->mHugeString:Ljava/lang/String;

    .line 351
    iget-object v3, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e09ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings/FontPreview;->mExtraHugeString:Ljava/lang/String;

    .line 352
    iget-object v3, p0, Lcom/android/settings/FontPreview;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/settings/IntervalSeekBar;->setOverlapPointForDualColor(I)V

    .line 354
    iget v3, p0, Lcom/android/settings/FontPreview;->mAccessFontOnOff:I

    if-nez v3, :cond_1

    .line 355
    iget-object v4, p0, Lcom/android/settings/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0e14f2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v3, p0, Lcom/android/settings/FontPreview;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/android/settings/IntervalSeekBar;->setMax(I)V

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v4, p0, Lcom/android/settings/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0e14f3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v3, p0, Lcom/android/settings/FontPreview;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/android/settings/IntervalSeekBar;->setMax(I)V

    .line 360
    iget-object v3, p0, Lcom/android/settings/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    iget-object v4, p0, Lcom/android/settings/FontPreview;->mExtraHugeString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-boolean v3, p0, Lcom/android/settings/FontPreview;->mIsAccessibilitySettingsVision:Z

    if-nez v3, :cond_0

    .line 363
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/settings/FontPreview;->setDim(ZZ)V

    goto :goto_0
.end method

.method private setReHeightFontStyleListview()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 511
    iget-object v6, p0, Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 512
    iget-object v6, p0, Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 513
    .local v0, "adapterCount":I
    const/4 v5, 0x0

    .line 514
    .local v5, "totalHeight":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 515
    iget-object v6, p0, Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-interface {v6, v2, v7, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 516
    .local v3, "listItem":Landroid/view/View;
    invoke-virtual {v3, v9, v9}, Landroid/view/View;->measure(II)V

    .line 517
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 514
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 520
    .end local v3    # "listItem":Landroid/view/View;
    :cond_0
    iget-object v6, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "font_size"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 521
    .local v1, "fontSize":I
    if-nez v1, :cond_1

    .line 522
    add-int/lit8 v5, v5, 0x5

    .line 525
    :cond_1
    iget-object v6, p0, Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 526
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v6

    add-int/lit8 v7, v0, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v6, v5

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 527
    iget-object v6, p0, Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    iget-object v6, p0, Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->requestLayout()V

    .line 530
    .end local v0    # "adapterCount":I
    .end local v1    # "fontSize":I
    .end local v2    # "i":I
    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "totalHeight":I
    :cond_2
    return-void
.end method

.method private setSelectedFontStyle()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 803
    iget-object v2, p0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v2, :cond_1

    .line 859
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/FontPreview;->getSavedSelectedFontStringPreference()Ljava/lang/String;

    move-result-object v1

    .line 809
    .local v1, "selectedFont":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/settings/FontPreview;->mIsSelectedCurrentThemeFont:Z

    if-eqz v2, :cond_3

    .line 810
    iget-object v2, p0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/android/settings/flipfont/FontListAdapter;->getCurrentThemeFontIndex()I

    move-result v2

    iput v2, p0, Lcom/android/settings/FontPreview;->mPreviousFont:I

    .line 852
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/settings/FontPreview;->mPreviousFont:I

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 853
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 854
    iget v2, p0, Lcom/android/settings/FontPreview;->mPreviousFont:I

    if-gez v2, :cond_0

    const-string v2, "arjpopb.xml"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 855
    iget-object v2, p0, Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 856
    iput v5, p0, Lcom/android/settings/FontPreview;->mPreviousFont:I

    goto :goto_0

    .line 812
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 813
    iget-object v2, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e1121

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 818
    .local v0, "okButton":Ljava/lang/String;
    :goto_2
    const-string v2, "FontPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const-string v2, "FontPreview"

    const-string v3, "onPrepareDialogBuilder : KEY_PREFERENCE : MONOTYPE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const-string v2, "MONOTYPE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 824
    const-string v2, "FontPreview"

    const-string v3, "onPrepareDialogBuilder : selectedFont == KEY_PREFERENCE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-boolean v2, p0, Lcom/android/settings/FontPreview;->mDefaultUseHelvetica:Z

    if-eqz v2, :cond_5

    .line 827
    const-string v1, "HelveticaNeueRegular.xml"

    .line 828
    iget-object v2, p0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/FontPreview;->mPreviousFont:I

    .line 829
    const-string v2, "FontPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Use Helvetica by default. selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const-string v2, "FontPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Helvetica index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/FontPreview;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :goto_3
    iget v2, p0, Lcom/android/settings/FontPreview;->mPreviousFont:I

    if-gez v2, :cond_2

    .line 846
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/FontPreview;->mPreviousFont:I

    goto/16 :goto_1

    .line 815
    .end local v0    # "okButton":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e1122

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0    # "okButton":Ljava/lang/String;
    goto/16 :goto_2

    .line 833
    :cond_5
    const-string v1, "default"

    .line 834
    iget-object v2, p0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/FontPreview;->mPreviousFont:I

    .line 835
    const-string v2, "FontPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Use Android DroidSans by default. selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const-string v2, "FontPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Android DroidSans index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/FontPreview;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 839
    :cond_6
    const-string v2, "FontPreview"

    const-string v3, "onPrepareDialogBuilder : selectedFont != KEY_PREFERENCE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v2, p0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/FontPreview;->mPreviousFont:I

    .line 841
    const-string v2, "FontPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const-string v2, "FontPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : selectedFont index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/FontPreview;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private update3StepFontsizeList()V
    .locals 7

    .prologue
    .line 540
    iget-object v5, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 542
    .local v2, "res":Landroid/content/res/Resources;
    const v5, 0x7f110083

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "fontSizeNames":[Ljava/lang/String;
    iput-object v0, p0, Lcom/android/settings/FontPreview;->fontSizeStrings:[Ljava/lang/String;

    .line 546
    iget-object v5, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f11000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 548
    .local v4, "values":[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 549
    .local v3, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/settings/FontPreview;->floatRevisedValueList:Ljava/util/ArrayList;

    .line 551
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 552
    aget-object v5, v4, v1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    iget-object v5, p0, Lcom/android/settings/FontPreview;->floatRevisedValueList:Ljava/util/ArrayList;

    aget-object v6, v4, v1

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 555
    :cond_0
    iput-object v3, p0, Lcom/android/settings/FontPreview;->charSeqRevisedValues:Ljava/util/ArrayList;

    .line 556
    return-void
.end method

.method private update7StepFontsizeList()V
    .locals 6

    .prologue
    .line 559
    iget-object v4, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 561
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f11000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 563
    .local v3, "values":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v2, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings/FontPreview;->floatRevisedValueList:Ljava/util/ArrayList;

    .line 566
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 567
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    iget-object v4, p0, Lcom/android/settings/FontPreview;->floatRevisedValueList:Ljava/util/ArrayList;

    aget-object v5, v3, v0

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 570
    :cond_0
    iput-object v2, p0, Lcom/android/settings/FontPreview;->charSeqRevisedValues:Ljava/util/ArrayList;

    .line 571
    return-void
.end method


# virtual methods
.method protected badFontDialog(Ljava/lang/String;)V
    .locals 5
    .param p1, "apkName"    # Ljava/lang/String;

    .prologue
    .line 1350
    move-object v1, p1

    .line 1352
    .local v1, "deletePackageName":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e112e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e112f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/FontPreview$8;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/FontPreview$8;-><init>(Lcom/android/settings/FontPreview;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/settings/FontPreview$7;

    invoke-direct {v4, p0}, Lcom/android/settings/FontPreview$7;-><init>(Lcom/android/settings/FontPreview;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1382
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/settings/FontPreview$9;

    invoke-direct {v2, p0}, Lcom/android/settings/FontPreview$9;-><init>(Lcom/android/settings/FontPreview;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1391
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1392
    return-void
.end method

.method protected checkFont(Ljava/lang/String;)Z
    .locals 17
    .param p1, "apkname"    # Ljava/lang/String;

    .prologue
    .line 690
    sget-boolean v14, Lcom/android/settings/FontPreview;->DEBUG:Z

    if-eqz v14, :cond_0

    .line 691
    const-string v14, "FlipFont"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "checkFont - checking apkname"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_0
    const-string v14, "com.monotype.android.font.foundation"

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 695
    const/4 v14, 0x0

    .line 790
    :goto_0
    return v14

    .line 699
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 700
    .local v12, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    sget-object v14, Lcom/android/settings/FontPreview;->apkNameList:[Ljava/lang/String;

    array-length v14, v14

    if-ge v7, v14, :cond_5

    .line 701
    if-eqz p1, :cond_4

    sget-object v14, Lcom/android/settings/FontPreview;->apkNameList:[Ljava/lang/String;

    aget-object v14, v14, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 702
    const-string v14, "android"

    sget-object v15, Lcom/android/settings/FontPreview;->apkNameList:[Ljava/lang/String;

    aget-object v15, v15, v7

    invoke-virtual {v12, v14, v15}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_3

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/FontPreview;->isCheckPlatformSignatures:Z

    .line 703
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    sget-object v15, Lcom/android/settings/FontPreview;->apkNameList:[Ljava/lang/String;

    aget-object v15, v15, v7

    invoke-static {v14, v15}, Lcom/android/settings/Utils;->isSignatureMatch(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/FontPreview;->isCheckReleaseSignatures:Z

    .line 704
    const-string v14, "FontPreview"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "apkname : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", isCheckPlatformSignatures : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/FontPreview;->isCheckPlatformSignatures:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", isCheckReleaseSignatures : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/FontPreview;->isCheckReleaseSignatures:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/FontPreview;->isCheckPlatformSignatures:Z

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/FontPreview;->isCheckReleaseSignatures:Z

    if-nez v14, :cond_2

    const-string v14, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 706
    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 702
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 700
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 711
    :cond_5
    sget-boolean v14, Lcom/android/settings/FontPreview;->DEBUG:Z

    if-eqz v14, :cond_6

    .line 712
    const-string v14, "FlipFont"

    const-string v15, "checkFont - check if valid certificate"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_6
    const/4 v11, 0x0

    .line 718
    .local v11, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v14, v14, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v15, 0x40

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v11

    .line 722
    :goto_3
    if-eqz v11, :cond_c

    .line 723
    iget-object v13, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 725
    .local v13, "signatures":[Landroid/content/pm/Signature;
    const/4 v14, 0x0

    aget-object v14, v13, v14

    invoke-virtual {v14}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    .line 727
    .local v2, "cert":[B
    :try_start_1
    const-string v14, "SHA"

    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    .line 728
    .local v10, "md":Ljava/security/MessageDigest;
    const/4 v14, 0x0

    aget-object v14, v13, v14

    invoke-virtual {v14}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/security/MessageDigest;->update([B)V

    .line 729
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 730
    .local v5, "currentSignature":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 733
    const-string v14, "T84drf8v3ZMOLvt2SFG/K7ODXgI="

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 734
    sget-boolean v14, Lcom/android/settings/FontPreview;->DEBUG:Z

    if-eqz v14, :cond_7

    .line 735
    const-string v14, "FlipFont"

    const-string v15, "**Signature is correct**"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 738
    :cond_8
    sget-boolean v14, Lcom/android/settings/FontPreview;->DEBUG:Z

    if-eqz v14, :cond_9

    .line 739
    const-string v14, "FlipFont"

    const-string v15, "**Signature is incorrect**"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 740
    :cond_9
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 742
    .end local v5    # "currentSignature":Ljava/lang/String;
    .end local v10    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v6

    .line 743
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 746
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 747
    .local v8, "input":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 750
    .local v4, "cf":Ljava/security/cert/CertificateFactory;
    :try_start_2
    const-string v14, "X509"

    invoke-static {v14}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    .line 756
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_4
    const/4 v1, 0x0

    .line 759
    .local v1, "c":Ljava/security/cert/X509Certificate;
    :try_start_3
    invoke-virtual {v4, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v1, v0
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 765
    :goto_5
    sget-boolean v14, Lcom/android/settings/FontPreview;->DEBUG:Z

    if-eqz v14, :cond_a

    .line 766
    const-string v14, "Example"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "APK name: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    if-eqz v1, :cond_a

    .line 768
    const-string v14, "Example"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Certificate for: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const-string v14, "Example"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Certificate issued by: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const-string v14, "Example"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The certificate is valid from "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const-string v14, "Example"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Certificate SN# "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const-string v14, "Example"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Generated with "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_a
    const-string v3, "CN=Ed Platz, OU=Display Imaging, O=Monotype Imanging Inc., L=Woburn, ST=MA, C=US"

    .line 779
    .local v3, "certIssuedByString":Ljava/lang/String;
    if-eqz v1, :cond_c

    .line 780
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v14

    invoke-interface {v14}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v9

    .line 782
    .local v9, "issuderDNString":Ljava/lang/String;
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 783
    sget-boolean v14, Lcom/android/settings/FontPreview;->DEBUG:Z

    if-eqz v14, :cond_b

    .line 784
    const-string v14, "FlipFont"

    const-string v15, "**Certificate data is correct**"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 751
    .end local v1    # "c":Ljava/security/cert/X509Certificate;
    .end local v3    # "certIssuedByString":Ljava/lang/String;
    .end local v9    # "issuderDNString":Ljava/lang/String;
    .restart local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 753
    .local v6, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v6}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto/16 :goto_4

    .line 760
    .end local v6    # "e":Ljava/security/cert/CertificateException;
    .restart local v1    # "c":Ljava/security/cert/X509Certificate;
    :catch_2
    move-exception v6

    .line 762
    .restart local v6    # "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v6}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto/16 :goto_5

    .line 790
    .end local v1    # "c":Ljava/security/cert/X509Certificate;
    .end local v2    # "cert":[B
    .end local v4    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v6    # "e":Ljava/security/cert/CertificateException;
    .end local v8    # "input":Ljava/io/InputStream;
    .end local v13    # "signatures":[Landroid/content/pm/Signature;
    :cond_c
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 719
    :catch_3
    move-exception v14

    goto/16 :goto_3
.end method

.method public getSavedSelectedFontStringPreference()Ljava/lang/String;
    .locals 4

    .prologue
    .line 863
    const/4 v0, 0x0

    .line 864
    .local v0, "mode":I
    iget-object v2, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    const-string v3, "prefs"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 866
    .local v1, "mySharedPreference":Landroid/content/SharedPreferences;
    const-string v2, "selectedFont"

    const-string v3, "MONOTYPE"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public loadPreferences()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 997
    const/4 v2, 0x0

    .line 998
    .local v2, "mode":I
    iget-object v4, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    const-string v5, "prefs"

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1001
    .local v3, "mySharedPreference":Landroid/content/SharedPreferences;
    const-string v4, "SavedClickedItem"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/FontPreview;->mSavedClickedItem:I

    .line 1002
    iget v1, p0, Lcom/android/settings/FontPreview;->mSavedClickedItem:I

    .line 1003
    .local v1, "fontIndexPref":I
    iget-object v4, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "flip_font_style"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1005
    .local v0, "fontIndexDB":I
    if-ne v0, v6, :cond_0

    .line 1006
    iget-object v4, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "flip_font_style"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1007
    const-string v4, "FontPreview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFontStyleIndexForMultiUser() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    iput v1, p0, Lcom/android/settings/FontPreview;->mSavedClickedItem:I

    .line 1012
    :goto_0
    return-void

    .line 1010
    :cond_0
    iput v0, p0, Lcom/android/settings/FontPreview;->mSavedClickedItem:I

    goto :goto_0
.end method

.method public onCancelButtonPressed()V
    .locals 3

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings/FontPreview;->mPreviousFont:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 800
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 427
    iget-object v1, p0, Lcom/android/settings/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isPressed()Z

    move-result v0

    .line 428
    .local v0, "isPressed":Z
    invoke-direct {p0, p2, v0}, Lcom/android/settings/FontPreview;->setDim(ZZ)V

    .line 429
    iput-boolean p2, p0, Lcom/android/settings/FontPreview;->mIsFontLargerOn:Z

    .line 430
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 434
    iget-object v1, p0, Lcom/android/settings/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    .line 435
    iput-boolean v0, p0, Lcom/android/settings/FontPreview;->isClickSwitch:Z

    .line 436
    iget-object v1, p0, Lcom/android/settings/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 438
    :cond_0
    return-void

    .line 436
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 190
    iput-object p1, p0, Lcom/android/settings/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/FontPreview;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    .line 193
    iget-object v1, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->getFontSize(Landroid/content/Context;)F

    move-result v1

    float-to-int v9, v1

    .line 194
    .local v9, "fontArraySize":I
    const-string v1, "fontArraySize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fontArraySize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/16 v1, 0xb

    if-ne v9, v1, :cond_4

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/FontPreview;->mIsFont11Level:Z

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/FontPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_button_background"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/FontPreview;->isEnabledShowBtnBg:Z

    .line 198
    iget-boolean v1, p0, Lcom/android/settings/FontPreview;->mIsFont11Level:Z

    if-eqz v1, :cond_0

    .line 199
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/settings/FontPreview;->mExtraLargeFontIndex:I

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/FontPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessiblity_font_switch"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/FontPreview;->mAccessFontOnOff:I

    .line 204
    iget v1, p0, Lcom/android/settings/FontPreview;->mAccessFontOnOff:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 205
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/FontPreview;->mIsFontLargerOn:Z

    .line 211
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/FontPreview;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/FontPreview;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "isAccessibilitySettingsVision"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/FontPreview;->mIsAccessibilitySettingsVision:Z

    .line 213
    iget-boolean v1, p0, Lcom/android/settings/FontPreview;->mIsAccessibilitySettingsVision:Z

    if-eqz v1, :cond_1

    .line 214
    const v1, 0x7f0e0601

    invoke-virtual {p0, v1}, Lcom/android/settings/FontPreview;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/FontPreview;->setTitle(Ljava/lang/CharSequence;)V

    .line 215
    iget-boolean v1, p0, Lcom/android/settings/FontPreview;->mIsFont11Level:Z

    if-eqz v1, :cond_1

    .line 216
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/settings/FontPreview;->mExtraLargeFontIndex:I

    .line 223
    :cond_1
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/FontPreview;->configureActionBar()V

    .line 225
    iget-boolean v1, p0, Lcom/android/settings/FontPreview;->mIsFont11Level:Z

    invoke-direct {p0, v1}, Lcom/android/settings/FontPreview;->setFontsizeLayoutSevenOrEleven(Z)V

    .line 227
    iget-boolean v1, p0, Lcom/android/settings/FontPreview;->mIsAccessibilitySettingsVision:Z

    if-eqz v1, :cond_2

    .line 228
    iget-boolean v1, p0, Lcom/android/settings/FontPreview;->mIsFont11Level:Z

    invoke-direct {p0, v1}, Lcom/android/settings/FontPreview;->setAccessiblityFontSizeView(Z)V

    .line 229
    const v1, 0x7f0d02db

    invoke-virtual {p0, v1}, Lcom/android/settings/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 230
    .local v10, "fontStyle":Landroid/widget/LinearLayout;
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    .end local v10    # "fontStyle":Landroid/widget/LinearLayout;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 235
    iget-object v1, p0, Lcom/android/settings/FontPreview;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/settings/IntervalSeekBar;->setMax(I)V

    .line 236
    const v1, 0x7f0d02d7

    invoke-virtual {p0, v1}, Lcom/android/settings/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 237
    .local v12, "startFontSize":Landroid/widget/TextView;
    const v1, 0x7f0e09a8

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(I)V

    .line 238
    const v1, 0x7f0d02d8

    invoke-virtual {p0, v1}, Lcom/android/settings/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextSwitcher;

    .line 240
    .local v8, "endFontSize":Landroid/widget/TextSwitcher;
    invoke-direct {p0}, Lcom/android/settings/FontPreview;->update3StepFontsizeList()V

    .line 245
    .end local v8    # "endFontSize":Landroid/widget/TextSwitcher;
    .end local v12    # "startFontSize":Landroid/widget/TextView;
    :goto_4
    iget-object v1, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->getSelectedFontSize(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/FontPreview;->mSelectedFontSize:I

    .line 246
    iget v1, p0, Lcom/android/settings/FontPreview;->mSelectedFontSize:I

    invoke-direct {p0, v1}, Lcom/android/settings/FontPreview;->changeFontSizeFromSeekBar(I)V

    .line 247
    iget-object v1, p0, Lcom/android/settings/FontPreview;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    iget v2, p0, Lcom/android/settings/FontPreview;->mSelectedFontSize:I

    invoke-virtual {v1, v2}, Lcom/android/settings/IntervalSeekBar;->setProgress(I)V

    .line 249
    iget v1, p0, Lcom/android/settings/FontPreview;->mSelectedFontSize:I

    iget v2, p0, Lcom/android/settings/FontPreview;->mExtraLargeFontIndex:I

    if-le v1, v2, :cond_3

    .line 250
    iget-object v1, p0, Lcom/android/settings/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    :cond_3
    iget-object v1, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FontPreview;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 255
    iget-object v1, p0, Lcom/android/settings/FontPreview;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    new-instance v2, Lcom/android/settings/FontPreview$1;

    invoke-direct {v2, p0}, Lcom/android/settings/FontPreview$1;-><init>(Lcom/android/settings/FontPreview;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 280
    iget-boolean v1, p0, Lcom/android/settings/FontPreview;->mIsAccessibilitySettingsVision:Z

    if-eqz v1, :cond_9

    .line 315
    :goto_5
    return-void

    .line 195
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 196
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 207
    :cond_6
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/FontPreview;->mIsFontLargerOn:Z

    .line 208
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/settings/FontPreview;->mExtraLargeFontIndex:I

    goto/16 :goto_2

    .line 220
    :cond_7
    const v1, 0x7f0e10ff

    invoke-virtual {p0, v1}, Lcom/android/settings/FontPreview;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/FontPreview;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 242
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/FontPreview;->update7StepFontsizeList()V

    goto :goto_4

    .line 284
    :cond_9
    const v1, 0x7f0d02dc

    invoke-virtual {p0, v1}, Lcom/android/settings/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    .line 285
    iget-object v1, p0, Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/FontPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 289
    .local v11, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0c00a2

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0c00b0

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    const v2, 0x7f0c00aa

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int v4, v1, v2

    .line 292
    .local v4, "divider_inset_size":I
    invoke-static {p0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 293
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 294
    .local v0, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    iget-object v1, p0, Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 300
    :goto_6
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 301
    .local v13, "tvtemp":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 302
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 303
    iget-object v1, p0, Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v1, v13}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 306
    iget-object v1, p0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v1, :cond_c

    .line 307
    iget-boolean v1, p0, Lcom/android/settings/FontPreview;->mIsRunLoadListTask:Z

    if-nez v1, :cond_a

    .line 308
    new-instance v1, Lcom/android/settings/FontPreview$LoadListTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/FontPreview$LoadListTask;-><init>(Lcom/android/settings/FontPreview;Lcom/android/settings/FontPreview$1;)V

    iput-object v1, p0, Lcom/android/settings/FontPreview;->mLoadListTask:Lcom/android/settings/FontPreview$LoadListTask;

    .line 309
    iget-object v1, p0, Lcom/android/settings/FontPreview;->mLoadListTask:Lcom/android/settings/FontPreview$LoadListTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/FontPreview$LoadListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 314
    :cond_a
    :goto_7
    const-string v1, "FontPreview onCreate"

    const-string v2, "called onCreate()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 296
    .end local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    .end local v13    # "tvtemp":Landroid/widget/TextView;
    :cond_b
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 297
    .restart local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    iget-object v1, p0, Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 312
    .restart local v13    # "tvtemp":Landroid/widget/TextView;
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/settings/FontPreview;->setFontStyleList(Landroid/os/Bundle;)V

    goto :goto_7
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v3, 0x7f020354

    .line 905
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 907
    iget-object v1, p0, Lcom/android/settings/FontPreview;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 908
    iget-object v1, p0, Lcom/android/settings/FontPreview;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 909
    .local v0, "customView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 910
    const v1, 0x7f0d015b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/FontPreview;->mcancelButton:Landroid/widget/Button;

    .line 911
    iget-object v1, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/FontPreview;->mcancelButton:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    .line 912
    iget-object v1, p0, Lcom/android/settings/FontPreview;->mcancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/FontPreview$4;

    invoke-direct {v2, p0}, Lcom/android/settings/FontPreview$4;-><init>(Lcom/android/settings/FontPreview;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 918
    const v1, 0x7f0d015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/FontPreview;->mSaveButton:Landroid/widget/Button;

    .line 919
    iget-object v1, p0, Lcom/android/settings/FontPreview;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f0e0d05

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 920
    iget-object v1, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/FontPreview;->mSaveButton:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    .line 921
    iget-object v1, p0, Lcom/android/settings/FontPreview;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/FontPreview$5;

    invoke-direct {v2, p0}, Lcom/android/settings/FontPreview$5;-><init>(Lcom/android/settings/FontPreview;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 929
    iget-boolean v1, p0, Lcom/android/settings/FontPreview;->isEnabledShowBtnBg:Z

    if-eqz v1, :cond_0

    .line 930
    iget-object v1, p0, Lcom/android/settings/FontPreview;->mcancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 931
    iget-object v1, p0, Lcom/android/settings/FontPreview;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 935
    .end local v0    # "customView":Landroid/view/View;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1482
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1484
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mLoadListTask:Lcom/android/settings/FontPreview$LoadListTask;

    if-eqz v0, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mLoadListTask:Lcom/android/settings/FontPreview$LoadListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/FontPreview$LoadListTask;->cancel(Z)Z

    .line 1486
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/FontPreview;->mIsRunLoadListTask:Z

    .line 1489
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_1

    .line 1490
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-static {}, Lcom/android/settings/flipfont/FontListAdapter;->destroyInstance()V

    .line 1491
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 1493
    :cond_1
    const-string v0, "FontPreview destroy"

    const-string v1, "called onDestroy()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 17
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "which"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 588
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v14, :cond_1

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    .line 594
    const/4 v11, 0x0

    .line 595
    .local v11, "question":Ljava/lang/String;
    const/4 v8, 0x0

    .line 596
    .local v8, "fontName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 598
    .local v10, "press_apkname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-eqz v14, :cond_2

    .line 599
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v14, v14, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v14, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 602
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e14f6

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 603
    .local v6, "download_font":Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 608
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e1129

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 609
    .local v13, "uri":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 610
    .local v9, "intent":Landroid/content/Intent;
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 611
    const v14, 0x14000020

    invoke-virtual {v9, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 613
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v14, v9}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 614
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e1128

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .end local v13    # "uri":Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 615
    .restart local v13    # "uri":Ljava/lang/String;
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    const-string v15, "android.intent.action.VIEW"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v9

    .line 616
    const v14, 0x14000020

    invoke-virtual {v9, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 618
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v13    # "uri":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FontPreview;->finish()V

    goto/16 :goto_0

    .line 619
    :catch_0
    move-exception v7

    .line 620
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 626
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v14}, Lcom/android/settings/flipfont/FontListAdapter;->getCurrentThemeString()Ljava/lang/String;

    move-result-object v5

    .line 627
    .local v5, "currentThemeFont":Ljava/lang/String;
    if-eqz v5, :cond_6

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 628
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->themeFontTypeface:Landroid/graphics/Typeface;

    if-eqz v14, :cond_5

    .line 629
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FontPreview;->themeFontTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 631
    :cond_5
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/FontPreview;->mIsSelectedCurrentThemeFont:Z

    goto/16 :goto_0

    .line 634
    :cond_6
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/FontPreview;->mIsSelectedCurrentThemeFont:Z

    .line 637
    const/4 v14, 0x1

    move/from16 v0, p3

    if-ge v0, v14, :cond_a

    .line 638
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e1124

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 639
    .local v12, "s":Ljava/lang/String;
    move-object v11, v12

    .line 655
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    const-string v15, "activity"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 656
    .local v2, "activityManager":Landroid/app/ActivityManager;
    const/4 v14, 0x3

    const/4 v15, 0x1

    invoke-virtual {v2, v14, v15}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v4

    .line 658
    .local v4, "bgAppTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v4, :cond_7

    .line 659
    const/4 v14, 0x1

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v14, v14, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/FontPreview;->mPackageName:Ljava/lang/String;

    .line 661
    :cond_7
    const-string v14, "FlipFont"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pkgName1:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FontPreview;->mPackageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    if-eqz v14, :cond_8

    .line 664
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Lcom/android/settings/flipfont/FontListAdapter;->getFontTypeface(I)Landroid/graphics/Typeface;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 667
    :cond_8
    const/4 v3, 0x0

    .line 668
    .local v3, "apkname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-eqz v14, :cond_9

    .line 670
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v14, v14, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v14, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 683
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v14, :cond_0

    .line 684
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v15, "USER_SELECTED_FONT_STYLE"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 641
    .end local v2    # "activityManager":Landroid/app/ActivityManager;
    .end local v3    # "apkname":Ljava/lang/String;
    .end local v4    # "bgAppTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v12    # "s":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e1126

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 643
    .restart local v12    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v14, :cond_b

    .line 645
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/android/settings/flipfont/FontListAdapter;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 646
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v14}, Lcom/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    .line 648
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    .line 649
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v14}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 651
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v14, v15}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v8

    .line 652
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 671
    .restart local v2    # "activityManager":Landroid/app/ActivityManager;
    .restart local v3    # "apkname":Ljava/lang/String;
    .restart local v4    # "bgAppTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :catch_1
    move-exception v14

    goto :goto_3
.end method

.method public onOkButtonPressed()Z
    .locals 32

    .prologue
    .line 1035
    const-string v27, ""

    .line 1036
    .local v27, "selectedFont":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/FontPreview;->mIsSelectedCurrentThemeFont:Z

    if-eqz v2, :cond_1

    .line 1038
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/android/settings/flipfont/FontListAdapter;->getThemeFontCurrentPath()Ljava/lang/String;

    move-result-object v28

    .line 1039
    .local v28, "themePath":Ljava/lang/String;
    const/16 v2, 0x2f

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 1040
    .local v16, "endIndex":I
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v6, 0x0

    move/from16 v0, v16

    invoke-static {v2, v6, v0}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v27

    .line 1041
    const-string v2, "persist.sys.flipfontpath"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#Theme"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    .end local v16    # "endIndex":I
    .end local v28    # "themePath":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    .line 1180
    .local v11, "am":Landroid/app/IActivityManager;
    sget-boolean v2, Lcom/android/settings/FontPreview;->REBOOT:Z

    if-nez v2, :cond_12

    .line 1183
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1191
    :goto_1
    :try_start_1
    invoke-interface {v11}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    .line 1193
    .local v14, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v14, Landroid/content/res/Configuration;->FlipFont:I

    .line 1194
    invoke-interface {v11, v14}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1198
    .end local v14    # "config":Landroid/content/res/Configuration;
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreview;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreview;->mPackageName:Ljava/lang/String;

    const-string v6, "sec_container_"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1199
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/FontPreview;->mPackageName:Ljava/lang/String;

    .line 1200
    const/4 v2, 0x1

    .line 1249
    .end local v11    # "am":Landroid/app/IActivityManager;
    :goto_3
    return v2

    .line 1043
    :cond_1
    const/16 v17, 0x0

    .line 1045
    .local v17, "err_filecopy":Z
    const-string v2, "FontPreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onOkButtonPressed : mClickedItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const/4 v5, 0x0

    .line 1049
    .local v5, "apkname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-eqz v2, :cond_2

    .line 1051
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    .line 1058
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings/FontPreview;->checkFont(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1059
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings/FontPreview;->badFontDialog(Ljava/lang/String;)V

    .line 1061
    const/4 v2, 0x0

    goto :goto_3

    .line 1052
    :catch_0
    move-exception v15

    .line 1054
    .local v15, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x0

    goto :goto_3

    .line 1064
    .end local v15    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_6

    .line 1065
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/FontPreview;->mSavedClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    .line 1070
    :goto_4
    const-string v2, "FontPreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onOkButtonPressed : mSavedClickedItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/FontPreview;->mSavedClickedItem:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v2, :cond_4

    .line 1074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/android/settings/flipfont/FontListAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 1075
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    .line 1077
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 1081
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "selectedFont":Ljava/lang/String;
    check-cast v27, Ljava/lang/String;

    .line 1083
    .restart local v27    # "selectedFont":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/FontPreview;->saveSelectedFontStringPreferences(Ljava/lang/String;)V

    .line 1087
    new-instance v3, Lcom/android/settings/flipfont/FontWriter;

    invoke-direct {v3}, Lcom/android/settings/flipfont/FontWriter;-><init>()V

    .line 1090
    .local v3, "fontWriter":Lcom/android/settings/flipfont/FontWriter;
    if-eqz v27, :cond_5

    const-string v2, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1091
    :cond_5
    sput-object v27, Lcom/android/settings/FontPreview;->persistString:Ljava/lang/String;

    .line 1092
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    const-string v6, " "

    invoke-virtual {v3, v2, v6}, Lcom/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    .line 1093
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/FontPreview;->mSavedClickedItem:I

    .line 1094
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FontPreview;->savePreferences()V

    .line 1096
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    const-string v6, "sans.loc"

    const-string v7, "default#default"

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    if-nez v27, :cond_0

    .line 1099
    const-string v2, "FontPreview"

    const-string v6, "onOkButtonPressed() : selectedFont == null "

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1067
    .end local v3    # "fontWriter":Lcom/android/settings/flipfont/FontWriter;
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/FontPreview;->mSavedClickedItem:I

    goto/16 :goto_4

    .line 1106
    .restart local v3    # "fontWriter":Lcom/android/settings/flipfont/FontWriter;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/android/settings/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/android/settings/flipfont/Typeface;

    move-result-object v26

    .line 1108
    .local v26, "sansTypeface":Lcom/android/settings/flipfont/Typeface;
    move-object/from16 v25, v27

    .line 1109
    .local v25, "sFontDir":Ljava/lang/String;
    const-string v2, ".xml"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    .line 1111
    .local v22, "index":I
    if-lez v22, :cond_8

    .line 1112
    const/4 v2, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 1115
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-virtual {v3, v2, v0}, Lcom/android/settings/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 1117
    .local v4, "fontDir":Ljava/io/File;
    const/16 v29, 0x0

    .line 1119
    .local v29, "tpf":Lcom/android/settings/flipfont/TypefaceFile;
    if-eqz v26, :cond_9

    .line 1120
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_5
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_9

    .line 1121
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    .end local v29    # "tpf":Lcom/android/settings/flipfont/TypefaceFile;
    check-cast v29, Lcom/android/settings/flipfont/TypefaceFile;

    .line 1125
    .restart local v29    # "tpf":Lcom/android/settings/flipfont/TypefaceFile;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1126
    const-string v2, "FontPreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onOkButtonPressed : Application name, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    .line 1128
    .local v12, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v2, v12, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 1129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v23

    .line 1130
    .local v23, "res":Landroid/content/res/Resources;
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    .line 1131
    .local v13, "assetManager":Landroid/content/res/AssetManager;
    const-string v2, "FontPreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tpf.getFileName(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v29 .. v29}, Lcom/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fonts/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v29 .. v29}, Lcom/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 1133
    .local v21, "in":Ljava/io/InputStream;
    invoke-virtual/range {v29 .. v29}, Lcom/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v17

    .line 1134
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1120
    .end local v12    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "assetManager":Landroid/content/res/AssetManager;
    .end local v21    # "in":Ljava/io/InputStream;
    .end local v23    # "res":Landroid/content/res/Resources;
    :goto_6
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_5

    .line 1135
    :catch_1
    move-exception v18

    .line 1137
    .local v18, "ex":Ljava/lang/Exception;
    invoke-virtual/range {v29 .. v29}, Lcom/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v29 .. v29}, Lcom/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/FontPreview;->copyFileWithCR(Lcom/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    goto :goto_6

    .line 1142
    .end local v18    # "ex":Ljava/lang/Exception;
    .end local v19    # "i":I
    :cond_9
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_b

    .line 1149
    sget-boolean v2, Lcom/android/settings/FontPreview;->DEBUG:Z

    if-eqz v2, :cond_a

    .line 1150
    const-string v2, "FlipFont"

    const-string v6, "**onOkButtonPressed - enospc error **"

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings/FontPreview;->badFontDialog(Ljava/lang/String;)V

    .line 1157
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1160
    :cond_b
    sput-object v27, Lcom/android/settings/FontPreview;->persistString:Ljava/lang/String;

    .line 1162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-virtual {v3, v2, v0}, Lcom/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    .line 1163
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/FontPreview;->mSavedClickedItem:I

    .line 1164
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FontPreview;->savePreferences()V

    .line 1166
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/FontPreview;->mPreviousFont:I

    .line 1170
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    const-string v6, "sans.loc"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v30, "#"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1171
    :catch_2
    move-exception v15

    .line 1172
    .local v15, "e":Ljava/lang/RuntimeException;
    const-string v2, "FontPreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fontWriter.writeLoc() : RuntimeException occured. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1184
    .end local v3    # "fontWriter":Lcom/android/settings/flipfont/FontWriter;
    .end local v4    # "fontDir":Ljava/io/File;
    .end local v5    # "apkname":Ljava/lang/String;
    .end local v15    # "e":Ljava/lang/RuntimeException;
    .end local v17    # "err_filecopy":Z
    .end local v22    # "index":I
    .end local v25    # "sFontDir":Ljava/lang/String;
    .end local v26    # "sansTypeface":Lcom/android/settings/flipfont/Typeface;
    .end local v29    # "tpf":Lcom/android/settings/flipfont/TypefaceFile;
    .restart local v11    # "am":Landroid/app/IActivityManager;
    :catch_3
    move-exception v15

    .line 1186
    .local v15, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v15}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 1204
    .end local v15    # "e":Ljava/lang/InterruptedException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 1205
    .local v9, "activityManager":Landroid/app/ActivityManager;
    const/16 v2, 0x32

    invoke-virtual {v9, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v10

    .line 1206
    .local v10, "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v19, 0x1

    .line 1208
    .restart local v19    # "i":I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1209
    .local v8, "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v2, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v24

    .line 1211
    .local v24, "s":Ljava/lang/String;
    const-string v2, "com.android.settings"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "com.samsung.music"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "com.sec.android.app.music"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    .line 1214
    const-string v2, "com.infraware.polarisoffice"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "com.infraware.polarisoffice4"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "com.infraware.polarisviewer4"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "com.infraware.PolarisOfficeStdForTablet"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "com.infraware.polarisviewer5tablet"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "com.infraware.polarisoffice5tablet"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "com.infraware.polarisoffice4.document"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "com.infraware.polarisoffice5"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "com.infraware.polarisoffice5.document"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "com.infraware.polarisviewer5"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "com.infraware.polarisviewer5.document"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_f

    .line 1225
    :cond_e
    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1227
    :cond_f
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1228
    const-string v2, "com.nttdocomo.android.toruca"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    .line 1229
    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1232
    :cond_10
    const-string v2, "com.sec.android.app.camera"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_11

    .line 1233
    const-string v2, "FontPreview"

    const-string v6, "com.sec.android.app.camera == 0"

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1235
    :cond_11
    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1249
    .end local v8    # "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v9    # "activityManager":Landroid/app/ActivityManager;
    .end local v10    # "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v19    # "i":I
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v24    # "s":Ljava/lang/String;
    :cond_12
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 1195
    :catch_4
    move-exception v2

    goto/16 :goto_2
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 1467
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1468
    iget-boolean v0, p0, Lcom/android/settings/FontPreview;->mIsAccessibilitySettingsVision:Z

    if-nez v0, :cond_0

    .line 1469
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v0, :cond_0

    .line 1470
    iget-boolean v0, p0, Lcom/android/settings/FontPreview;->mIsRunLoadListTask:Z

    if-nez v0, :cond_0

    .line 1471
    new-instance v0, Lcom/android/settings/FontPreview$LoadListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/FontPreview$LoadListTask;-><init>(Lcom/android/settings/FontPreview;Lcom/android/settings/FontPreview$1;)V

    iput-object v0, p0, Lcom/android/settings/FontPreview;->mLoadListTask:Lcom/android/settings/FontPreview$LoadListTask;

    .line 1472
    iget-object v0, p0, Lcom/android/settings/FontPreview;->mLoadListTask:Lcom/android/settings/FontPreview$LoadListTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/FontPreview$LoadListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1473
    const-string v0, "FontPreview onResume"

    const-string v1, "called onResume()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/FontPreview;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 1478
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1396
    const-string v0, "USER_SELECTED_FONT_STYLE"

    iget v1, p0, Lcom/android/settings/FontPreview;->mSelectedFontStyleItemIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1397
    iput-object p1, p0, Lcom/android/settings/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1398
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1399
    return-void
.end method

.method public readFontSizePreference()V
    .locals 3

    .prologue
    .line 1343
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/FontPreview;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1347
    :goto_0
    return-void

    .line 1344
    :catch_0
    move-exception v0

    .line 1345
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FontPreview"

    const-string v2, "Unable to retrieve font size"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected savePreferences()V
    .locals 6

    .prologue
    .line 1016
    const/4 v1, 0x0

    .line 1017
    .local v1, "mode":I
    iget-object v3, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    const-string v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1020
    .local v2, "mySharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1022
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "SelectDialogIsActive"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1023
    const-string v3, "SavedClickedItem"

    iget v4, p0, Lcom/android/settings/FontPreview;->mSavedClickedItem:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1025
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1026
    iget-object v3, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "flip_font_style"

    iget v5, p0, Lcom/android/settings/FontPreview;->mSavedClickedItem:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1027
    return-void
.end method

.method public saveSelectedFontStringPreferences(Ljava/lang/String;)V
    .locals 5
    .param p1, "selectedFont"    # Ljava/lang/String;

    .prologue
    .line 1254
    const/4 v1, 0x0

    .line 1255
    .local v1, "mode":I
    iget-object v3, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    const-string v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1257
    .local v2, "mySharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1259
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "selectedFont"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1261
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1262
    return-void
.end method

.method public writeFontSizePreference(F)V
    .locals 6
    .param p1, "fontFloatSize"    # F

    .prologue
    .line 1322
    move v1, p1

    .line 1323
    .local v1, "fontScale":F
    :try_start_0
    const-string v3, "FontPreview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeFontSizePreference : fontScale : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget-object v3, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v2

    .line 1326
    .local v2, "largeFontScale":F
    iget-boolean v3, p0, Lcom/android/settings/FontPreview;->mIsFont11Level:Z

    if-eqz v3, :cond_0

    .line 1327
    iget-object v3, p0, Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v2

    .line 1330
    :cond_0
    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    .line 1331
    move v1, v2

    .line 1333
    :cond_1
    iget-object v3, p0, Lcom/android/settings/FontPreview;->mCurConfig:Landroid/content/res/Configuration;

    iput v1, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 1334
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/FontPreview;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1338
    .end local v2    # "largeFontScale":F
    :goto_0
    return-void

    .line 1335
    :catch_0
    move-exception v0

    .line 1336
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "FontPreview"

    const-string v4, "Unable to save font size"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
