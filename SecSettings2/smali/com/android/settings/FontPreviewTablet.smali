.class public Lcom/android/settings/FontPreviewTablet;
.super Lcom/android/internal/app/AlertActivity;
.source "FontPreviewTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/FontPreviewTablet$LoadListTask;
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

.field private mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

.field private mFontStyleListView:Landroid/widget/ListView;

.field private mFontSwitch:Landroid/widget/Switch;

.field private mHugeString:Ljava/lang/String;

.field private mIsAccessibilitySettingsVision:Z

.field private mIsChangedFontSizeSeekBar:Z

.field private mIsFont11Level:Z

.field private mIsFontLargerOn:Z

.field mIsSelectedCurrentThemeFont:Z

.field private mLoadListTask:Lcom/android/settings/FontPreviewTablet$LoadListTask;

.field private mMaxTextView:Landroid/widget/TextSwitcher;

.field private mMinTextView:Landroid/widget/TextView;

.field private mPackageName:Ljava/lang/String;

.field private mPreviousFont:I

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

    .line 91
    sput-boolean v3, Lcom/android/settings/FontPreviewTablet;->DEBUG:Z

    .line 110
    sput v4, Lcom/android/settings/FontPreviewTablet;->DUAL_COLOR_FOR_ELEVENLEVEL_FONT_VALUE:I

    .line 151
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

    sput-object v0, Lcom/android/settings/FontPreviewTablet;->apkNameList:[Ljava/lang/String;

    .line 933
    sput-boolean v3, Lcom/android/settings/FontPreviewTablet;->REBOOT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 94
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/FontPreviewTablet;->mExtraLargeFontIndex:I

    .line 95
    iput v2, p0, Lcom/android/settings/FontPreviewTablet;->mPreviousFont:I

    .line 96
    iput v2, p0, Lcom/android/settings/FontPreviewTablet;->mSavedClickedItem:I

    .line 98
    iput v2, p0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    .line 102
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mCurConfig:Landroid/content/res/Configuration;

    .line 169
    iput-boolean v1, p0, Lcom/android/settings/FontPreviewTablet;->mDefaultUseHelvetica:Z

    .line 170
    iput-boolean v1, p0, Lcom/android/settings/FontPreviewTablet;->mIsAccessibilitySettingsVision:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/settings/FontPreviewTablet;->mIsChangedFontSizeSeekBar:Z

    .line 173
    iput-boolean v1, p0, Lcom/android/settings/FontPreviewTablet;->mIsFontLargerOn:Z

    .line 174
    iput-boolean v1, p0, Lcom/android/settings/FontPreviewTablet;->isCheckPlatformSignatures:Z

    .line 175
    iput-boolean v1, p0, Lcom/android/settings/FontPreviewTablet;->isCheckReleaseSignatures:Z

    .line 176
    iput-boolean v1, p0, Lcom/android/settings/FontPreviewTablet;->isClickSwitch:Z

    .line 178
    iput-boolean v1, p0, Lcom/android/settings/FontPreviewTablet;->mIsSelectedCurrentThemeFont:Z

    .line 1336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mLoadListTask:Lcom/android/settings/FontPreviewTablet$LoadListTask;

    .line 1337
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FontPreviewTablet;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/FontPreviewTablet;
    .param p1, "x1"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/FontPreviewTablet;->changeFontSizeFromSeekBar(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/FontPreviewTablet;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FontPreviewTablet;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mSavedInstanceState:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/FontPreviewTablet;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/FontPreviewTablet;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/settings/FontPreviewTablet;->mIsChangedFontSizeSeekBar:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/FontPreviewTablet;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/FontPreviewTablet;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/FontPreviewTablet;->setFontStyleList(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/FontPreviewTablet;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FontPreviewTablet;

    .prologue
    .line 81
    iget v0, p0, Lcom/android/settings/FontPreviewTablet;->mExtraLargeFontIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/FontPreviewTablet;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FontPreviewTablet;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mShowForHugeFontTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/FontPreviewTablet;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FontPreviewTablet;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/FontPreviewTablet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/FontPreviewTablet;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings/FontPreviewTablet;->doneFontPreview()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/FontPreviewTablet;)Lcom/android/settings/flipfont/FontListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FontPreviewTablet;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/FontPreviewTablet;Lcom/android/settings/flipfont/FontListAdapter;)Lcom/android/settings/flipfont/FontListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/FontPreviewTablet;
    .param p1, "x1"    # Lcom/android/settings/flipfont/FontListAdapter;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/FontPreviewTablet;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FontPreviewTablet;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/FontPreviewTablet;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FontPreviewTablet;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings/FontPreviewTablet;->getFontNameFromSystem()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private changeFontSizeFromSeekBar(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    const/4 v3, 0x1

    .line 505
    const/high16 v0, 0x3f800000    # 1.0f

    .line 506
    .local v0, "fontsize":F
    iget-object v1, p0, Lcom/android/settings/FontPreviewTablet;->floatRevisedValueList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/FontPreviewTablet;->floatRevisedValueList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 507
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 511
    :goto_0
    iget-object v1, p0, Lcom/android/settings/FontPreviewTablet;->mChangingSizeText:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 512
    sput p1, Lcom/android/settings/FontPreviewTablet;->mSelectedFontSizeSeekBarProgress:I

    .line 513
    iput v0, p0, Lcom/android/settings/FontPreviewTablet;->mFontFloatSize:F

    .line 514
    return-void

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/android/settings/FontPreviewTablet;->floatRevisedValueList:Ljava/util/ArrayList;

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

    .line 1475
    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    .line 1476
    .local v0, "EMPTY":[[I
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private copyFileWithCR(Lcom/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "fontWriter"    # Lcom/android/settings/flipfont/FontWriter;
    .param p2, "dir"    # Ljava/io/File;
    .param p3, "sPackageName"    # Ljava/lang/String;
    .param p4, "sFileIn"    # Ljava/lang/String;
    .param p5, "sFileOut"    # Ljava/lang/String;

    .prologue
    .line 1165
    const/4 v0, 0x0

    .line 1166
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 1169
    .local v2, "err_filecopy":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1175
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

    .line 1176
    .local v4, "uriFont":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 1179
    .local v3, "isFont":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 1186
    invoke-virtual {p1, p2, v3, p5}, Lcom/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v2

    .line 1189
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    move v5, v2

    .line 1193
    .end local v3    # "isFont":Ljava/io/InputStream;
    .end local v4    # "uriFont":Landroid/net/Uri;
    :goto_1
    return v5

    .line 1170
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move v5, v2

    .line 1171
    goto :goto_1

    .line 1180
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "isFont":Ljava/io/InputStream;
    .restart local v4    # "uriFont":Landroid/net/Uri;
    :catch_1
    move-exception v1

    .line 1182
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_1

    .line 1190
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    goto :goto_0
.end method

.method private doneFontPreview()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 790
    iget-boolean v0, p0, Lcom/android/settings/FontPreviewTablet;->mIsAccessibilitySettingsVision:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/FontPreviewTablet;->mIsFont11Level:Z

    if-eqz v0, :cond_0

    .line 791
    invoke-virtual {p0}, Lcom/android/settings/FontPreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessiblity_font_switch"

    iget-boolean v0, p0, Lcom/android/settings/FontPreviewTablet;->mIsFontLargerOn:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 795
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/FontPreviewTablet;->mIsChangedFontSizeSeekBar:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    iget v2, p0, Lcom/android/settings/FontPreviewTablet;->mPreviousFont:I

    if-eq v0, v2, :cond_5

    :cond_1
    sget v0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontSizeSeekBarProgress:I

    iget v2, p0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontSize:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    iget v2, p0, Lcom/android/settings/FontPreviewTablet;->mPreviousFont:I

    if-eq v0, v2, :cond_5

    :cond_2
    sget v0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontSizeSeekBarProgress:I

    if-gez v0, :cond_3

    iget v0, p0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    if-ltz v0, :cond_5

    :cond_3
    sget v0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontSizeSeekBarProgress:I

    iget v2, p0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontSize:I

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    if-ltz v0, :cond_5

    :cond_4
    sget v0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontSizeSeekBarProgress:I

    if-gez v0, :cond_7

    iget v0, p0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    iget v2, p0, Lcom/android/settings/FontPreviewTablet;->mPreviousFont:I

    if-ne v0, v2, :cond_7

    .line 797
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/FontPreviewTablet;->finish()V

    .line 812
    :goto_1
    return-void

    .line 791
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 801
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/FontPreviewTablet;->mIsChangedFontSizeSeekBar:Z

    if-ne v0, v1, :cond_9

    sget v0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontSizeSeekBarProgress:I

    if-ltz v0, :cond_9

    sget v0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontSizeSeekBarProgress:I

    iget v2, p0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontSize:I

    if-eq v0, v2, :cond_9

    iget v0, p0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    iget v2, p0, Lcom/android/settings/FontPreviewTablet;->mPreviousFont:I

    if-eq v0, v2, :cond_8

    iget v0, p0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    if-gez v0, :cond_9

    .line 803
    :cond_8
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/FontPreviewTablet;->doneFontStyleOrFontSize(I)V

    goto :goto_1

    .line 804
    :cond_9
    iget v0, p0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    if-ltz v0, :cond_b

    iget v0, p0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    iget v2, p0, Lcom/android/settings/FontPreviewTablet;->mPreviousFont:I

    if-eq v0, v2, :cond_b

    iget-boolean v0, p0, Lcom/android/settings/FontPreviewTablet;->mIsChangedFontSizeSeekBar:Z

    if-eqz v0, :cond_a

    sget v0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontSizeSeekBarProgress:I

    if-ltz v0, :cond_a

    sget v0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontSizeSeekBarProgress:I

    iget v2, p0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontSize:I

    if-ne v0, v2, :cond_b

    .line 806
    :cond_a
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/settings/FontPreviewTablet;->doneFontStyleOrFontSize(I)V

    goto :goto_1

    .line 807
    :cond_b
    iget-boolean v0, p0, Lcom/android/settings/FontPreviewTablet;->mIsChangedFontSizeSeekBar:Z

    if-ne v0, v1, :cond_c

    sget v0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontSizeSeekBarProgress:I

    if-ltz v0, :cond_c

    sget v0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontSizeSeekBarProgress:I

    iget v2, p0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontSize:I

    if-eq v0, v2, :cond_c

    iget v0, p0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    if-ltz v0, :cond_c

    iget v0, p0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    iget v2, p0, Lcom/android/settings/FontPreviewTablet;->mPreviousFont:I

    if-eq v0, v2, :cond_c

    .line 808
    invoke-direct {p0, v1}, Lcom/android/settings/FontPreviewTablet;->doneFontStyleOrFontSize(I)V

    goto :goto_1

    .line 810
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/FontPreviewTablet;->finish()V

    goto :goto_1
.end method

.method private doneFontSize()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 873
    sget v0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontSizeSeekBarProgress:I

    .line 874
    .local v0, "fontIndex":I
    iget-object v3, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_size"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 875
    .local v2, "previousIndex":I
    const-string v3, "FontPreviewTablet"

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

    .line 877
    iget-object v3, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_size"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 879
    iget-boolean v3, p0, Lcom/android/settings/FontPreviewTablet;->mIsFont11Level:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/settings/FontPreviewTablet;->mExtraLargeFontIndex:I

    if-le v0, v3, :cond_0

    .line 880
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 881
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "large_font"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 882
    const-string v3, "FontPreviewTablet"

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

    .line 883
    iget-object v3, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 895
    :goto_0
    return-void

    .line 884
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    iget v3, p0, Lcom/android/settings/FontPreviewTablet;->mExtraLargeFontIndex:I

    if-gt v2, v3, :cond_1

    iget v3, p0, Lcom/android/settings/FontPreviewTablet;->mExtraLargeFontIndex:I

    if-le v0, v3, :cond_1

    .line 885
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 886
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v3, "large_font"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 887
    iget-object v3, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 888
    const-string v3, "FontPreviewTablet"

    const-string v4, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 890
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 891
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v3, "large_font"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 892
    iget-object v3, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 893
    const-string v3, "FontPreviewTablet"

    const-string v4, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doneFontStyleOrFontSize(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 848
    packed-switch p1, :pswitch_data_0

    .line 870
    :goto_0
    return-void

    .line 850
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/FontPreviewTablet;->doneFontSize()V

    .line 851
    invoke-virtual {p0}, Lcom/android/settings/FontPreviewTablet;->savePreferences()V

    .line 852
    invoke-virtual {p0}, Lcom/android/settings/FontPreviewTablet;->onOkButtonPressed()Z

    .line 854
    iget v0, p0, Lcom/android/settings/FontPreviewTablet;->mFontFloatSize:F

    invoke-virtual {p0, v0}, Lcom/android/settings/FontPreviewTablet;->writeFontSizePreference(F)V

    .line 855
    invoke-virtual {p0}, Lcom/android/settings/FontPreviewTablet;->readFontSizePreference()V

    .line 856
    invoke-virtual {p0}, Lcom/android/settings/FontPreviewTablet;->finish()V

    goto :goto_0

    .line 859
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/FontPreviewTablet;->doneFontSize()V

    .line 860
    iget v0, p0, Lcom/android/settings/FontPreviewTablet;->mFontFloatSize:F

    invoke-virtual {p0, v0}, Lcom/android/settings/FontPreviewTablet;->writeFontSizePreference(F)V

    .line 861
    invoke-virtual {p0}, Lcom/android/settings/FontPreviewTablet;->readFontSizePreference()V

    .line 862
    invoke-virtual {p0}, Lcom/android/settings/FontPreviewTablet;->finish()V

    goto :goto_0

    .line 865
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/FontPreviewTablet;->savePreferences()V

    .line 866
    invoke-virtual {p0}, Lcom/android/settings/FontPreviewTablet;->onOkButtonPressed()Z

    .line 867
    invoke-virtual {p0}, Lcom/android/settings/FontPreviewTablet;->finish()V

    goto :goto_0

    .line 848
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
    .line 1452
    iget-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "font_size"

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1454
    .local v0, "mSelectedFontSize":I
    const/4 v1, 0x0

    .line 1455
    .local v1, "mode":I
    iget-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string v6, "prefs"

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1457
    .local v2, "mySharedPreference":Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 1458
    .local v3, "selectedFont":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1459
    .local v4, "temp":[Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1460
    if-eqz v4, :cond_0

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-lez v5, :cond_0

    .line 1461
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v3, v4, v5

    .line 1466
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

    .line 1467
    :cond_1
    iget-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e1130

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .end local v3    # "selectedFont":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1471
    .restart local v3    # "selectedFont":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1469
    :cond_2
    iget-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/android/settings/Utils;->getFontName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private setAccessiblityFontSizeView(Z)V
    .locals 7
    .param p1, "isFont11Level"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 337
    if-eqz p1, :cond_0

    .line 338
    const v2, 0x7f0d02d2

    invoke-virtual {p0, v2}, Lcom/android/settings/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 339
    .local v0, "layoutLinearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 340
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    const v2, 0x7f0d02d4

    invoke-virtual {p0, v2}, Lcom/android/settings/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 343
    .local v1, "switchDividerView":Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 345
    const v2, 0x7f0d02d3

    invoke-virtual {p0, v2}, Lcom/android/settings/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/android/settings/FontPreviewTablet;->mFontSwitch:Landroid/widget/Switch;

    .line 346
    iget-object v2, p0, Lcom/android/settings/FontPreviewTablet;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 347
    iget-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mFontSwitch:Landroid/widget/Switch;

    iget v2, p0, Lcom/android/settings/FontPreviewTablet;->mAccessFontOnOff:I

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 349
    iget-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mShowForHugeFontTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0e14f4

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget v2, p0, Lcom/android/settings/FontPreviewTablet;->mAccessFontOnOff:I

    if-eqz v2, :cond_2

    :goto_1
    invoke-direct {p0, v3, v4}, Lcom/android/settings/FontPreviewTablet;->setDim(ZZ)V

    .line 352
    .end local v0    # "layoutLinearLayout":Landroid/widget/LinearLayout;
    .end local v1    # "switchDividerView":Landroid/view/View;
    :cond_0
    return-void

    .restart local v0    # "layoutLinearLayout":Landroid/widget/LinearLayout;
    .restart local v1    # "switchDividerView":Landroid/view/View;
    :cond_1
    move v2, v4

    .line 347
    goto :goto_0

    :cond_2
    move v3, v4

    .line 350
    goto :goto_1
.end method

.method private setDim(ZZ)V
    .locals 3
    .param p1, "isChecked"    # Z
    .param p2, "isPressed"    # Z

    .prologue
    const v2, 0x7f0a011d

    .line 355
    if-eqz p1, :cond_5

    .line 356
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mMaxTextView:Landroid/widget/TextSwitcher;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mMaxTextView:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lcom/android/settings/FontPreviewTablet;->mExtraHugeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/settings/IntervalSeekBar;->setMax(I)V

    .line 360
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    const v1, 0x7f020334

    invoke-virtual {v0, v1}, Lcom/android/settings/IntervalSeekBar;->setDrawable(I)V

    .line 362
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    iget-object v1, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/IntervalSeekBar;->setOverlapBackgroundForDualColor(I)V

    .line 363
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    sget v1, Lcom/android/settings/FontPreviewTablet;->DUAL_COLOR_FOR_ELEVENLEVEL_FONT_VALUE:I

    invoke-virtual {v0, v1}, Lcom/android/settings/IntervalSeekBar;->setOverlapPointForDualColor(I)V

    .line 376
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/FontPreviewTablet;->isClickSwitch:Z

    if-eqz v0, :cond_3

    .line 377
    :cond_2
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    if-eqz v0, :cond_3

    .line 378
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/IntervalSeekBar;->animationStart(Z)V

    .line 380
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/FontPreviewTablet;->isClickSwitch:Z

    .line 382
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    if-eqz v0, :cond_4

    .line 383
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    invoke-virtual {v0}, Lcom/android/settings/IntervalSeekBar;->invalidate()V

    .line 385
    :cond_4
    return-void

    .line 366
    :cond_5
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mMaxTextView:Landroid/widget/TextSwitcher;

    if-eqz v0, :cond_6

    .line 367
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mMaxTextView:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lcom/android/settings/FontPreviewTablet;->mHugeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 368
    :cond_6
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/settings/IntervalSeekBar;->setMax(I)V

    .line 370
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    const v1, 0x7f020333

    invoke-virtual {v0, v1}, Lcom/android/settings/IntervalSeekBar;->setDrawable(I)V

    .line 372
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    iget-object v1, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/IntervalSeekBar;->setOverlapBackgroundForDualColor(I)V

    .line 373
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/IntervalSeekBar;->setOverlapPointForDualColor(I)V

    goto :goto_0
.end method

.method private setFontStyleList(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 403
    iput-object p1, p0, Lcom/android/settings/FontPreviewTablet;->mSavedInstanceState:Landroid/os/Bundle;

    .line 404
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 407
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListAdapter;->isCurrentThemeFontInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListAdapter;->isCurrentThemeFontSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iput-boolean v4, p0, Lcom/android/settings/FontPreviewTablet;->mIsSelectedCurrentThemeFont:Z

    .line 413
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListAdapter;->getThemeFontCurrentPath()Ljava/lang/String;

    move-result-object v6

    .line 414
    .local v6, "currentThemeFontPath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 416
    .local v8, "f":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/FontPreviewTablet;->themeFontTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    .end local v6    # "currentThemeFontPath":Ljava/lang/String;
    .end local v8    # "f":Ljava/io/File;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/FontPreviewTablet;->setReHeightFontStyleListview()V

    .line 443
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 445
    invoke-virtual {p0}, Lcom/android/settings/FontPreviewTablet;->loadPreferences()V

    .line 447
    invoke-direct {p0}, Lcom/android/settings/FontPreviewTablet;->setSelectedFontStyle()V

    .line 448
    if-eqz p1, :cond_2

    .line 449
    const-string v0, "USER_SELECTED_FONT_STYLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 451
    .local v3, "userSelectedStyleIndex":I
    const/4 v0, -0x1

    if-le v3, v0, :cond_2

    .line 452
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 453
    const-wide/16 v4, 0x1

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/FontPreviewTablet;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 456
    .end local v3    # "userSelectedStyleIndex":I
    :cond_2
    return-void

    .line 419
    :catch_0
    move-exception v7

    .line 420
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setFontsizeLayoutSevenOrEleven(Z)V
    .locals 9
    .param p1, "isFont11Level"    # Z

    .prologue
    const/4 v6, 0x0

    const v8, 0x7f0d02da

    const v7, 0x7f0d02d9

    .line 274
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/settings/FontPreviewTablet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 275
    .local v2, "inflater":Landroid/view/LayoutInflater;
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 277
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 278
    const v5, 0x7f0400ed

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 279
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 280
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 281
    const v5, 0x7f0e01ba

    invoke-virtual {p0, v5}, Lcom/android/settings/FontPreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 282
    const v5, 0x7f0e0826

    invoke-virtual {p0, v5}, Lcom/android/settings/FontPreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/FontPreviewTablet;->setupAlert()V

    .line 285
    invoke-virtual {p0, v8}, Lcom/android/settings/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mShowForHugeFontTextView:Landroid/widget/TextView;

    .line 286
    invoke-virtual {p0, v7}, Lcom/android/settings/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/settings/IntervalSeekBar;

    iput-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    .line 288
    iget-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a011e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/FontPreviewTablet;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 289
    .local v4, "tint_list":Landroid/content/res/ColorStateList;
    iget-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    invoke-virtual {v5, v4}, Lcom/android/settings/IntervalSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 290
    iget-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    sget v6, Lcom/android/settings/FontPreviewTablet;->DUAL_COLOR_FOR_ELEVENLEVEL_FONT_VALUE:I

    invoke-virtual {v5, v6}, Lcom/android/settings/IntervalSeekBar;->setOverlapPointForDualColor(I)V

    .line 291
    const v5, 0x7f0d02d6

    invoke-virtual {p0, v5}, Lcom/android/settings/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mChangingSizeText:Landroid/widget/TextView;

    .line 293
    const v5, 0x7f0d02d8

    invoke-virtual {p0, v5}, Lcom/android/settings/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextSwitcher;

    iput-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mMaxTextView:Landroid/widget/TextSwitcher;

    .line 294
    iget-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mMaxTextView:Landroid/widget/TextSwitcher;

    new-instance v6, Lcom/android/settings/FontPreviewTablet$2;

    invoke-direct {v6, p0}, Lcom/android/settings/FontPreviewTablet$2;-><init>(Lcom/android/settings/FontPreviewTablet;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 306
    const/high16 v5, 0x10a0000

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 307
    .local v1, "in":Landroid/view/animation/Animation;
    const v5, 0x10a0001

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 308
    .local v3, "out":Landroid/view/animation/Animation;
    iget-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mMaxTextView:Landroid/widget/TextSwitcher;

    invoke-virtual {v5, v1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 309
    iget-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mMaxTextView:Landroid/widget/TextSwitcher;

    invoke-virtual {v5, v3}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 311
    if-eqz p1, :cond_2

    .line 312
    const v5, 0x7f0d02d7

    invoke-virtual {p0, v5}, Lcom/android/settings/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mMinTextView:Landroid/widget/TextView;

    .line 313
    iget-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e09a6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mHugeString:Ljava/lang/String;

    .line 314
    iget-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e09ac

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mExtraHugeString:Ljava/lang/String;

    .line 315
    iget-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/settings/IntervalSeekBar;->setOverlapPointForDualColor(I)V

    .line 317
    iget v5, p0, Lcom/android/settings/FontPreviewTablet;->mAccessFontOnOff:I

    if-nez v5, :cond_1

    .line 318
    iget-object v6, p0, Lcom/android/settings/FontPreviewTablet;->mShowForHugeFontTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0e14f2

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/android/settings/IntervalSeekBar;->setMax(I)V

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v6, p0, Lcom/android/settings/FontPreviewTablet;->mShowForHugeFontTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0e14f3

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lcom/android/settings/IntervalSeekBar;->setMax(I)V

    .line 323
    iget-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mMaxTextView:Landroid/widget/TextSwitcher;

    iget-object v6, p0, Lcom/android/settings/FontPreviewTablet;->mExtraHugeString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-boolean v5, p0, Lcom/android/settings/FontPreviewTablet;->mIsAccessibilitySettingsVision:Z

    if-nez v5, :cond_0

    .line 326
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/settings/FontPreviewTablet;->setDim(ZZ)V

    goto :goto_0

    .line 330
    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/settings/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mShowForHugeFontTextView:Landroid/widget/TextView;

    .line 331
    invoke-virtual {p0, v7}, Lcom/android/settings/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/settings/IntervalSeekBar;

    iput-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    .line 332
    iget-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    iget-object v6, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    const v7, 0x7f02029c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/IntervalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setReHeightFontStyleListview()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 459
    iget-object v6, p0, Lcom/android/settings/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 460
    iget-object v6, p0, Lcom/android/settings/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 461
    .local v0, "adapterCount":I
    const/4 v5, 0x0

    .line 462
    .local v5, "totalHeight":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 463
    iget-object v6, p0, Lcom/android/settings/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/settings/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-interface {v6, v1, v7, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 464
    .local v2, "listItem":Landroid/view/View;
    invoke-virtual {v2, v9, v9}, Landroid/view/View;->measure(II)V

    .line 465
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 468
    .end local v2    # "listItem":Landroid/view/View;
    :cond_0
    iget-object v6, p0, Lcom/android/settings/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 469
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcom/android/settings/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v6

    add-int/lit8 v7, v0, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v6, v5

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 470
    iget-object v6, p0, Lcom/android/settings/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    iget-object v6, p0, Lcom/android/settings/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->requestLayout()V

    .line 473
    const v6, 0x7f0d02ce

    invoke-virtual {p0, v6}, Lcom/android/settings/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    .line 474
    .local v4, "scrollView":Landroid/widget/ScrollView;
    new-instance v6, Lcom/android/settings/FontPreviewTablet$3;

    invoke-direct {v6, p0, v4}, Lcom/android/settings/FontPreviewTablet$3;-><init>(Lcom/android/settings/FontPreviewTablet;Landroid/widget/ScrollView;)V

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 481
    .end local v0    # "adapterCount":I
    .end local v1    # "i":I
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "scrollView":Landroid/widget/ScrollView;
    .end local v5    # "totalHeight":I
    :cond_1
    return-void
.end method

.method private setSelectedFontStyle()V
    .locals 5

    .prologue
    .line 729
    iget-object v2, p0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v2, :cond_0

    .line 779
    :goto_0
    return-void

    .line 733
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/FontPreviewTablet;->mIsSelectedCurrentThemeFont:Z

    if-eqz v2, :cond_2

    .line 734
    iget-object v2, p0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/android/settings/flipfont/FontListAdapter;->getCurrentThemeFontIndex()I

    move-result v2

    iput v2, p0, Lcom/android/settings/FontPreviewTablet;->mPreviousFont:I

    .line 778
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/settings/FontPreviewTablet;->mPreviousFont:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 736
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/FontPreviewTablet;->getSavedSelectedFontStringPreference()Ljava/lang/String;

    move-result-object v1

    .line 738
    .local v1, "selectedFont":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 739
    iget-object v2, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e1121

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 744
    .local v0, "okButton":Ljava/lang/String;
    :goto_2
    const-string v2, "FontPreviewTablet"

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

    .line 745
    const-string v2, "FontPreviewTablet"

    const-string v3, "onPrepareDialogBuilder : KEY_PREFERENCE : MONOTYPE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const-string v2, "MONOTYPE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 750
    const-string v2, "FontPreviewTablet"

    const-string v3, "onPrepareDialogBuilder : selectedFont == KEY_PREFERENCE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-boolean v2, p0, Lcom/android/settings/FontPreviewTablet;->mDefaultUseHelvetica:Z

    if-eqz v2, :cond_4

    .line 753
    const-string v1, "HelveticaNeueRegular.xml"

    .line 754
    iget-object v2, p0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/FontPreviewTablet;->mPreviousFont:I

    .line 755
    const-string v2, "FontPreviewTablet"

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

    .line 756
    const-string v2, "FontPreviewTablet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Helvetica index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/FontPreviewTablet;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :goto_3
    iget v2, p0, Lcom/android/settings/FontPreviewTablet;->mPreviousFont:I

    if-gez v2, :cond_1

    .line 772
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/FontPreviewTablet;->mPreviousFont:I

    goto/16 :goto_1

    .line 741
    .end local v0    # "okButton":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e1122

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0    # "okButton":Ljava/lang/String;
    goto/16 :goto_2

    .line 759
    :cond_4
    const-string v1, "default"

    .line 760
    iget-object v2, p0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/FontPreviewTablet;->mPreviousFont:I

    .line 761
    const-string v2, "FontPreviewTablet"

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

    .line 762
    const-string v2, "FontPreviewTablet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Android DroidSans index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/FontPreviewTablet;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 765
    :cond_5
    const-string v2, "FontPreviewTablet"

    const-string v3, "onPrepareDialogBuilder : selectedFont != KEY_PREFERENCE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v2, p0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/FontPreviewTablet;->mPreviousFont:I

    .line 767
    const-string v2, "FontPreviewTablet"

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

    .line 768
    const-string v2, "FontPreviewTablet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : selectedFont index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/FontPreviewTablet;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private update7StepFontsizeList()V
    .locals 7

    .prologue
    .line 486
    iget-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 488
    .local v2, "res":Landroid/content/res/Resources;
    const v5, 0x7f11000c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "fontSizeNames":[Ljava/lang/String;
    iput-object v0, p0, Lcom/android/settings/FontPreviewTablet;->fontSizeStrings:[Ljava/lang/String;

    .line 492
    iget-object v5, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f11000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 494
    .local v4, "values":[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 495
    .local v3, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/settings/FontPreviewTablet;->floatRevisedValueList:Ljava/util/ArrayList;

    .line 497
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 498
    aget-object v5, v4, v1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    iget-object v5, p0, Lcom/android/settings/FontPreviewTablet;->floatRevisedValueList:Ljava/util/ArrayList;

    aget-object v6, v4, v1

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 501
    :cond_0
    iput-object v3, p0, Lcom/android/settings/FontPreviewTablet;->charSeqRevisedValues:Ljava/util/ArrayList;

    .line 502
    return-void
.end method


# virtual methods
.method protected badFontDialog(Ljava/lang/String;)V
    .locals 5
    .param p1, "apkName"    # Ljava/lang/String;

    .prologue
    .line 1283
    move-object v1, p1

    .line 1285
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

    new-instance v4, Lcom/android/settings/FontPreviewTablet$8;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/FontPreviewTablet$8;-><init>(Lcom/android/settings/FontPreviewTablet;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/settings/FontPreviewTablet$7;

    invoke-direct {v4, p0}, Lcom/android/settings/FontPreviewTablet$7;-><init>(Lcom/android/settings/FontPreviewTablet;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1318
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/settings/FontPreviewTablet$9;

    invoke-direct {v2, p0}, Lcom/android/settings/FontPreviewTablet$9;-><init>(Lcom/android/settings/FontPreviewTablet;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1327
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1328
    return-void
.end method

.method protected checkFont(Ljava/lang/String;)Z
    .locals 17
    .param p1, "apkname"    # Ljava/lang/String;

    .prologue
    .line 616
    sget-boolean v14, Lcom/android/settings/FontPreviewTablet;->DEBUG:Z

    if-eqz v14, :cond_0

    .line 617
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

    .line 620
    :cond_0
    const-string v14, "com.monotype.android.font.foundation"

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 621
    const/4 v14, 0x0

    .line 716
    :goto_0
    return v14

    .line 625
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 626
    .local v12, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    sget-object v14, Lcom/android/settings/FontPreviewTablet;->apkNameList:[Ljava/lang/String;

    array-length v14, v14

    if-ge v7, v14, :cond_5

    .line 627
    if-eqz p1, :cond_4

    sget-object v14, Lcom/android/settings/FontPreviewTablet;->apkNameList:[Ljava/lang/String;

    aget-object v14, v14, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 628
    const-string v14, "android"

    sget-object v15, Lcom/android/settings/FontPreviewTablet;->apkNameList:[Ljava/lang/String;

    aget-object v15, v15, v7

    invoke-virtual {v12, v14, v15}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_3

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/FontPreviewTablet;->isCheckPlatformSignatures:Z

    .line 629
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    sget-object v15, Lcom/android/settings/FontPreviewTablet;->apkNameList:[Ljava/lang/String;

    aget-object v15, v15, v7

    invoke-static {v14, v15}, Lcom/android/settings/Utils;->isSignatureMatch(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/FontPreviewTablet;->isCheckReleaseSignatures:Z

    .line 630
    const-string v14, "FontPreviewTablet"

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

    iget-boolean v0, v0, Lcom/android/settings/FontPreviewTablet;->isCheckPlatformSignatures:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", isCheckReleaseSignatures : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/FontPreviewTablet;->isCheckReleaseSignatures:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/FontPreviewTablet;->isCheckPlatformSignatures:Z

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/FontPreviewTablet;->isCheckReleaseSignatures:Z

    if-nez v14, :cond_2

    const-string v14, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 632
    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 628
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 626
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 637
    :cond_5
    sget-boolean v14, Lcom/android/settings/FontPreviewTablet;->DEBUG:Z

    if-eqz v14, :cond_6

    .line 638
    const-string v14, "FlipFont"

    const-string v15, "checkFont - check if valid certificate"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_6
    const/4 v11, 0x0

    .line 644
    .local v11, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v14, v14, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v15, 0x40

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v11

    .line 648
    :goto_3
    if-eqz v11, :cond_c

    .line 649
    iget-object v13, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 651
    .local v13, "signatures":[Landroid/content/pm/Signature;
    const/4 v14, 0x0

    aget-object v14, v13, v14

    invoke-virtual {v14}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    .line 653
    .local v2, "cert":[B
    :try_start_1
    const-string v14, "SHA"

    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    .line 654
    .local v10, "md":Ljava/security/MessageDigest;
    const/4 v14, 0x0

    aget-object v14, v13, v14

    invoke-virtual {v14}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/security/MessageDigest;->update([B)V

    .line 655
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 656
    .local v5, "currentSignature":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 659
    const-string v14, "T84drf8v3ZMOLvt2SFG/K7ODXgI="

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 660
    sget-boolean v14, Lcom/android/settings/FontPreviewTablet;->DEBUG:Z

    if-eqz v14, :cond_7

    .line 661
    const-string v14, "FlipFont"

    const-string v15, "**Signature is correct**"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 664
    :cond_8
    sget-boolean v14, Lcom/android/settings/FontPreviewTablet;->DEBUG:Z

    if-eqz v14, :cond_9

    .line 665
    const-string v14, "FlipFont"

    const-string v15, "**Signature is incorrect**"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 666
    :cond_9
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 668
    .end local v5    # "currentSignature":Ljava/lang/String;
    .end local v10    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v6

    .line 669
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 672
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 673
    .local v8, "input":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 676
    .local v4, "cf":Ljava/security/cert/CertificateFactory;
    :try_start_2
    const-string v14, "X509"

    invoke-static {v14}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    .line 682
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_4
    const/4 v1, 0x0

    .line 685
    .local v1, "c":Ljava/security/cert/X509Certificate;
    :try_start_3
    invoke-virtual {v4, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v1, v0
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 691
    :goto_5
    sget-boolean v14, Lcom/android/settings/FontPreviewTablet;->DEBUG:Z

    if-eqz v14, :cond_a

    .line 692
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

    .line 693
    if-eqz v1, :cond_a

    .line 694
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

    .line 695
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

    .line 696
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

    .line 697
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

    .line 698
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

    .line 703
    :cond_a
    const-string v3, "CN=Ed Platz, OU=Display Imaging, O=Monotype Imanging Inc., L=Woburn, ST=MA, C=US"

    .line 705
    .local v3, "certIssuedByString":Ljava/lang/String;
    if-eqz v1, :cond_c

    .line 706
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v14

    invoke-interface {v14}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v9

    .line 708
    .local v9, "issuderDNString":Ljava/lang/String;
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 709
    sget-boolean v14, Lcom/android/settings/FontPreviewTablet;->DEBUG:Z

    if-eqz v14, :cond_b

    .line 710
    const-string v14, "FlipFont"

    const-string v15, "**Certificate data is correct**"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 677
    .end local v1    # "c":Ljava/security/cert/X509Certificate;
    .end local v3    # "certIssuedByString":Ljava/lang/String;
    .end local v9    # "issuderDNString":Ljava/lang/String;
    .restart local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 679
    .local v6, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v6}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto/16 :goto_4

    .line 686
    .end local v6    # "e":Ljava/security/cert/CertificateException;
    .restart local v1    # "c":Ljava/security/cert/X509Certificate;
    :catch_2
    move-exception v6

    .line 688
    .restart local v6    # "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v6}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto/16 :goto_5

    .line 716
    .end local v1    # "c":Ljava/security/cert/X509Certificate;
    .end local v2    # "cert":[B
    .end local v4    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v6    # "e":Ljava/security/cert/CertificateException;
    .end local v8    # "input":Ljava/io/InputStream;
    .end local v13    # "signatures":[Landroid/content/pm/Signature;
    :cond_c
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 645
    :catch_3
    move-exception v14

    goto/16 :goto_3
.end method

.method protected errorDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1197
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1199
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-nez p1, :cond_0

    .line 1216
    :goto_0
    return-void

    .line 1204
    :cond_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1206
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1208
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1210
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/FontPreviewTablet$6;

    invoke-direct {v2, p0}, Lcom/android/settings/FontPreviewTablet$6;-><init>(Lcom/android/settings/FontPreviewTablet;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1215
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public getSavedSelectedFontStringPreference()Ljava/lang/String;
    .locals 4

    .prologue
    .line 783
    const/4 v0, 0x0

    .line 784
    .local v0, "mode":I
    iget-object v2, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string v3, "prefs"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 786
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

    .line 899
    const/4 v2, 0x0

    .line 900
    .local v2, "mode":I
    iget-object v4, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string v5, "prefs"

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 903
    .local v3, "mySharedPreference":Landroid/content/SharedPreferences;
    const-string v4, "SavedClickedItem"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/FontPreviewTablet;->mSavedClickedItem:I

    .line 904
    iget v1, p0, Lcom/android/settings/FontPreviewTablet;->mSavedClickedItem:I

    .line 905
    .local v1, "fontIndexPref":I
    iget-object v4, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "flip_font_style"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 907
    .local v0, "fontIndexDB":I
    if-ne v0, v6, :cond_0

    .line 908
    iget-object v4, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "flip_font_style"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 909
    const-string v4, "FontPreviewTablet"

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

    .line 910
    iput v1, p0, Lcom/android/settings/FontPreviewTablet;->mSavedClickedItem:I

    .line 914
    :goto_0
    return-void

    .line 912
    :cond_0
    iput v0, p0, Lcom/android/settings/FontPreviewTablet;->mSavedClickedItem:I

    goto :goto_0
.end method

.method public onCancelButtonPressed()V
    .locals 3

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings/FontPreviewTablet;->mPreviousFont:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 726
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 389
    iget-object v1, p0, Lcom/android/settings/FontPreviewTablet;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isPressed()Z

    move-result v0

    .line 390
    .local v0, "isPressed":Z
    invoke-direct {p0, p2, v0}, Lcom/android/settings/FontPreviewTablet;->setDim(ZZ)V

    .line 391
    iput-boolean p2, p0, Lcom/android/settings/FontPreviewTablet;->mIsFontLargerOn:Z

    .line 392
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1275
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1276
    invoke-direct {p0}, Lcom/android/settings/FontPreviewTablet;->doneFontPreview()V

    .line 1280
    :goto_0
    return-void

    .line 1278
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/FontPreviewTablet;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 396
    iget-object v1, p0, Lcom/android/settings/FontPreviewTablet;->mFontSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    .line 397
    iput-boolean v0, p0, Lcom/android/settings/FontPreviewTablet;->isClickSwitch:Z

    .line 398
    iget-object v1, p0, Lcom/android/settings/FontPreviewTablet;->mFontSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/FontPreviewTablet;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 400
    :cond_0
    return-void

    .line 398
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 182
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 183
    iput-object p1, p0, Lcom/android/settings/FontPreviewTablet;->mSavedInstanceState:Landroid/os/Bundle;

    .line 185
    iput-object p0, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    .line 187
    iget-object v2, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->getFontSize(Landroid/content/Context;)F

    move-result v2

    float-to-int v0, v2

    .line 188
    .local v0, "fontArraySize":I
    const-string v2, "fontArraySize"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fontArraySize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/16 v2, 0xb

    if-ne v0, v2, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/FontPreviewTablet;->mIsFont11Level:Z

    .line 191
    iget-boolean v2, p0, Lcom/android/settings/FontPreviewTablet;->mIsFont11Level:Z

    if-eqz v2, :cond_0

    .line 192
    iput v7, p0, Lcom/android/settings/FontPreviewTablet;->mExtraLargeFontIndex:I

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/FontPreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "accessiblity_font_switch"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/FontPreviewTablet;->mAccessFontOnOff:I

    .line 197
    iget v2, p0, Lcom/android/settings/FontPreviewTablet;->mAccessFontOnOff:I

    if-ne v2, v3, :cond_5

    .line 198
    iput-boolean v3, p0, Lcom/android/settings/FontPreviewTablet;->mIsFontLargerOn:Z

    .line 204
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/FontPreviewTablet;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/FontPreviewTablet;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "isAccessibilitySettingsVision"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/FontPreviewTablet;->mIsAccessibilitySettingsVision:Z

    .line 206
    iget-boolean v2, p0, Lcom/android/settings/FontPreviewTablet;->mIsAccessibilitySettingsVision:Z

    if-eqz v2, :cond_1

    .line 207
    const v2, 0x7f0e0601

    invoke-virtual {p0, v2}, Lcom/android/settings/FontPreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/FontPreviewTablet;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    iget-boolean v2, p0, Lcom/android/settings/FontPreviewTablet;->mIsFont11Level:Z

    if-eqz v2, :cond_1

    .line 209
    iput v7, p0, Lcom/android/settings/FontPreviewTablet;->mExtraLargeFontIndex:I

    .line 216
    :cond_1
    :goto_2
    iget-boolean v2, p0, Lcom/android/settings/FontPreviewTablet;->mIsFont11Level:Z

    invoke-direct {p0, v2}, Lcom/android/settings/FontPreviewTablet;->setFontsizeLayoutSevenOrEleven(Z)V

    .line 218
    iget-boolean v2, p0, Lcom/android/settings/FontPreviewTablet;->mIsAccessibilitySettingsVision:Z

    if-eqz v2, :cond_2

    .line 219
    iget-boolean v2, p0, Lcom/android/settings/FontPreviewTablet;->mIsFont11Level:Z

    invoke-direct {p0, v2}, Lcom/android/settings/FontPreviewTablet;->setAccessiblityFontSizeView(Z)V

    .line 220
    const v2, 0x7f0d02db

    invoke-virtual {p0, v2}, Lcom/android/settings/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 221
    .local v1, "fontStyle":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 224
    .end local v1    # "fontStyle":Landroid/widget/LinearLayout;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/FontPreviewTablet;->update7StepFontsizeList()V

    .line 226
    iget-object v2, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "font_size"

    const/4 v6, 0x2

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontSize:I

    .line 227
    iget v2, p0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontSize:I

    invoke-direct {p0, v2}, Lcom/android/settings/FontPreviewTablet;->changeFontSizeFromSeekBar(I)V

    .line 228
    iget-object v2, p0, Lcom/android/settings/FontPreviewTablet;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    iget v5, p0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontSize:I

    invoke-virtual {v2, v5}, Lcom/android/settings/IntervalSeekBar;->setProgress(I)V

    .line 230
    iget v2, p0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontSize:I

    iget v5, p0, Lcom/android/settings/FontPreviewTablet;->mExtraLargeFontIndex:I

    if-le v2, v5, :cond_3

    .line 231
    iget-object v2, p0, Lcom/android/settings/FontPreviewTablet;->mShowForHugeFontTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    :cond_3
    iget-object v2, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/FontPreviewTablet;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 236
    iget-object v2, p0, Lcom/android/settings/FontPreviewTablet;->mFontSizeSeekBar:Lcom/android/settings/IntervalSeekBar;

    new-instance v5, Lcom/android/settings/FontPreviewTablet$1;

    invoke-direct {v5, p0}, Lcom/android/settings/FontPreviewTablet$1;-><init>(Lcom/android/settings/FontPreviewTablet;)V

    invoke-virtual {v2, v5}, Lcom/android/settings/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 260
    iget-boolean v2, p0, Lcom/android/settings/FontPreviewTablet;->mIsAccessibilitySettingsVision:Z

    if-eqz v2, :cond_7

    .line 271
    :goto_3
    return-void

    :cond_4
    move v2, v4

    .line 189
    goto/16 :goto_0

    .line 200
    :cond_5
    iput-boolean v4, p0, Lcom/android/settings/FontPreviewTablet;->mIsFontLargerOn:Z

    .line 201
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/settings/FontPreviewTablet;->mExtraLargeFontIndex:I

    goto/16 :goto_1

    .line 213
    :cond_6
    const v2, 0x7f0e10ff

    invoke-virtual {p0, v2}, Lcom/android/settings/FontPreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/FontPreviewTablet;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 264
    :cond_7
    const v2, 0x7f0d02dc

    invoke-virtual {p0, v2}, Lcom/android/settings/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    .line 265
    iget-object v2, p0, Lcom/android/settings/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 267
    invoke-static {}, Lcom/android/settings/flipfont/FontListAdapter;->destroyInstance()V

    .line 268
    iput-object v8, p0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 269
    new-instance v2, Lcom/android/settings/FontPreviewTablet$LoadListTask;

    invoke-direct {v2, p0, v8}, Lcom/android/settings/FontPreviewTablet$LoadListTask;-><init>(Lcom/android/settings/FontPreviewTablet;Lcom/android/settings/FontPreviewTablet$1;)V

    iput-object v2, p0, Lcom/android/settings/FontPreviewTablet;->mLoadListTask:Lcom/android/settings/FontPreviewTablet$LoadListTask;

    .line 270
    iget-object v2, p0, Lcom/android/settings/FontPreviewTablet;->mLoadListTask:Lcom/android/settings/FontPreviewTablet$LoadListTask;

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/settings/FontPreviewTablet$LoadListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 818
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 820
    iget-object v1, p0, Lcom/android/settings/FontPreviewTablet;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 821
    iget-object v1, p0, Lcom/android/settings/FontPreviewTablet;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 823
    .local v0, "customView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 824
    const v1, 0x7f0d015b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/FontPreviewTablet;->mcancelButton:Landroid/widget/Button;

    .line 825
    iget-object v1, p0, Lcom/android/settings/FontPreviewTablet;->mcancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/FontPreviewTablet$4;

    invoke-direct {v2, p0}, Lcom/android/settings/FontPreviewTablet$4;-><init>(Lcom/android/settings/FontPreviewTablet;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 831
    const v1, 0x7f0d015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/FontPreviewTablet;->mSaveButton:Landroid/widget/Button;

    .line 832
    iget-object v1, p0, Lcom/android/settings/FontPreviewTablet;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f0e0d05

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 833
    iget-object v1, p0, Lcom/android/settings/FontPreviewTablet;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/FontPreviewTablet$5;

    invoke-direct {v2, p0}, Lcom/android/settings/FontPreviewTablet$5;-><init>(Lcom/android/settings/FontPreviewTablet;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    .end local v0    # "customView":Landroid/view/View;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 1434
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 1436
    iget-object v1, p0, Lcom/android/settings/FontPreviewTablet;->mLoadListTask:Lcom/android/settings/FontPreviewTablet$LoadListTask;

    if-eqz v1, :cond_1

    .line 1438
    iget-object v1, p0, Lcom/android/settings/FontPreviewTablet;->mLoadListTask:Lcom/android/settings/FontPreviewTablet$LoadListTask;

    invoke-virtual {v1}, Lcom/android/settings/FontPreviewTablet$LoadListTask;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    .line 1439
    .local v0, "loadListTaskProgressDialog":Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    .line 1440
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1442
    :cond_0
    iget-object v1, p0, Lcom/android/settings/FontPreviewTablet;->mLoadListTask:Lcom/android/settings/FontPreviewTablet$LoadListTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/FontPreviewTablet$LoadListTask;->cancel(Z)Z

    .line 1445
    .end local v0    # "loadListTaskProgressDialog":Landroid/app/ProgressDialog;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-eqz v1, :cond_2

    .line 1446
    iget-object v1, p0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-static {}, Lcom/android/settings/flipfont/FontListAdapter;->destroyInstance()V

    .line 1447
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 1449
    :cond_2
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
    .line 518
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v14, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    .line 524
    const/4 v11, 0x0

    .line 525
    .local v11, "question":Ljava/lang/String;
    const/4 v8, 0x0

    .line 526
    .local v8, "fontName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 528
    .local v10, "press_apkname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-eqz v14, :cond_2

    .line 529
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v14, v14, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v14, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 532
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e14f6

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 533
    .local v6, "download_font":Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 538
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e1129

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 539
    .local v13, "uri":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 540
    .local v9, "intent":Landroid/content/Intent;
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 541
    const v14, 0x14000020

    invoke-virtual {v9, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 543
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-static {v14, v9}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 544
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e1128

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .end local v13    # "uri":Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 545
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

    .line 546
    const v14, 0x14000020

    invoke-virtual {v9, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 548
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v13    # "uri":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FontPreviewTablet;->finish()V

    goto/16 :goto_0

    .line 549
    :catch_0
    move-exception v7

    .line 550
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 556
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v14}, Lcom/android/settings/flipfont/FontListAdapter;->getCurrentThemeString()Ljava/lang/String;

    move-result-object v5

    .line 557
    .local v5, "currentThemeFont":Ljava/lang/String;
    if-eqz v5, :cond_6

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 558
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreviewTablet;->themeFontTypeface:Landroid/graphics/Typeface;

    if-eqz v14, :cond_5

    .line 559
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mChangingSizeText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FontPreviewTablet;->themeFontTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 561
    :cond_5
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/FontPreviewTablet;->mIsSelectedCurrentThemeFont:Z

    goto/16 :goto_0

    .line 564
    :cond_6
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/FontPreviewTablet;->mIsSelectedCurrentThemeFont:Z

    .line 567
    const/4 v14, 0x1

    move/from16 v0, p3

    if-ge v0, v14, :cond_b

    .line 568
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e1124

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 569
    .local v12, "s":Ljava/lang/String;
    move-object v11, v12

    .line 585
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string v15, "activity"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 586
    .local v2, "activityManager":Landroid/app/ActivityManager;
    const/4 v14, 0x3

    const/4 v15, 0x1

    invoke-virtual {v2, v14, v15}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v4

    .line 588
    .local v4, "bgAppTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v4, :cond_7

    .line 589
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

    iput-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mPackageName:Ljava/lang/String;

    .line 591
    :cond_7
    const-string v14, "FlipFont"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pkgName1:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FontPreviewTablet;->mPackageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mChangingSizeText:Landroid/widget/TextView;

    if-eqz v14, :cond_8

    .line 594
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mChangingSizeText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Lcom/android/settings/flipfont/FontListAdapter;->getFontTypeface(I)Landroid/graphics/Typeface;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 597
    :cond_8
    const/4 v3, 0x0

    .line 598
    .local v3, "apkname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-eqz v14, :cond_9

    .line 600
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v14, v14, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v14, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 605
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/FontPreviewTablet;->checkFont(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 606
    sget-boolean v14, Lcom/android/settings/FontPreviewTablet;->DEBUG:Z

    if-eqz v14, :cond_a

    .line 607
    const-string v14, "FlipFont"

    const-string v15, "**onOkButtonPressed - bad font**"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/FontPreviewTablet;->badFontDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 571
    .end local v2    # "activityManager":Landroid/app/ActivityManager;
    .end local v3    # "apkname":Ljava/lang/String;
    .end local v4    # "bgAppTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v12    # "s":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e1126

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 573
    .restart local v12    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v14, :cond_c

    .line 575
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/android/settings/flipfont/FontListAdapter;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 576
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v14}, Lcom/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    .line 578
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    .line 579
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v14}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 581
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v14, v15}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v8

    .line 582
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 601
    .restart local v2    # "activityManager":Landroid/app/ActivityManager;
    .restart local v3    # "apkname":Ljava/lang/String;
    .restart local v4    # "bgAppTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :catch_1
    move-exception v14

    goto :goto_3
.end method

.method public onOkButtonPressed()Z
    .locals 34

    .prologue
    .line 936
    const-string v28, ""

    .line 937
    .local v28, "selectedFont":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/FontPreviewTablet;->mIsSelectedCurrentThemeFont:Z

    if-eqz v2, :cond_1

    .line 939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/android/settings/flipfont/FontListAdapter;->getThemeFontCurrentPath()Ljava/lang/String;

    move-result-object v29

    .line 940
    .local v29, "themePath":Ljava/lang/String;
    const/16 v2, 0x2f

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    .line 941
    .local v17, "endIndex":I
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v6, 0x0

    move/from16 v0, v17

    invoke-static {v2, v6, v0}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v28

    .line 942
    const-string v2, "persist.sys.flipfontpath"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#Theme"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    .end local v17    # "endIndex":I
    .end local v29    # "themePath":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    .line 1077
    .local v11, "am":Landroid/app/IActivityManager;
    sget-boolean v2, Lcom/android/settings/FontPreviewTablet;->REBOOT:Z

    if-nez v2, :cond_13

    .line 1080
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1088
    :goto_1
    :try_start_1
    invoke-interface {v11}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    .line 1090
    .local v14, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v14, Landroid/content/res/Configuration;->FlipFont:I

    .line 1091
    invoke-interface {v11, v14}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1095
    .end local v14    # "config":Landroid/content/res/Configuration;
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreviewTablet;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreviewTablet;->mPackageName:Ljava/lang/String;

    const-string v6, "sec_container_"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1096
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/FontPreviewTablet;->mPackageName:Ljava/lang/String;

    .line 1097
    const/4 v2, 0x1

    .line 1148
    .end local v11    # "am":Landroid/app/IActivityManager;
    :goto_3
    return v2

    .line 944
    :cond_1
    const/16 v18, 0x0

    .line 946
    .local v18, "err_filecopy":Z
    const-string v2, "FontPreviewTablet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onOkButtonPressed : mClickedItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    const/4 v5, 0x0

    .line 950
    .local v5, "apkname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-eqz v2, :cond_2

    .line 952
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    .line 959
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings/FontPreviewTablet;->checkFont(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 961
    const/4 v2, 0x0

    goto :goto_3

    .line 953
    :catch_0
    move-exception v16

    .line 955
    .local v16, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x0

    goto :goto_3

    .line 964
    .end local v16    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_6

    .line 965
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/FontPreviewTablet;->mSavedClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    .line 970
    :goto_4
    const-string v2, "FontPreviewTablet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onOkButtonPressed : mSavedClickedItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/FontPreviewTablet;->mSavedClickedItem:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FontPreviewTablet;->savePreferences()V

    .line 973
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v2, :cond_4

    .line 974
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/android/settings/flipfont/FontListAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 975
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    .line 977
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    .line 978
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 981
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v28

    .end local v28    # "selectedFont":Ljava/lang/String;
    check-cast v28, Ljava/lang/String;

    .line 983
    .restart local v28    # "selectedFont":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/FontPreviewTablet;->saveSelectedFontStringPreferences(Ljava/lang/String;)V

    .line 985
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/FontPreviewTablet;->mPreviousFont:I

    .line 987
    new-instance v3, Lcom/android/settings/flipfont/FontWriter;

    invoke-direct {v3}, Lcom/android/settings/flipfont/FontWriter;-><init>()V

    .line 990
    .local v3, "fontWriter":Lcom/android/settings/flipfont/FontWriter;
    if-eqz v28, :cond_5

    const-string v2, "default"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 991
    :cond_5
    sput-object v28, Lcom/android/settings/FontPreviewTablet;->persistString:Ljava/lang/String;

    .line 992
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string v6, " "

    invoke-virtual {v3, v2, v6}, Lcom/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    .line 994
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string v6, "sans.loc"

    const-string v7, "default#default"

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    if-nez v28, :cond_0

    .line 997
    const-string v2, "FontPreviewTablet"

    const-string v6, "onOkButtonPressed() : selectedFont == null "

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 967
    .end local v3    # "fontWriter":Lcom/android/settings/flipfont/FontWriter;
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/FontPreviewTablet;->mSavedClickedItem:I

    goto/16 :goto_4

    .line 1004
    .restart local v3    # "fontWriter":Lcom/android/settings/flipfont/FontWriter;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/settings/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/android/settings/flipfont/Typeface;

    move-result-object v27

    .line 1006
    .local v27, "sansTypeface":Lcom/android/settings/flipfont/Typeface;
    move-object/from16 v26, v28

    .line 1007
    .local v26, "sFontDir":Ljava/lang/String;
    const-string v2, ".xml"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    .line 1009
    .local v23, "index":I
    if-lez v23, :cond_8

    .line 1010
    const/4 v2, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .line 1013
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-virtual {v3, v2, v0}, Lcom/android/settings/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 1015
    .local v4, "fontDir":Ljava/io/File;
    const/16 v30, 0x0

    .line 1017
    .local v30, "tpf":Lcom/android/settings/flipfont/TypefaceFile;
    if-eqz v27, :cond_9

    .line 1018
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_5
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_9

    .line 1019
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    .end local v30    # "tpf":Lcom/android/settings/flipfont/TypefaceFile;
    check-cast v30, Lcom/android/settings/flipfont/TypefaceFile;

    .line 1023
    .restart local v30    # "tpf":Lcom/android/settings/flipfont/TypefaceFile;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1024
    const-string v2, "FontPreviewTablet"

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

    .line 1025
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    .line 1026
    .local v12, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v2, v12, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 1027
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v24

    .line 1028
    .local v24, "res":Landroid/content/res/Resources;
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    .line 1029
    .local v13, "assetManager":Landroid/content/res/AssetManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fonts/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v22

    .line 1030
    .local v22, "in":Ljava/io/InputStream;
    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v18

    .line 1031
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1018
    .end local v12    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "assetManager":Landroid/content/res/AssetManager;
    .end local v22    # "in":Ljava/io/InputStream;
    .end local v24    # "res":Landroid/content/res/Resources;
    :goto_6
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_5

    .line 1032
    :catch_1
    move-exception v19

    .line 1034
    .local v19, "ex":Ljava/lang/Exception;
    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/FontPreviewTablet;->copyFileWithCR(Lcom/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    goto :goto_6

    .line 1039
    .end local v19    # "ex":Ljava/lang/Exception;
    .end local v20    # "i":I
    :cond_9
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_c

    .line 1040
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/FontPreviewTablet;->mSavedClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    .line 1041
    new-instance v2, Landroid/app/DialogFragment;

    invoke-direct {v2}, Landroid/app/DialogFragment;-><init>()V

    invoke-virtual {v2}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v15

    .line 1042
    .local v15, "d":Landroid/app/Dialog;
    invoke-virtual {v15}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/ListView;

    .line 1043
    .local v31, "v":Landroid/widget/ListView;
    if-eqz v31, :cond_a

    .line 1044
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/FontPreviewTablet;->mPreviousFont:I

    const/4 v6, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1045
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FontPreviewTablet;->savePreferences()V

    .line 1047
    sget-boolean v2, Lcom/android/settings/FontPreviewTablet;->DEBUG:Z

    if-eqz v2, :cond_b

    .line 1048
    const-string v2, "FlipFont"

    const-string v6, "**onOkButtonPressed - enospc error **"

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0e0698

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/FontPreviewTablet;->errorDialog(Ljava/lang/String;)V

    .line 1054
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1057
    .end local v15    # "d":Landroid/app/Dialog;
    .end local v31    # "v":Landroid/widget/ListView;
    :cond_c
    sput-object v28, Lcom/android/settings/FontPreviewTablet;->persistString:Ljava/lang/String;

    .line 1059
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-virtual {v3, v2, v0}, Lcom/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    .line 1060
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/FontPreviewTablet;->mSavedClickedItem:I

    .line 1061
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FontPreviewTablet;->savePreferences()V

    .line 1063
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/FontPreviewTablet;->mPreviousFont:I

    .line 1067
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string v6, "sans.loc"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v32, "#"

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FontPreviewTablet;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1068
    :catch_2
    move-exception v16

    .line 1069
    .local v16, "e":Ljava/lang/RuntimeException;
    const-string v2, "FontPreviewTablet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fontWriter.writeLoc() : RuntimeException occured. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1081
    .end local v3    # "fontWriter":Lcom/android/settings/flipfont/FontWriter;
    .end local v4    # "fontDir":Ljava/io/File;
    .end local v5    # "apkname":Ljava/lang/String;
    .end local v16    # "e":Ljava/lang/RuntimeException;
    .end local v18    # "err_filecopy":Z
    .end local v23    # "index":I
    .end local v26    # "sFontDir":Ljava/lang/String;
    .end local v27    # "sansTypeface":Lcom/android/settings/flipfont/Typeface;
    .end local v30    # "tpf":Lcom/android/settings/flipfont/TypefaceFile;
    .restart local v11    # "am":Landroid/app/IActivityManager;
    :catch_3
    move-exception v16

    .line 1083
    .local v16, "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 1101
    .end local v16    # "e":Ljava/lang/InterruptedException;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 1102
    .local v9, "activityManager":Landroid/app/ActivityManager;
    const/16 v2, 0x32

    invoke-virtual {v9, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v10

    .line 1103
    .local v10, "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v20, 0x1

    .line 1105
    .restart local v20    # "i":I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1106
    .local v8, "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v2, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    .line 1109
    .local v25, "s":Ljava/lang/String;
    const-string v2, "com.android.settings"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "com.samsung.music"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "com.sec.android.app.music"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    .line 1112
    const-string v2, "com.infraware.polarisoffice"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "com.infraware.polarisoffice4"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "com.infraware.polarisviewer4"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "com.infraware.PolarisOfficeStdForTablet"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "com.infraware.polarisviewer5tablet"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "com.infraware.polarisoffice5tablet"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "com.infraware.polarisoffice4.document"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "com.infraware.polarisoffice5"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "com.infraware.polarisoffice5.document"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "com.infraware.polarisviewer5"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "com.infraware.polarisviewer5.document"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_10

    .line 1124
    :cond_f
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1126
    :cond_10
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1127
    const-string v2, "com.nttdocomo.android.toruca"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    .line 1128
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1131
    :cond_11
    const-string v2, "com.sec.android.app.camera"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_12

    .line 1132
    const-string v2, "FontPreviewTablet"

    const-string v6, "com.sec.android.app.camera == 0"

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1134
    :cond_12
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1148
    .end local v8    # "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v9    # "activityManager":Landroid/app/ActivityManager;
    .end local v10    # "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v20    # "i":I
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v25    # "s":Ljava/lang/String;
    :cond_13
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 1092
    :catch_4
    move-exception v2

    goto/16 :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1332
    const-string v0, "USER_SELECTED_FONT_STYLE"

    iget v1, p0, Lcom/android/settings/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1333
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1334
    return-void
.end method

.method public readFontSizePreference()V
    .locals 3

    .prologue
    .line 1243
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/FontPreviewTablet;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1247
    :goto_0
    return-void

    .line 1244
    :catch_0
    move-exception v0

    .line 1245
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FontPreviewTablet"

    const-string v2, "Unable to retrieve font size"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected savePreferences()V
    .locals 6

    .prologue
    .line 918
    const/4 v1, 0x0

    .line 919
    .local v1, "mode":I
    iget-object v3, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 922
    .local v2, "mySharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 924
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "SelectDialogIsActive"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 925
    const-string v3, "SavedClickedItem"

    iget v4, p0, Lcom/android/settings/FontPreviewTablet;->mSavedClickedItem:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 927
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 928
    iget-object v3, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "flip_font_style"

    iget v5, p0, Lcom/android/settings/FontPreviewTablet;->mSavedClickedItem:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 929
    return-void
.end method

.method public saveSelectedFontStringPreferences(Ljava/lang/String;)V
    .locals 5
    .param p1, "selectedFont"    # Ljava/lang/String;

    .prologue
    .line 1153
    const/4 v1, 0x0

    .line 1154
    .local v1, "mode":I
    iget-object v3, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1156
    .local v2, "mySharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1158
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "selectedFont"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1160
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1161
    return-void
.end method

.method public writeFontSizePreference(F)V
    .locals 6
    .param p1, "fontFloatSize"    # F

    .prologue
    .line 1222
    move v1, p1

    .line 1223
    .local v1, "fontScale":F
    :try_start_0
    const-string v3, "FontPreviewTablet"

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

    .line 1225
    iget-object v3, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v2

    .line 1226
    .local v2, "largeFontScale":F
    iget-boolean v3, p0, Lcom/android/settings/FontPreviewTablet;->mIsFont11Level:Z

    if-eqz v3, :cond_0

    .line 1227
    iget-object v3, p0, Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v2

    .line 1230
    :cond_0
    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    .line 1231
    move v1, v2

    .line 1233
    :cond_1
    iget-object v3, p0, Lcom/android/settings/FontPreviewTablet;->mCurConfig:Landroid/content/res/Configuration;

    iput v1, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 1234
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/FontPreviewTablet;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1238
    .end local v2    # "largeFontScale":F
    :goto_0
    return-void

    .line 1235
    :catch_0
    move-exception v0

    .line 1236
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "FontPreviewTablet"

    const-string v4, "Unable to save font size"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
