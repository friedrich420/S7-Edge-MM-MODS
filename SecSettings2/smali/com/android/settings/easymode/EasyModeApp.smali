.class public Lcom/android/settings/easymode/EasyModeApp;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EasyModeApp.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mPackageName:[Ljava/lang/String;


# instance fields
.field private EXTRA_LARGE_FONT_SCALE:F

.field private LARGE_FONT_SCALE:F

.field private bEnableTab:Z

.field private easy_mode_apps:Landroid/preference/PreferenceScreen;

.field private easy_mode_camera:Landroid/preference/SwitchPreference;

.field private easy_mode_email:Landroid/preference/SwitchPreference;

.field private easy_mode_gallery:Landroid/preference/SwitchPreference;

.field private easy_mode_internet:Landroid/preference/SwitchPreference;

.field private easy_mode_messages:Landroid/preference/SwitchPreference;

.field private easy_mode_music:Landroid/preference/SwitchPreference;

.field private easy_mode_phone:Landroid/preference/SwitchPreference;

.field private easy_mode_select_all:Landroid/preference/SwitchPreference;

.field private easy_mode_splanner:Landroid/preference/SwitchPreference;

.field private easy_mode_video:Landroid/preference/SwitchPreference;

.field private isEnabledShowBtnBg:Z

.field private isSharedDevice:Z

.field private list:Landroid/widget/ListView;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mChangeFont:Z

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mEasyModeClickListener:Landroid/view/View$OnClickListener;

.field private mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

.field private mEasyModeLayout:Landroid/widget/LinearLayout;

.field private mEasyModeRadio:Landroid/widget/RadioButton;

.field private mEasyTextView:Landroid/widget/TextView;

.field private mExtraLargeFontIndex:I

.field private mHelpTextView:Landroid/widget/TextView;

.field private mIsFont11Level:Z

.field private mListdividerInsetSize:I

.field private mModeRadioGroup:Landroid/widget/LinearLayout;

.field private mModeState:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPreviewImage:Landroid/graphics/drawable/Drawable;

.field private mPreviewImageView:Landroid/widget/ImageView;

.field private mSaveButton:Landroid/widget/Button;

.field private mStandardModeClickListener:Landroid/view/View$OnClickListener;

.field private mStandardModeLayout:Landroid/widget/LinearLayout;

.field private mStandardModeRadio:Landroid/widget/RadioButton;

.field private mStdTextView:Landroid/widget/TextView;

.field private mTempView:Landroid/view/View;

.field private mcancelButton:Landroid/widget/Button;

.field private objValue:Ljava/lang/Object;

.field private previousIndex:I

.field private selected_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 158
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.incallui"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.samsung.android.email.provider"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.sec.android.gallery3d"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.sec.android.app.sbrowser"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sec.android.app.music"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.calendar"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.samsung.android.video"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    .line 1273
    new-instance v0, Lcom/android/settings/easymode/EasyModeApp$6;

    invoke-direct {v0}, Lcom/android/settings/easymode/EasyModeApp$6;-><init>()V

    sput-object v0, Lcom/android/settings/easymode/EasyModeApp;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 126
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    .line 130
    iput v1, p0, Lcom/android/settings/easymode/EasyModeApp;->previousIndex:I

    .line 131
    iput-boolean v1, p0, Lcom/android/settings/easymode/EasyModeApp;->isEnabledShowBtnBg:Z

    .line 132
    iput-boolean v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mChangeFont:Z

    .line 133
    iput-boolean v1, p0, Lcom/android/settings/easymode/EasyModeApp;->bEnableTab:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/settings/easymode/EasyModeApp;->isSharedDevice:Z

    .line 140
    const v0, 0x3f9ae148    # 1.21f

    iput v0, p0, Lcom/android/settings/easymode/EasyModeApp;->LARGE_FONT_SCALE:F

    .line 142
    const v0, 0x3fc28f5c    # 1.52f

    iput v0, p0, Lcom/android/settings/easymode/EasyModeApp;->EXTRA_LARGE_FONT_SCALE:F

    .line 143
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mExtraLargeFontIndex:I

    .line 152
    iput v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mListdividerInsetSize:I

    .line 190
    new-instance v0, Lcom/android/settings/easymode/EasyModeApp$1;

    invoke-direct {v0, p0}, Lcom/android/settings/easymode/EasyModeApp$1;-><init>(Lcom/android/settings/easymode/EasyModeApp;)V

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeClickListener:Landroid/view/View$OnClickListener;

    .line 196
    new-instance v0, Lcom/android/settings/easymode/EasyModeApp$2;

    invoke-direct {v0, p0}, Lcom/android/settings/easymode/EasyModeApp$2;-><init>(Lcom/android/settings/easymode/EasyModeApp;)V

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/easymode/EasyModeApp;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/easymode/EasyModeApp;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/easymode/EasyModeApp;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/settings/easymode/EasyModeApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/easymode/EasyModeApp;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->showPinWindowToast()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/easymode/EasyModeApp;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->checkLeastOnEasyMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1302(Lcom/android/settings/easymode/EasyModeApp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;
    .param p1, "x1"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/easymode/EasyModeApp;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/settings/easymode/EasyModeApp;->startLauncher(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/easymode/EasyModeApp;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->applyEasyMode()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/easymode/EasyModeApp;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->saveEasyModeApps()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/easymode/EasyModeApp;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/settings/easymode/EasyModeApp;->bEnableTab:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/easymode/EasyModeApp;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/settings/easymode/EasyModeApp;->bEnableTab:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/easymode/EasyModeApp;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->goToPersonal()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/easymode/EasyModeApp;)Lcom/android/settings/easymode/EasyModeEnabler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/easymode/EasyModeApp;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/easymode/EasyModeApp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;

    .prologue
    .line 110
    iget v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/easymode/EasyModeApp;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->isDefaultEasyLauncher()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/easymode/EasyModeApp;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/easymode/EasyModeApp;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/easymode/EasyModeApp;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method private applyEasyMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 971
    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->saveEasyModeApps()V

    .line 972
    invoke-virtual {p0, v1}, Lcom/android/settings/easymode/EasyModeApp;->setDefaultLauncher(Z)V

    .line 973
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->setLargeFont()V

    .line 974
    iput v1, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    .line 975
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/easymode/EasyModeEnabler;->startEasyMode()V

    .line 976
    invoke-direct {p0, v1}, Lcom/android/settings/easymode/EasyModeApp;->startLauncher(Z)V

    .line 977
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->finish()V

    .line 978
    return-void
.end method

.method private changeActionbarFontsize()V
    .locals 2

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mcancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1337
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mcancelButton:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    .line 1339
    :cond_0
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1340
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    .line 1342
    :cond_1
    return-void
.end method

.method private checkAllEasyModeApps()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 774
    const-string v1, "EasyModeApp"

    const-string v2, "KKK checkAllEasyModeApps"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 795
    :cond_0
    :goto_0
    return v0

    .line 777
    :cond_1
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 779
    :cond_2
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 781
    :cond_3
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 783
    :cond_4
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 785
    :cond_5
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    :cond_6
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 789
    :cond_7
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 791
    :cond_8
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 794
    :cond_9
    const-string v0, "EasyModeApp"

    const-string v1, "KKK checkAllEasyModeApps return true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkLeastOnEasyMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 799
    const-string v1, "EasyModeApp"

    const-string v2, "KKK checkLeastOnEasyMode"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 820
    :cond_0
    :goto_0
    return v0

    .line 802
    :cond_1
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 804
    :cond_2
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 806
    :cond_3
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 808
    :cond_4
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 810
    :cond_5
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 812
    :cond_6
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 814
    :cond_7
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 816
    :cond_8
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 819
    :cond_9
    const-string v0, "EasyModeApp"

    const-string v1, "KKK checkLeastOnEasyMode return false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private goToPersonal()V
    .locals 4

    .prologue
    .line 1206
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1207
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->isKnoxmode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1208
    const-string v2, "persona"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 1209
    .local v1, "mPersona":Landroid/os/PersonaManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->launchPersonaHome(I)Z

    .line 1210
    const-string v2, "EasyModeApp"

    const-string v3, "Current mode is knox. Go out to personal to change launcher"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    .end local v1    # "mPersona":Landroid/os/PersonaManager;
    :cond_0
    return-void
.end method

.method private initPreference()V
    .locals 2

    .prologue
    .line 473
    const-string v0, "EasyModeApp"

    const-string v1, "KKK initPreference"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v0, "easy_mode_apps"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps:Landroid/preference/PreferenceScreen;

    .line 475
    const-string v0, "easy_mode_select_all"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    .line 476
    const-string v0, "easy_mode_camera"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    .line 477
    const-string v0, "easy_mode_email"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    .line 478
    const-string v0, "easy_mode_gallery"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    .line 479
    const-string v0, "easy_mode_internet"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    .line 480
    const-string v0, "easy_mode_messages"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    .line 481
    const-string v0, "easy_mode_music"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    .line 482
    const-string v0, "easy_mode_phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    .line 483
    const-string v0, "easy_mode_splanner"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    .line 484
    const-string v0, "easy_mode_video"

    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    .line 486
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 487
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 488
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 489
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 490
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 491
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 492
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 493
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 494
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 495
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 496
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 497
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 498
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 499
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 500
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 501
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 502
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 503
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 504
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 505
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 506
    return-void
.end method

.method private isDefaultEasyLauncher()Z
    .locals 5

    .prologue
    .line 509
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.easylauncher"

    const-string v4, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    .local v1, "easyLauncerCN":Landroid/content/ComponentName;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v2, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 513
    .local v0, "currentDefaultHome":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 514
    const/4 v3, 0x1

    .line 516
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isKnoxmode(Landroid/content/Context;)Z
    .locals 6
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 1323
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1324
    .local v1, "intentToResolve":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1325
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1327
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1328
    .local v0, "HomeReceiver":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, "com.android.internal.app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1329
    const/4 v3, 0x1

    .line 1331
    :cond_0
    return v3
.end method

.method private isUnsupportedApp(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v2, 0x0

    .line 1308
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {p2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1309
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1310
    .local v1, "b":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v3, "com.sec.android.easymode.unsupported"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1311
    const-string v3, "EasyModeApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOnlyForOwner() true - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1312
    const/4 v2, 0x1

    .line 1318
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "b":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return v2

    .line 1314
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private saveEasyModeApps()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 673
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_0

    .line 674
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v5, "easy_mode_camera"

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v1

    .line 675
    .local v1, "prevValue":I
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    move v0, v2

    .line 676
    .local v0, "currentValue":I
    :goto_0
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_camera"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v2

    :goto_1
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    .line 677
    if-eq v1, v0, :cond_0

    .line 678
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->sendChangeCameraIntent(Z)V

    .line 681
    .end local v0    # "currentValue":I
    .end local v1    # "prevValue":I
    :cond_0
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_1

    .line 682
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_email"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v2

    :goto_2
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    .line 684
    :cond_1
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_2

    .line 685
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_gallery"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v2

    :goto_3
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    .line 687
    :cond_2
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_3

    .line 688
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_internet"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_d

    move v4, v2

    :goto_4
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    .line 690
    :cond_3
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_4

    .line 691
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v5, "easy_mode_messages"

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v1

    .line 692
    .restart local v1    # "prevValue":I
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_e

    move v0, v2

    .line 693
    .restart local v0    # "currentValue":I
    :goto_5
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_messages"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v2

    :goto_6
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    .line 694
    if-eq v1, v0, :cond_4

    .line 695
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->sendChangeMessageIntent(Z)V

    .line 698
    .end local v0    # "currentValue":I
    .end local v1    # "prevValue":I
    :cond_4
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_5

    .line 699
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v5, "easy_mode_music"

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v1

    .line 700
    .restart local v1    # "prevValue":I
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_10

    move v0, v2

    .line 701
    .restart local v0    # "currentValue":I
    :goto_7
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_music"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_11

    move v4, v2

    :goto_8
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    .line 702
    if-eq v1, v0, :cond_5

    .line 703
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->sendChangeMusicIntent(Z)V

    .line 706
    .end local v0    # "currentValue":I
    .end local v1    # "prevValue":I
    :cond_5
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_6

    .line 707
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_contacts"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_12

    move v4, v2

    :goto_9
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    .line 708
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->sendChangeContactIntent(Z)V

    .line 710
    :cond_6
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_7

    .line 711
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v5, "easy_mode_splanner"

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v1

    .line 712
    .restart local v1    # "prevValue":I
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_13

    move v0, v2

    .line 713
    .restart local v0    # "currentValue":I
    :goto_a
    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v6, "easy_mode_splanner"

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_14

    move v4, v2

    :goto_b
    invoke-virtual {v5, v6, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    .line 714
    if-eq v1, v0, :cond_7

    .line 715
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    iget-object v5, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/easymode/EasyModeEnabler;->sendChangeSplannerIntent(Z)V

    .line 718
    .end local v0    # "currentValue":I
    .end local v1    # "prevValue":I
    :cond_7
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_8

    .line 719
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v5, "easy_mode_video"

    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_15

    :goto_c
    invoke-virtual {v4, v5, v2}, Lcom/android/settings/easymode/EasyModeEnabler;->setEasyModeApp(Ljava/lang/String;I)V

    .line 722
    :cond_8
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    invoke-virtual {v2}, Lcom/android/settings/easymode/EasyModeEnabler;->sendChangeAppListIntent()V

    .line 723
    return-void

    .restart local v1    # "prevValue":I
    :cond_9
    move v0, v3

    .line 675
    goto/16 :goto_0

    .restart local v0    # "currentValue":I
    :cond_a
    move v4, v3

    .line 676
    goto/16 :goto_1

    .end local v0    # "currentValue":I
    .end local v1    # "prevValue":I
    :cond_b
    move v4, v3

    .line 682
    goto/16 :goto_2

    :cond_c
    move v4, v3

    .line 685
    goto/16 :goto_3

    :cond_d
    move v4, v3

    .line 688
    goto/16 :goto_4

    .restart local v1    # "prevValue":I
    :cond_e
    move v0, v3

    .line 692
    goto/16 :goto_5

    .restart local v0    # "currentValue":I
    :cond_f
    move v4, v3

    .line 693
    goto/16 :goto_6

    .end local v0    # "currentValue":I
    :cond_10
    move v0, v3

    .line 700
    goto/16 :goto_7

    .restart local v0    # "currentValue":I
    :cond_11
    move v4, v3

    .line 701
    goto/16 :goto_8

    .end local v0    # "currentValue":I
    .end local v1    # "prevValue":I
    :cond_12
    move v4, v3

    .line 707
    goto :goto_9

    .restart local v1    # "prevValue":I
    :cond_13
    move v0, v3

    .line 712
    goto :goto_a

    .restart local v0    # "currentValue":I
    :cond_14
    move v4, v3

    .line 713
    goto :goto_b

    .end local v0    # "currentValue":I
    .end local v1    # "prevValue":I
    :cond_15
    move v2, v3

    .line 719
    goto :goto_c
.end method

.method private showPinWindowToast()V
    .locals 8

    .prologue
    .line 1216
    const-string v4, "accessibility"

    invoke-virtual {p0, v4}, Lcom/android/settings/easymode/EasyModeApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1219
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    .line 1220
    .local v2, "hasPermanentMenuKey":Z
    if-eqz v2, :cond_1

    .line 1221
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1222
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "tw_lock_to_app_toast_accessible"

    const-string v6, "string"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1234
    .local v3, "text":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1239
    .end local v2    # "hasPermanentMenuKey":Z
    .end local v3    # "text":I
    :goto_1
    return-void

    .line 1224
    .restart local v2    # "hasPermanentMenuKey":Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "tw_lock_to_app_toast"

    const-string v6, "string"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .restart local v3    # "text":I
    goto :goto_0

    .line 1227
    .end local v3    # "text":I
    :cond_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1228
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "lock_to_app_toast_accessible"

    const-string v6, "string"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .restart local v3    # "text":I
    goto :goto_0

    .line 1230
    .end local v3    # "text":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "lock_to_app_toast"

    const-string v6, "string"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .restart local v3    # "text":I
    goto :goto_0

    .line 1236
    .end local v2    # "hasPermanentMenuKey":Z
    .end local v3    # "text":I
    :catch_0
    move-exception v1

    .line 1237
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method private startLauncher(Z)V
    .locals 1
    .param p1, "isTurnToEasy"    # Z

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    invoke-virtual {v0, p1}, Lcom/android/settings/easymode/EasyModeEnabler;->startLauncher(Z)V

    .line 1111
    return-void
.end method

.method private updateCheckBoxState(Z)V
    .locals 5
    .param p1, "force"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 824
    const-string v0, "EasyModeApp"

    const-string v3, "KKK updateCheckBoxState"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 826
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_camera"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 829
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_email"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 831
    :cond_1
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    .line 832
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_gallery"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 834
    :cond_2
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    .line 835
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_internet"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 837
    :cond_3
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_4

    .line 838
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_messages"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 840
    :cond_4
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_5

    .line 841
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_music"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 843
    :cond_5
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_6

    .line 844
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_contacts"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 846
    :cond_6
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_7

    .line 847
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_splanner"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 849
    :cond_7
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_8

    .line 850
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v4, "easy_mode_video"

    invoke-virtual {v0, v4}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 852
    :cond_8
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->checkAllEasyModeApps()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 853
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 857
    :cond_9
    :goto_9
    return-void

    :cond_a
    move v0, v2

    .line 826
    goto/16 :goto_0

    :cond_b
    move v0, v2

    .line 829
    goto/16 :goto_1

    :cond_c
    move v0, v2

    .line 832
    goto/16 :goto_2

    :cond_d
    move v0, v2

    .line 835
    goto/16 :goto_3

    :cond_e
    move v0, v2

    .line 838
    goto :goto_4

    :cond_f
    move v0, v2

    .line 841
    goto :goto_5

    :cond_10
    move v0, v2

    .line 844
    goto :goto_6

    :cond_11
    move v0, v2

    .line 847
    goto :goto_7

    :cond_12
    move v0, v2

    .line 850
    goto :goto_8

    .line 854
    :cond_13
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_9

    .line 855
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_9
.end method

.method private updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "ainfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 658
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 659
    invoke-virtual {p1}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    .line 660
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 661
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 662
    .local v0, "clone":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 663
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 665
    .end local v0    # "clone":Landroid/graphics/drawable/Drawable;
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 666
    invoke-virtual {p1}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 670
    :goto_0
    return-void

    .line 668
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method private updatePreperenceStatus()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 520
    const-string v10, "EasyModeApp"

    const-string v11, "KKK updatePreperenceStatus"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 522
    .local v9, "ps":Landroid/preference/PreferenceScreen;
    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    array-length v7, v10

    .line 523
    .local v7, "length":I
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 524
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 525
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_0

    .line 526
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 527
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v7, :cond_1f

    .line 529
    :try_start_0
    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v4

    const-string v11, "music"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 530
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v10

    if-nez v10, :cond_1

    .line 531
    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    const-string v11, "com.samsung.android.app.music.chn"

    aput-object v11, v10, v4

    .line 534
    :cond_1
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    sget-object v11, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v11, v11, v4

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 535
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    sget-object v11, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v11, v11, v4

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 536
    .local v0, "ainfo":Landroid/content/pm/ApplicationInfo;
    new-instance v2, Landroid/content/ComponentName;

    const-string v10, "com.android.contacts"

    const-string v11, "com.android.dialer.DialtactsActivity"

    invoke-direct {v2, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    .local v2, "cm":Landroid/content/ComponentName;
    new-instance v6, Landroid/content/pm/ActivityInfo;

    invoke-direct {v6}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 538
    .local v6, "info":Landroid/content/pm/ActivityInfo;
    const-string v10, "com.android.incallui"

    sget-object v11, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 539
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 527
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "cm":Landroid/content/ComponentName;
    .end local v6    # "info":Landroid/content/pm/ActivityInfo;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 540
    .restart local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "cm":Landroid/content/ComponentName;
    .restart local v6    # "info":Landroid/content/pm/ActivityInfo;
    :cond_3
    const-string v10, "com.sec.android.app.camera"

    sget-object v11, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 541
    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v4

    iget-object v11, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {p0, v10, v11}, Lcom/android/settings/easymode/EasyModeApp;->isUnsupportedApp(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 542
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    .line 543
    const-string v10, "easy_mode_camera"

    invoke-virtual {p0, v10}, Lcom/android/settings/easymode/EasyModeApp;->removePreference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 606
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "cm":Landroid/content/ComponentName;
    .end local v6    # "info":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v3

    .line 607
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "com.sec.android.app.camera"

    sget-object v11, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 608
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_2

    .line 609
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 610
    iput-object v13, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    goto :goto_1

    .line 544
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "cm":Landroid/content/ComponentName;
    .restart local v6    # "info":Landroid/content/pm/ActivityInfo;
    :cond_4
    :try_start_1
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_2

    .line 545
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    sget-object v11, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-direct {p0, v10, v0, v11}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto :goto_1

    .line 546
    :cond_5
    const-string v10, "com.android.contacts"

    sget-object v11, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 547
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 548
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 549
    .local v1, "clone":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 550
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    const/16 v11, 0x20

    invoke-virtual {v10, v2, v11}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 551
    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v4

    iget-object v11, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {p0, v10, v11}, Lcom/android/settings/easymode/EasyModeApp;->isUnsupportedApp(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 552
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    .line 553
    const-string v10, "easy_mode_phone"

    invoke-virtual {p0, v10}, Lcom/android/settings/easymode/EasyModeApp;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 554
    :cond_6
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_2

    .line 555
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    iget-object v11, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v11}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 557
    const/16 v10, 0xff

    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 561
    :goto_2
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v1}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 559
    :cond_7
    const/16 v10, 0x80

    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_2

    .line 563
    .end local v1    # "clone":Landroid/graphics/drawable/Drawable;
    :cond_8
    const-string v10, "com.samsung.android.email.provider"

    sget-object v11, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 564
    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v4

    iget-object v11, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {p0, v10, v11}, Lcom/android/settings/easymode/EasyModeApp;->isUnsupportedApp(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 565
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    .line 566
    const-string v10, "easy_mode_email"

    invoke-virtual {p0, v10}, Lcom/android/settings/easymode/EasyModeApp;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 567
    :cond_9
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_2

    .line 568
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    sget-object v11, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-direct {p0, v10, v0, v11}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 569
    :cond_a
    const-string v10, "com.sec.android.gallery3d"

    sget-object v11, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 570
    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v4

    iget-object v11, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {p0, v10, v11}, Lcom/android/settings/easymode/EasyModeApp;->isUnsupportedApp(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 571
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    .line 572
    const-string v10, "easy_mode_gallery"

    invoke-virtual {p0, v10}, Lcom/android/settings/easymode/EasyModeApp;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 573
    :cond_b
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_2

    .line 574
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    sget-object v11, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-direct {p0, v10, v0, v11}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 575
    :cond_c
    const-string v10, "com.sec.android.app.sbrowser"

    sget-object v11, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 576
    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v4

    iget-object v11, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {p0, v10, v11}, Lcom/android/settings/easymode/EasyModeApp;->isUnsupportedApp(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 577
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    .line 578
    const-string v10, "easy_mode_internet"

    invoke-virtual {p0, v10}, Lcom/android/settings/easymode/EasyModeApp;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 579
    :cond_d
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_2

    .line 580
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    sget-object v11, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-direct {p0, v10, v0, v11}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 581
    :cond_e
    const-string v10, "com.android.mms"

    sget-object v11, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 582
    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v4

    iget-object v11, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {p0, v10, v11}, Lcom/android/settings/easymode/EasyModeApp;->isUnsupportedApp(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 583
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    .line 584
    const-string v10, "easy_mode_messages"

    invoke-virtual {p0, v10}, Lcom/android/settings/easymode/EasyModeApp;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 585
    :cond_f
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_2

    .line 586
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    sget-object v11, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-direct {p0, v10, v0, v11}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 587
    :cond_10
    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v4

    const-string v11, "music"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 588
    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v4

    iget-object v11, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {p0, v10, v11}, Lcom/android/settings/easymode/EasyModeApp;->isUnsupportedApp(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 589
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    .line 590
    const-string v10, "easy_mode_music"

    invoke-virtual {p0, v10}, Lcom/android/settings/easymode/EasyModeApp;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 591
    :cond_11
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_2

    .line 592
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    sget-object v11, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-direct {p0, v10, v0, v11}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 593
    :cond_12
    const-string v10, "com.android.calendar"

    sget-object v11, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 594
    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v4

    iget-object v11, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {p0, v10, v11}, Lcom/android/settings/easymode/EasyModeApp;->isUnsupportedApp(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 595
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    .line 596
    const-string v10, "easy_mode_splanner"

    invoke-virtual {p0, v10}, Lcom/android/settings/easymode/EasyModeApp;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 597
    :cond_13
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_2

    .line 598
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    sget-object v11, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-direct {p0, v10, v0, v11}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 599
    :cond_14
    const-string v10, "com.samsung.android.video"

    sget-object v11, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 600
    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v4

    iget-object v11, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {p0, v10, v11}, Lcom/android/settings/easymode/EasyModeApp;->isUnsupportedApp(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v10

    if-nez v10, :cond_15

    const-string v10, "2016A"

    const-string v11, "ro.build.scafe.version"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 601
    :cond_15
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    .line 602
    const-string v10, "easy_mode_video"

    invoke-virtual {p0, v10}, Lcom/android/settings/easymode/EasyModeApp;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 603
    :cond_16
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_2

    .line 604
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    sget-object v11, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-direct {p0, v10, v0, v11}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperence(Landroid/preference/Preference;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 612
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "cm":Landroid/content/ComponentName;
    .end local v6    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_17
    const-string v10, "com.android.contacts"

    sget-object v11, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 613
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_2

    .line 614
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 615
    iput-object v13, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    goto/16 :goto_1

    .line 617
    :cond_18
    const-string v10, "com.samsung.android.email.provider"

    sget-object v11, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 618
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_2

    .line 619
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 620
    iput-object v13, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    goto/16 :goto_1

    .line 622
    :cond_19
    const-string v10, "com.sec.android.gallery3d"

    sget-object v11, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 623
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_2

    .line 624
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 625
    iput-object v13, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    goto/16 :goto_1

    .line 627
    :cond_1a
    const-string v10, "com.sec.android.app.sbrowser"

    sget-object v11, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 628
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_2

    .line 629
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 630
    iput-object v13, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    goto/16 :goto_1

    .line 632
    :cond_1b
    const-string v10, "com.android.mms"

    sget-object v11, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 633
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_2

    .line 634
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 635
    iput-object v13, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    goto/16 :goto_1

    .line 637
    :cond_1c
    sget-object v10, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v10, v10, v4

    const-string v11, "music"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 638
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_2

    .line 639
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 640
    iput-object v13, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    goto/16 :goto_1

    .line 642
    :cond_1d
    const-string v10, "com.android.calendar"

    sget-object v11, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 643
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_2

    .line 644
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 645
    iput-object v13, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    goto/16 :goto_1

    .line 647
    :cond_1e
    const-string v10, "com.samsung.android.video"

    sget-object v11, Lcom/android/settings/easymode/EasyModeApp;->mPackageName:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 648
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_2

    .line 649
    iget-object v10, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 650
    iput-object v13, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    goto/16 :goto_1

    .line 655
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1f
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 204
    const/16 v0, 0x2a

    return v0
.end method

.method initswitchBtn()V
    .locals 4

    .prologue
    .line 954
    const-string v2, "EasyModeApp"

    const-string v3, "KKK initswitchBtn"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 956
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBarSwitch:Landroid/widget/Switch;

    .line 957
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    .line 958
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 959
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    const v3, 0x7f040081

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 960
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 961
    new-instance v2, Lcom/android/settings/easymode/EasyModeEnabler;

    invoke-direct {v2, v0}, Lcom/android/settings/easymode/EasyModeEnabler;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    .line 962
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 963
    .local v1, "customView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 964
    const v2, 0x7f0d015b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mcancelButton:Landroid/widget/Button;

    .line 965
    const v2, 0x7f0d015c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    .line 967
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->changeActionbarFontsize()V

    .line 968
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/16 v5, 0xff

    const/16 v4, 0x80

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 401
    if-eqz p2, :cond_1

    .line 402
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0d0271

    if-ne v0, v1, :cond_2

    .line 403
    iput v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    .line 404
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 405
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 406
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mPreviewImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 407
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 408
    iput v2, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    .line 417
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperenceStatus()V

    .line 418
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearFocus()V

    .line 424
    :cond_1
    const-string v0, "EasyModeApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged mModeState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-void

    .line 410
    :cond_2
    iput v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    .line 411
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 412
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_apps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 413
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mPreviewImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 414
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 415
    iput v3, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 258
    const-string v1, "EasyModeApp"

    const-string v2, "onConfigurationChanged"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->initswitchBtn()V

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "header":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mTempView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 266
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 267
    const-string v1, "EasyModeApp"

    const-string v2, "horizontal"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400c4

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 274
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/easymode/EasyModeApp;->rebuildLayout(Landroid/view/View;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->list:Landroid/widget/ListView;

    .line 276
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->list:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 281
    const-string v1, "EasyModeApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KKK onConfigurationChanged selected_value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget v1, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    if-nez v1, :cond_2

    .line 284
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 285
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 290
    :goto_1
    return-void

    .line 270
    :cond_1
    const-string v1, "EasyModeApp"

    const-string v2, "vertical"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400c3

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 287
    :cond_2
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 288
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 209
    const-string v3, "EasyModeApp"

    const-string v6, "KKK onCreate"

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v6, "enterprise_policy"

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 214
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/easymode/EasyModeApp;->isSharedDevice:Z

    .line 218
    const-string v3, "EasyModeApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SharedDevice: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/easymode/EasyModeApp;->isSharedDevice:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    const v3, 0x7f08004b

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->addPreferencesFromResource(I)V

    .line 223
    invoke-virtual {p0, v4}, Lcom/android/settings/easymode/EasyModeApp;->setHasOptionsMenu(Z)V

    .line 224
    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->initPreference()V

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->getFontSize(Landroid/content/Context;)F

    move-result v3

    float-to-int v1, v3

    .line 227
    .local v1, "fontArraySize":I
    const-string v3, "fontArraySize"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fontArraySize:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/16 v3, 0xb

    if-ne v1, v3, :cond_4

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mIsFont11Level:Z

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "show_button_background"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/easymode/EasyModeApp;->isEnabledShowBtnBg:Z

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_size"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/easymode/EasyModeApp;->previousIndex:I

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v3

    iput v3, p0, Lcom/android/settings/easymode/EasyModeApp;->LARGE_FONT_SCALE:F

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v3

    iput v3, p0, Lcom/android/settings/easymode/EasyModeApp;->EXTRA_LARGE_FONT_SCALE:F

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/easymode/EasyModeApp;->EXTRA_LARGE_FONT_SCALE:F

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getFontIndex(Landroid/content/Context;F)I

    move-result v3

    iput v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mExtraLargeFontIndex:I

    .line 236
    iget-boolean v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mIsFont11Level:Z

    if-eqz v3, :cond_1

    .line 237
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mExtraLargeFontIndex:I

    .line 240
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v3

    iput v3, p0, Lcom/android/settings/easymode/EasyModeApp;->LARGE_FONT_SCALE:F

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v3

    iput v3, p0, Lcom/android/settings/easymode/EasyModeApp;->EXTRA_LARGE_FONT_SCALE:F

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/easymode/EasyModeApp;->EXTRA_LARGE_FONT_SCALE:F

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getFontIndex(Landroid/content/Context;F)I

    move-result v3

    iput v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mExtraLargeFontIndex:I

    .line 245
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 249
    .local v2, "resources":Landroid/content/res/Resources;
    if-eqz v2, :cond_3

    .line 250
    const v3, 0x7f0c00a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0c00b0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    const v4, 0x7f0c00ac

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mListdividerInsetSize:I

    .line 254
    :cond_3
    return-void

    .end local v2    # "resources":Landroid/content/res/Resources;
    :cond_4
    move v3, v5

    .line 228
    goto/16 :goto_0

    :cond_5
    move v4, v5

    .line 230
    goto/16 :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .param p1, "dialogId"    # I

    .prologue
    const/4 v7, 0x0

    .line 1243
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-nez v8, :cond_1

    .line 1269
    :cond_0
    :goto_0
    return-object v7

    .line 1247
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1248
    .local v4, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/android/settings/easymode/EasyModeApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1249
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f04017f

    invoke-virtual {v1, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1250
    .local v2, "layout":Landroid/view/View;
    const v8, 0x7f04017e

    invoke-virtual {v1, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1251
    .local v3, "layout_flash":Landroid/view/View;
    const v8, 0x7f0d01ef

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 1252
    .local v5, "mcheck":Landroid/widget/CheckBox;
    const v8, 0x7f0d03e6

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 1253
    .local v6, "mcheck_flash":Landroid/widget/CheckBox;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1255
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const/4 v8, 0x2

    if-ne p1, v8, :cond_0

    .line 1256
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0e1113

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    new-instance v9, Lcom/android/settings/easymode/EasyModeApp$5;

    invoke-direct {v9, p0, v0, v5}, Lcom/android/settings/easymode/EasyModeApp$5;-><init>(Lcom/android/settings/easymode/EasyModeApp;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v5, 0x7f020354

    const/4 v4, 0x0

    .line 982
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_2

    .line 983
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 984
    .local v0, "customView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 985
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mcancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/easymode/EasyModeApp$3;

    invoke-direct {v3, p0}, Lcom/android/settings/easymode/EasyModeApp$3;-><init>(Lcom/android/settings/easymode/EasyModeApp;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 992
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    const v3, 0x7f0e0f74

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 993
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/easymode/EasyModeApp$4;

    invoke-direct {v3, p0}, Lcom/android/settings/easymode/EasyModeApp$4;-><init>(Lcom/android/settings/easymode/EasyModeApp;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1087
    iget-boolean v2, p0, Lcom/android/settings/easymode/EasyModeApp;->isEnabledShowBtnBg:Z

    if-eqz v2, :cond_0

    .line 1088
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mcancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1089
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1092
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v1

    .line 1093
    .local v1, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v1, :cond_1

    .line 1094
    invoke-virtual {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1095
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1100
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/easymode/EasyModeApp;->isSharedDevice:Z

    if-eqz v2, :cond_2

    .line 1101
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1102
    const-string v2, "EasyModeApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SharedDevice: disableButton "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/easymode/EasyModeApp;->isSharedDevice:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    .end local v0    # "customView":Landroid/view/View;
    .end local v1    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->initswitchBtn()V

    .line 295
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v9

    .line 296
    .local v9, "v":Landroid/view/View;
    const-string v1, "EasyModeApp"

    const-string v2, "KKK onCreateView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    const-string v1, "EasyModeApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KKK initPreference : mCurConfig.orientation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v7, 0x0

    .line 307
    .local v7, "header":Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0400c4

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 313
    :goto_1
    invoke-virtual {p0, v7}, Lcom/android/settings/easymode/EasyModeApp;->rebuildLayout(Landroid/view/View;)V

    .line 314
    const v1, 0x102000a

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->list:Landroid/widget/ListView;

    .line 315
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->list:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->list:Landroid/widget/ListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v7, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 319
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mListdividerInsetSize:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 320
    .local v0, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 326
    :goto_2
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->list:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 330
    .end local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;

    const-string v2, "easy_mode_switch"

    invoke-virtual {v1, v2}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v8

    .line 331
    .local v8, "mEasyModeState":I
    const-string v1, "EasyModeApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KKK onCreateView mEasyModeState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v1, 0x1

    if-ne v8, v1, :cond_3

    .line 334
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    .line 335
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    .line 336
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 337
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 344
    :goto_3
    const-string v1, "EasyModeApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KKK onCreateView mModeState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/easymode/EasyModeApp;->updateCheckBoxState(Z)V

    .line 347
    return-object v9

    .line 300
    .end local v7    # "header":Landroid/view/View;
    .end local v8    # "mEasyModeState":I
    :catch_0
    move-exception v6

    .line 301
    .local v6, "e":Landroid/os/RemoteException;
    const-string v1, "EasyModeApp"

    const-string v2, "Unable to retrieve orientation"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 310
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v7    # "header":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0400c3

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    goto/16 :goto_1

    .line 322
    :cond_2
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/easymode/EasyModeApp;->mListdividerInsetSize:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 323
    .restart local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 339
    .end local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    .restart local v8    # "mEasyModeState":I
    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeState:I

    .line 340
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/settings/easymode/EasyModeApp;->selected_value:I

    .line 341
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 342
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_3
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 949
    const-string v0, "EasyModeApp"

    const-string v1, "KKK onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 951
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 435
    const-string v2, "EasyModeApp"

    const-string v3, "KKK onPreferenceChange"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .local v0, "key":Ljava/lang/String;
    move-object v1, p2

    .line 437
    check-cast v1, Ljava/lang/Boolean;

    .line 439
    .local v1, "value":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_3

    .line 440
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 441
    invoke-virtual {p0, v5}, Lcom/android/settings/easymode/EasyModeApp;->setAllOptionCheck(Z)V

    .line 464
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_c

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->checkAllEasyModeApps()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 465
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 469
    :cond_1
    :goto_1
    return v4

    .line 443
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/settings/easymode/EasyModeApp;->setAllOptionCheck(Z)V

    goto :goto_0

    .line 445
    :cond_3
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_4

    .line 446
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 447
    :cond_4
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_5

    .line 448
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 449
    :cond_5
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_6

    .line 450
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 451
    :cond_6
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_7

    .line 452
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 453
    :cond_7
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_8

    .line 454
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 455
    :cond_8
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_9

    .line 456
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 457
    :cond_9
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_a

    .line 458
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 459
    :cond_a
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_b

    .line 460
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 461
    :cond_b
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_0

    .line 462
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 466
    :cond_c
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 467
    iget-object v2, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 429
    const-string v0, "EasyModeApp"

    const-string v1, "onPreferenceClick"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 727
    const-string v0, "EasyModeApp"

    const-string v3, "KKK onPreferenceTreeClick"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 731
    invoke-virtual {p0, v2}, Lcom/android/settings/easymode/EasyModeApp;->setAllOptionCheck(Z)V

    .line 736
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_1

    .line 737
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 738
    :cond_1
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_2

    .line 739
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 740
    :cond_2
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_3

    .line 741
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 742
    :cond_3
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_4

    .line 743
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 744
    :cond_4
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_5

    .line 745
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 746
    :cond_5
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_6

    .line 747
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 748
    :cond_6
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_7

    .line 749
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 750
    :cond_7
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_8

    .line 751
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 752
    :cond_8
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_9

    .line 753
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v1

    :goto_9
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 754
    :cond_9
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->checkAllEasyModeApps()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 755
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 759
    :cond_a
    :goto_a
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 733
    :cond_b
    invoke-virtual {p0, v1}, Lcom/android/settings/easymode/EasyModeApp;->setAllOptionCheck(Z)V

    goto/16 :goto_0

    :cond_c
    move v0, v2

    .line 737
    goto/16 :goto_1

    :cond_d
    move v0, v2

    .line 739
    goto/16 :goto_2

    :cond_e
    move v0, v2

    .line 741
    goto/16 :goto_3

    :cond_f
    move v0, v2

    .line 743
    goto :goto_4

    :cond_10
    move v0, v2

    .line 745
    goto :goto_5

    :cond_11
    move v0, v2

    .line 747
    goto :goto_6

    :cond_12
    move v0, v2

    .line 749
    goto :goto_7

    :cond_13
    move v0, v2

    .line 751
    goto :goto_8

    :cond_14
    move v0, v2

    .line 753
    goto :goto_9

    .line 756
    :cond_15
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_a

    .line 757
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_a
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 942
    const-string v0, "EasyModeApp"

    const-string v1, "KKK onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 944
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mChangeFont:Z

    .line 945
    invoke-direct {p0}, Lcom/android/settings/easymode/EasyModeApp;->updatePreperenceStatus()V

    .line 946
    return-void
.end method

.method public readFontSizePreference()V
    .locals 3

    .prologue
    .line 1115
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    :goto_0
    return-void

    .line 1116
    :catch_0
    move-exception v0

    .line 1117
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EasyModeApp"

    const-string v2, "Unable to retrieve font size"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public rebuildLayout(Landroid/view/View;)V
    .locals 4
    .param p1, "header"    # Landroid/view/View;

    .prologue
    const v3, 0x7f0d0276

    const/4 v2, 0x0

    .line 351
    iput-object p1, p0, Lcom/android/settings/easymode/EasyModeApp;->mTempView:Landroid/view/View;

    .line 352
    const v0, 0x7f0d020b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mModeRadioGroup:Landroid/widget/LinearLayout;

    .line 353
    const v0, 0x7f0d0270

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeLayout:Landroid/widget/LinearLayout;

    .line 354
    const v0, 0x7f0d0273

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeLayout:Landroid/widget/LinearLayout;

    .line 355
    const v0, 0x7f0d0271

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    .line 356
    const v0, 0x7f0d0274

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    .line 357
    const v0, 0x7f0d0277

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    .line 358
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mPreviewImageView:Landroid/widget/ImageView;

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mPreviewImageView:Landroid/widget/ImageView;

    const v1, 0x7f0200cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 362
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mPreviewImage:Landroid/graphics/drawable/Drawable;

    .line 364
    const v0, 0x7f0d0272

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mStdTextView:Landroid/widget/TextView;

    .line 365
    const v0, 0x7f0d0275

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyTextView:Landroid/widget/TextView;

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->setFontSizeIfNeeded()V

    .line 368
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 369
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 370
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mStandardModeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-boolean v0, p0, Lcom/android/settings/easymode/EasyModeApp;->isSharedDevice:Z

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 376
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 377
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setFocusable(Z)V

    .line 378
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 379
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 380
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 381
    const-string v0, "EasyModeApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SharedDevice: disableButton "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/easymode/EasyModeApp;->isSharedDevice:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_1
    return-void
.end method

.method public setAllOptionCheck(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 920
    const-string v0, "EasyModeApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KKK setAllOptionCheck state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_camera:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 924
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_email:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 925
    :cond_1
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    .line 926
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_gallery:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 927
    :cond_2
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    .line 928
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_internet:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 929
    :cond_3
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_4

    .line 930
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_messages:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 931
    :cond_4
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_5

    .line 932
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_music:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 933
    :cond_5
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_6

    .line 934
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_phone:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 935
    :cond_6
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_7

    .line 936
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_splanner:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 937
    :cond_7
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_8

    .line 938
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp;->easy_mode_video:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 939
    :cond_8
    return-void
.end method

.method public setDefaultLauncher(Z)V
    .locals 14
    .param p1, "isEasy"    # Z

    .prologue
    .line 1158
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1159
    .local v2, "context":Landroid/content/Context;
    const-string v10, "EasyModeApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "KKK setDefaultLauncher isEasy : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1161
    .local v9, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v10, "android.intent.category.HOME"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1162
    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1164
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1165
    .local v4, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v3

    .line 1166
    .local v3, "currentDefaultHome":Landroid/content/ComponentName;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v8, v10, [Landroid/content/ComponentName;

    .line 1167
    .local v8, "mHomeComponentSet":[Landroid/content/ComponentName;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_5

    invoke-direct {p0, v2}, Lcom/android/settings/easymode/EasyModeApp;->isKnoxmode(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1169
    const/4 v10, 0x2

    new-array v8, v10, [Landroid/content/ComponentName;

    .line 1170
    const/4 v10, 0x0

    new-instance v11, Landroid/content/ComponentName;

    const-string v12, "com.sec.android.app.easylauncher"

    const-string v13, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v8, v10

    .line 1171
    invoke-static {v2}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v2}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    invoke-static {v2}, Lcom/android/settings/Utils;->isZeroLauncher(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1173
    :cond_1
    const/4 v10, 0x1

    new-instance v11, Landroid/content/ComponentName;

    const-string v12, "com.sec.android.app.launcher"

    const-string v13, "com.android.launcher2.Launcher"

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v8, v10

    .line 1188
    :cond_2
    :goto_0
    new-instance v7, Landroid/content/ComponentName;

    const-string v10, "com.sec.android.app.launcher"

    const-string v11, "com.sec.android.app.launcher.activities.LauncherActivity"

    invoke-direct {v7, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    .local v7, "mDefaultCN":Landroid/content/ComponentName;
    if-eqz p1, :cond_6

    .line 1190
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.sec.android.app.launcher"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1191
    new-instance v7, Landroid/content/ComponentName;

    .end local v7    # "mDefaultCN":Landroid/content/ComponentName;
    const-string v10, "com.sec.android.app.easylauncher"

    const-string v11, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v7, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    .restart local v7    # "mDefaultCN":Landroid/content/ComponentName;
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/high16 v11, 0x100000

    invoke-virtual {v10, v9, v11, v8, v7}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1202
    return-void

    .line 1175
    .end local v7    # "mDefaultCN":Landroid/content/ComponentName;
    :cond_4
    const/4 v10, 0x1

    new-instance v11, Landroid/content/ComponentName;

    const-string v12, "com.sec.android.app.launcher"

    const-string v13, "com.sec.android.app.launcher.activities.LauncherActivity"

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v8, v10

    goto :goto_0

    .line 1179
    :cond_5
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_2

    .line 1180
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1181
    .local v1, "candidate":Landroid/content/pm/ResolveInfo;
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1183
    .local v6, "info":Landroid/content/pm/ActivityInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v10, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    .local v0, "activityName":Landroid/content/ComponentName;
    aput-object v0, v8, v5

    .line 1185
    const-string v10, "EasyModeApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "make mHomeComponentSet ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] value : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1193
    .end local v0    # "activityName":Landroid/content/ComponentName;
    .end local v1    # "candidate":Landroid/content/pm/ResolveInfo;
    .end local v5    # "i":I
    .end local v6    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "mDefaultCN":Landroid/content/ComponentName;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.sec.android.app.easylauncher"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1194
    invoke-static {v2}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1195
    new-instance v7, Landroid/content/ComponentName;

    .end local v7    # "mDefaultCN":Landroid/content/ComponentName;
    const-string v10, "com.nttdocomo.android.dhome"

    const-string v11, "com.nttdocomo.android.dhome.HomeActivity"

    invoke-direct {v7, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v7    # "mDefaultCN":Landroid/content/ComponentName;
    goto :goto_1

    .line 1196
    :cond_7
    invoke-static {v2}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {v2}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_9

    :cond_8
    invoke-static {v2}, Lcom/android/settings/Utils;->isZeroLauncher(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1198
    :cond_9
    new-instance v7, Landroid/content/ComponentName;

    .end local v7    # "mDefaultCN":Landroid/content/ComponentName;
    const-string v10, "com.sec.android.app.launcher"

    const-string v11, "com.android.launcher2.Launcher"

    invoke-direct {v7, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v7    # "mDefaultCN":Landroid/content/ComponentName;
    goto/16 :goto_1
.end method

.method public setFontSizeIfNeeded()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_size"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 389
    .local v0, "fontIndex":I
    const/4 v3, 0x6

    if-le v0, v3, :cond_0

    .line 390
    const-string v3, "EasyModeApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set extra lare font, font index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v1

    .line 392
    .local v1, "fontScale":F
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mStdTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v2, v3, v4

    .line 393
    .local v2, "fontsize":F
    const-string v3, "EasyModeApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTextSize/scaledDensity : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mStdTextView:Landroid/widget/TextView;

    mul-float v4, v2, v1

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 396
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mEasyTextView:Landroid/widget/TextView;

    mul-float v4, v2, v1

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 398
    .end local v1    # "fontScale":F
    .end local v2    # "fontsize":F
    :cond_0
    return-void
.end method

.method public setLargeFont()V
    .locals 7

    .prologue
    .line 861
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_size"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 868
    .local v2, "previousIndex":I
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_size"

    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/easymode/EasyModeApp;->LARGE_FONT_SCALE:F

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->getFontIndex(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 871
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "STANDARD_FONT_SIZE"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 873
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/easymode/EasyModeApp;->EXTRA_LARGE_FONT_SCALE:F

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getFontIndex(Landroid/content/Context;F)I

    move-result v3

    if-le v2, v3, :cond_0

    .line 874
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 875
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "large_font"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 876
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 877
    const-string v3, "EasyModeApp"

    const-string v4, "KKK android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    iget v3, p0, Lcom/android/settings/easymode/EasyModeApp;->LARGE_FONT_SCALE:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/easymode/EasyModeApp;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 881
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->readFontSizePreference()V

    .line 882
    return-void

    .line 862
    .end local v2    # "previousIndex":I
    :catch_0
    move-exception v0

    .line 863
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "EasyModeApp"

    const-string v4, "Unable to retrieve font size"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setStandardFont()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 886
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "STANDARD_FONT_SIZE"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 892
    .local v1, "fontIndex":I
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->objValue:Ljava/lang/Object;

    .line 894
    const-string v4, "EasyModeApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KKK setStandardFont fontIndex : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " objValue : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/easymode/EasyModeApp;->objValue:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "font_size"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 896
    .local v3, "previousIndex":I
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "font_size"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 898
    iget-boolean v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mIsFont11Level:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mExtraLargeFontIndex:I

    if-le v1, v4, :cond_0

    .line 899
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 900
    .local v2, "i":Landroid/content/Intent;
    const-string v4, "large_font"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 901
    const-string v4, "EasyModeApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 915
    :goto_1
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->objValue:Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lcom/android/settings/easymode/EasyModeApp;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 916
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->readFontSizePreference()V

    .line 917
    return-void

    .line 887
    .end local v1    # "fontIndex":I
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "previousIndex":I
    :catch_0
    move-exception v0

    .line 888
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "EasyModeApp"

    const-string v5, "Unable to retrieve font size"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 904
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "fontIndex":I
    .restart local v3    # "previousIndex":I
    :cond_0
    iget v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mExtraLargeFontIndex:I

    if-gt v3, v4, :cond_1

    iget v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mExtraLargeFontIndex:I

    if-le v1, v4, :cond_1

    .line 905
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 906
    .restart local v2    # "i":Landroid/content/Intent;
    const-string v4, "large_font"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 907
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 908
    const-string v4, "EasyModeApp"

    const-string v5, "setStandardFont android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 910
    .end local v2    # "i":Landroid/content/Intent;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 911
    .restart local v2    # "i":Landroid/content/Intent;
    const-string v4, "large_font"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 912
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 913
    const-string v4, "EasyModeApp"

    const-string v5, "setStandardFont android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 6
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 1123
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 1126
    .local v1, "fontScale":F
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v2

    .line 1127
    .local v2, "largeFontScale":F
    iget-boolean v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mIsFont11Level:Z

    if-eqz v3, :cond_0

    .line 1128
    invoke-virtual {p0}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v2

    .line 1131
    :cond_0
    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    .line 1132
    move v1, v2

    .line 1134
    :cond_1
    iget-object v3, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    iput v1, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 1135
    const-string v3, "EasyModeApp"

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

    .line 1136
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1140
    .end local v1    # "fontScale":F
    .end local v2    # "largeFontScale":F
    :goto_0
    return-void

    .line 1137
    :catch_0
    move-exception v0

    .line 1138
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "EasyModeApp"

    const-string v4, "Unable to save font size"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
