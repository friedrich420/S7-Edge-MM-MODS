.class public Lcom/android/settings/DisplayScalingActivity;
.super Landroid/app/Activity;
.source "DisplayScalingActivity.java"


# static fields
.field private static mPackageName:[Ljava/lang/String;


# instance fields
.field private isCondensed:Z

.field private isEnabledShowBtnBg:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mCalendarIcon:Landroid/widget/ImageView;

.field private mCalendarIcon1:Landroid/widget/ImageView;

.field private mCalendarIcon2:Landroid/widget/ImageView;

.field private mCalendarLayout:Landroid/widget/LinearLayout;

.field private mCalendarLayout1:Landroid/widget/LinearLayout;

.field private mCalendarLayout2:Landroid/widget/LinearLayout;

.field private mCalendarTitle:Landroid/widget/TextView;

.field private mCalendarTitle1:Landroid/widget/TextView;

.field private mCalendarTitle2:Landroid/widget/TextView;

.field private mCameraIcon:Landroid/widget/ImageView;

.field private mCameraIcon1:Landroid/widget/ImageView;

.field private mCameraIcon2:Landroid/widget/ImageView;

.field private mCameraLayout:Landroid/widget/LinearLayout;

.field private mCameraLayout1:Landroid/widget/LinearLayout;

.field private mCameraLayout2:Landroid/widget/LinearLayout;

.field private mCondensedClickListener:Landroid/view/View$OnClickListener;

.field private mCondensedLayout:Landroid/widget/LinearLayout;

.field private mCondensedList:Landroid/widget/LinearLayout;

.field private mCondensedRadio:Landroid/widget/RadioButton;

.field private mCondensedStandardList:Landroid/widget/LinearLayout;

.field private mContactsIcon:Landroid/widget/ImageView;

.field private mContactsIcon1:Landroid/widget/ImageView;

.field private mContactsIcon2:Landroid/widget/ImageView;

.field private mContactsLayout:Landroid/widget/LinearLayout;

.field private mContactsLayout1:Landroid/widget/LinearLayout;

.field private mContactsLayout2:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mEmilIcon:Landroid/widget/ImageView;

.field private mEmilIcon1:Landroid/widget/ImageView;

.field private mEmilIcon2:Landroid/widget/ImageView;

.field private mEmilLayout:Landroid/widget/LinearLayout;

.field private mEmilLayout1:Landroid/widget/LinearLayout;

.field private mEmilLayout2:Landroid/widget/LinearLayout;

.field private mGalleryIcon:Landroid/widget/ImageView;

.field private mGalleryIcon1:Landroid/widget/ImageView;

.field private mGalleryIcon2:Landroid/widget/ImageView;

.field private mGalleryLayout:Landroid/widget/LinearLayout;

.field private mGalleryLayout1:Landroid/widget/LinearLayout;

.field private mGalleryLayout2:Landroid/widget/LinearLayout;

.field private mInternetIcon:Landroid/widget/ImageView;

.field private mInternetIcon1:Landroid/widget/ImageView;

.field private mInternetIcon2:Landroid/widget/ImageView;

.field private mInternetLayout:Landroid/widget/LinearLayout;

.field private mInternetLayout1:Landroid/widget/LinearLayout;

.field private mInternetLayout2:Landroid/widget/LinearLayout;

.field private mMessagesIcon:Landroid/widget/ImageView;

.field private mMessagesIcon1:Landroid/widget/ImageView;

.field private mMessagesIcon2:Landroid/widget/ImageView;

.field private mMessagesLayout:Landroid/widget/LinearLayout;

.field private mMessagesLayout1:Landroid/widget/LinearLayout;

.field private mMessagesLayout2:Landroid/widget/LinearLayout;

.field private mMusicIcon:Landroid/widget/ImageView;

.field private mMusicIcon1:Landroid/widget/ImageView;

.field private mMusicIcon2:Landroid/widget/ImageView;

.field private mMusicLayout:Landroid/widget/LinearLayout;

.field private mMusicLayout1:Landroid/widget/LinearLayout;

.field private mMusicLayout2:Landroid/widget/LinearLayout;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSVoiceIcon:Landroid/widget/ImageView;

.field private mSVoiceIcon1:Landroid/widget/ImageView;

.field private mSVoiceIcon2:Landroid/widget/ImageView;

.field private mSVoiceLayout:Landroid/widget/LinearLayout;

.field private mSVoiceLayout1:Landroid/widget/LinearLayout;

.field private mSVoiceLayout2:Landroid/widget/LinearLayout;

.field private mSaveButton:Landroid/widget/Button;

.field private mStandardClickListener:Landroid/view/View$OnClickListener;

.field private mStandardLayout:Landroid/widget/LinearLayout;

.field private mStandardList:Landroid/widget/LinearLayout;

.field private mStandardRadio:Landroid/widget/RadioButton;

.field private mWeatherIcon:Landroid/widget/ImageView;

.field private mWeatherIcon1:Landroid/widget/ImageView;

.field private mWeatherIcon2:Landroid/widget/ImageView;

.field private mWeatherLayout:Landroid/widget/LinearLayout;

.field private mWeatherLayout1:Landroid/widget/LinearLayout;

.field private mWeatherLayout2:Landroid/widget/LinearLayout;

.field private mWindowmanager:Landroid/view/IWindowManager;

.field private mcancelButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 151
    const/16 v0, 0xb

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

    const-string v2, "com.samsung.voiceserviceplatform"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.samsung.android.weather"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 144
    iput-boolean v0, p0, Lcom/android/settings/DisplayScalingActivity;->isCondensed:Z

    .line 145
    iput-boolean v0, p0, Lcom/android/settings/DisplayScalingActivity;->isEnabledShowBtnBg:Z

    .line 165
    new-instance v0, Lcom/android/settings/DisplayScalingActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplayScalingActivity$1;-><init>(Lcom/android/settings/DisplayScalingActivity;)V

    iput-object v0, p0, Lcom/android/settings/DisplayScalingActivity;->mStandardClickListener:Landroid/view/View$OnClickListener;

    .line 183
    new-instance v0, Lcom/android/settings/DisplayScalingActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplayScalingActivity$2;-><init>(Lcom/android/settings/DisplayScalingActivity;)V

    iput-object v0, p0, Lcom/android/settings/DisplayScalingActivity;->mCondensedClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DisplayScalingActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplayScalingActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/DisplayScalingActivity;->mStandardRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DisplayScalingActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplayScalingActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/DisplayScalingActivity;->mCondensedRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DisplayScalingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplayScalingActivity;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/settings/DisplayScalingActivity;->isCondensed:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/DisplayScalingActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplayScalingActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/DisplayScalingActivity;->mStandardList:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/DisplayScalingActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplayScalingActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/DisplayScalingActivity;->mCondensedList:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/DisplayScalingActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplayScalingActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/DisplayScalingActivity;->mCondensedStandardList:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/DisplayScalingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DisplayScalingActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/DisplayScalingActivity;->resetDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/DisplayScalingActivity;)Landroid/view/IWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplayScalingActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/DisplayScalingActivity;->mWindowmanager:Landroid/view/IWindowManager;

    return-object v0
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/android/settings/DisplayScalingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplayScalingActivity;->mActionBar:Landroid/app/ActionBar;

    .line 326
    iget-object v0, p0, Lcom/android/settings/DisplayScalingActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 327
    iget-object v0, p0, Lcom/android/settings/DisplayScalingActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f040081

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 328
    return-void
.end method

.method private resetDialog()V
    .locals 4

    .prologue
    .line 375
    const-string v1, "DisplayScalingActivity"

    const-string v2, "resetDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e16f3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e15f5

    new-instance v3, Lcom/android/settings/DisplayScalingActivity$6;

    invoke-direct {v3, p0}, Lcom/android/settings/DisplayScalingActivity$6;-><init>(Lcom/android/settings/DisplayScalingActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/DisplayScalingActivity$5;

    invoke-direct {v3, p0}, Lcom/android/settings/DisplayScalingActivity$5;-><init>(Lcom/android/settings/DisplayScalingActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 404
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/android/settings/DisplayScalingActivity$7;

    invoke-direct {v1, p0}, Lcom/android/settings/DisplayScalingActivity$7;-><init>(Lcom/android/settings/DisplayScalingActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 411
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 412
    return-void
.end method

.method private updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .locals 4
    .param p1, "mImageView"    # Landroid/widget/ImageView;
    .param p2, "ainfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 517
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/DisplayScalingActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 518
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 519
    .local v0, "clone":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 520
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    .end local v0    # "clone":Landroid/graphics/drawable/Drawable;
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 521
    :catch_0
    move-exception v1

    .line 522
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private updatePreperenceStatus()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 415
    sget-object v4, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    array-length v3, v4

    .line 416
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_14

    .line 418
    :try_start_0
    sget-object v4, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string v5, "music"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 419
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v4

    if-nez v4, :cond_0

    .line 420
    sget-object v4, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    const-string v5, "com.samsung.android.app.music.chn"

    aput-object v5, v4, v2

    .line 423
    :cond_0
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mPm:Landroid/content/pm/PackageManager;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 424
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mPm:Landroid/content/pm/PackageManager;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 425
    .local v0, "ainfo":Landroid/content/pm/ApplicationInfo;
    const-string v4, "com.sec.android.app.camera"

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 426
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mCameraIcon:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 427
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mCameraIcon1:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 428
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mCameraIcon2:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 416
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 429
    .restart local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    const-string v4, "com.android.contacts"

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 430
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mContactsIcon:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 431
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mContactsIcon1:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 432
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mContactsIcon2:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 469
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 470
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "com.sec.android.app.camera"

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 471
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mCameraLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 472
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mCameraLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 473
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mCameraLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 433
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :cond_3
    :try_start_1
    const-string v4, "com.samsung.android.email.provider"

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 434
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mEmilIcon:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 435
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mEmilIcon1:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 436
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mEmilIcon2:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto :goto_1

    .line 437
    :cond_4
    const-string v4, "com.sec.android.gallery3d"

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 438
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mGalleryIcon:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 439
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mGalleryIcon1:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 440
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mGalleryIcon2:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 441
    :cond_5
    const-string v4, "com.sec.android.app.sbrowser"

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 442
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mInternetIcon:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 443
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mInternetIcon1:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 444
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mInternetIcon2:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 445
    :cond_6
    const-string v4, "com.android.mms"

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 446
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mMessagesIcon:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 447
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mMessagesIcon1:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 448
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mMessagesIcon2:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 449
    :cond_7
    sget-object v4, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string v5, "music"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 450
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mMusicIcon:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 451
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mMusicIcon1:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 452
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mMusicIcon2:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 453
    :cond_8
    const-string v4, "com.android.calendar"

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 454
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mCalendarIcon:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 455
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mCalendarIcon1:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 456
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mCalendarIcon2:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 457
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mCalendarTitle:Landroid/widget/TextView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updateTitlePreperence(Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 458
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mCalendarTitle1:Landroid/widget/TextView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updateTitlePreperence(Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 459
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mCalendarTitle2:Landroid/widget/TextView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updateTitlePreperence(Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 460
    :cond_9
    const-string v4, "com.samsung.voiceserviceplatform"

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 461
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mSVoiceIcon:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 462
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mSVoiceIcon1:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 463
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mSVoiceIcon2:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 464
    :cond_a
    const-string v4, "com.samsung.android.weather"

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 465
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mWeatherIcon:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 466
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mWeatherIcon1:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 467
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mWeatherIcon2:Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v4, v0, v5}, Lcom/android/settings/DisplayScalingActivity;->updatePreperence(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 474
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_b
    const-string v4, "com.android.contacts"

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 475
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mContactsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 476
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mContactsLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 477
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mContactsLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 478
    :cond_c
    const-string v4, "com.samsung.android.email.provider"

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 479
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mEmilLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 480
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mEmilLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 481
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mEmilLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 482
    :cond_d
    const-string v4, "com.sec.android.gallery3d"

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 483
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mGalleryLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 484
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mGalleryLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 485
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mGalleryLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 486
    :cond_e
    const-string v4, "com.sec.android.app.sbrowser"

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 487
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mInternetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 488
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mInternetLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 489
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mInternetLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 490
    :cond_f
    const-string v4, "com.android.mms"

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 491
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mMessagesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 492
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mMessagesLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 493
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mMessagesLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 494
    :cond_10
    sget-object v4, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string v5, "music"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 495
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mMusicLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 496
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mMusicLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 497
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mMusicLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 498
    :cond_11
    const-string v4, "com.android.calendar"

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 499
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mCalendarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 500
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mCalendarLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 501
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mCalendarLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 502
    :cond_12
    const-string v4, "com.samsung.voiceserviceplatform"

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 503
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mSVoiceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 504
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mSVoiceLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 505
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mSVoiceLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 506
    :cond_13
    const-string v4, "com.samsung.android.weather"

    sget-object v5, Lcom/android/settings/DisplayScalingActivity;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 507
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mWeatherLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 508
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mWeatherLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 509
    iget-object v4, p0, Lcom/android/settings/DisplayScalingActivity;->mWeatherLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 513
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_14
    return-void
.end method

.method private updateTitlePreperence(Landroid/widget/TextView;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "mTextView"    # Landroid/widget/TextView;
    .param p2, "ainfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/settings/DisplayScalingActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 203
    const-string v2, "DisplayScalingActivity"

    const-string v5, "KKK onCreate"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 206
    const v2, 0x7f0400bb

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->setContentView(I)V

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/DisplayScalingActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mContext:Landroid/content/Context;

    .line 210
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mWindowmanager:Landroid/view/IWindowManager;

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/DisplayScalingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "show_button_background"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/DisplayScalingActivity;->isEnabledShowBtnBg:Z

    .line 214
    invoke-direct {p0}, Lcom/android/settings/DisplayScalingActivity;->configureActionBar()V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/DisplayScalingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 218
    const v2, 0x7f0d020c

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mStandardLayout:Landroid/widget/LinearLayout;

    .line 219
    const v2, 0x7f0d020f

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mCondensedLayout:Landroid/widget/LinearLayout;

    .line 220
    const v2, 0x7f0d020d

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mStandardRadio:Landroid/widget/RadioButton;

    .line 221
    const v2, 0x7f0d0210

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mCondensedRadio:Landroid/widget/RadioButton;

    .line 223
    const v2, 0x7f0d0250

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mCameraLayout:Landroid/widget/LinearLayout;

    .line 224
    const v2, 0x7f0d0253

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mContactsLayout:Landroid/widget/LinearLayout;

    .line 225
    const v2, 0x7f0d0256

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mEmilLayout:Landroid/widget/LinearLayout;

    .line 226
    const v2, 0x7f0d0259

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mGalleryLayout:Landroid/widget/LinearLayout;

    .line 227
    const v2, 0x7f0d025c

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mInternetLayout:Landroid/widget/LinearLayout;

    .line 228
    const v2, 0x7f0d025f

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mMessagesLayout:Landroid/widget/LinearLayout;

    .line 229
    const v2, 0x7f0d0262

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mMusicLayout:Landroid/widget/LinearLayout;

    .line 230
    const v2, 0x7f0d0265

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mCalendarLayout:Landroid/widget/LinearLayout;

    .line 231
    const v2, 0x7f0d0268

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mSVoiceLayout:Landroid/widget/LinearLayout;

    .line 232
    const v2, 0x7f0d026b

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mWeatherLayout:Landroid/widget/LinearLayout;

    .line 234
    const v2, 0x7f0d0214

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mCameraLayout1:Landroid/widget/LinearLayout;

    .line 235
    const v2, 0x7f0d0217

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mContactsLayout1:Landroid/widget/LinearLayout;

    .line 236
    const v2, 0x7f0d021a

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mEmilLayout1:Landroid/widget/LinearLayout;

    .line 237
    const v2, 0x7f0d021d

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mGalleryLayout1:Landroid/widget/LinearLayout;

    .line 238
    const v2, 0x7f0d0220

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mInternetLayout1:Landroid/widget/LinearLayout;

    .line 239
    const v2, 0x7f0d0223

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mMessagesLayout1:Landroid/widget/LinearLayout;

    .line 240
    const v2, 0x7f0d0226

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mMusicLayout1:Landroid/widget/LinearLayout;

    .line 241
    const v2, 0x7f0d0229

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mCalendarLayout1:Landroid/widget/LinearLayout;

    .line 242
    const v2, 0x7f0d022c

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mSVoiceLayout1:Landroid/widget/LinearLayout;

    .line 243
    const v2, 0x7f0d022f

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mWeatherLayout1:Landroid/widget/LinearLayout;

    .line 245
    const v2, 0x7f0d0232

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mCameraLayout2:Landroid/widget/LinearLayout;

    .line 246
    const v2, 0x7f0d0235

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mContactsLayout2:Landroid/widget/LinearLayout;

    .line 247
    const v2, 0x7f0d0238

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mEmilLayout2:Landroid/widget/LinearLayout;

    .line 248
    const v2, 0x7f0d023b

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mGalleryLayout2:Landroid/widget/LinearLayout;

    .line 249
    const v2, 0x7f0d023e

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mInternetLayout2:Landroid/widget/LinearLayout;

    .line 250
    const v2, 0x7f0d0241

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mMessagesLayout2:Landroid/widget/LinearLayout;

    .line 251
    const v2, 0x7f0d0244

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mMusicLayout2:Landroid/widget/LinearLayout;

    .line 252
    const v2, 0x7f0d0247

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mCalendarLayout2:Landroid/widget/LinearLayout;

    .line 253
    const v2, 0x7f0d024a

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mSVoiceLayout2:Landroid/widget/LinearLayout;

    .line 254
    const v2, 0x7f0d024d

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mWeatherLayout2:Landroid/widget/LinearLayout;

    .line 256
    const v2, 0x7f0d0251

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mCameraIcon:Landroid/widget/ImageView;

    .line 257
    const v2, 0x7f0d0254

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mContactsIcon:Landroid/widget/ImageView;

    .line 258
    const v2, 0x7f0d0257

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mEmilIcon:Landroid/widget/ImageView;

    .line 259
    const v2, 0x7f0d025a

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mGalleryIcon:Landroid/widget/ImageView;

    .line 260
    const v2, 0x7f0d025d

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mInternetIcon:Landroid/widget/ImageView;

    .line 261
    const v2, 0x7f0d0260

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mMessagesIcon:Landroid/widget/ImageView;

    .line 262
    const v2, 0x7f0d0263

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mMusicIcon:Landroid/widget/ImageView;

    .line 263
    const v2, 0x7f0d0266

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mCalendarIcon:Landroid/widget/ImageView;

    .line 264
    const v2, 0x7f0d0269

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mSVoiceIcon:Landroid/widget/ImageView;

    .line 265
    const v2, 0x7f0d026c

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mWeatherIcon:Landroid/widget/ImageView;

    .line 267
    const v2, 0x7f0d0215

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mCameraIcon1:Landroid/widget/ImageView;

    .line 268
    const v2, 0x7f0d0218

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mContactsIcon1:Landroid/widget/ImageView;

    .line 269
    const v2, 0x7f0d021b

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mEmilIcon1:Landroid/widget/ImageView;

    .line 270
    const v2, 0x7f0d021e

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mGalleryIcon1:Landroid/widget/ImageView;

    .line 271
    const v2, 0x7f0d0221

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mInternetIcon1:Landroid/widget/ImageView;

    .line 272
    const v2, 0x7f0d0224

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mMessagesIcon1:Landroid/widget/ImageView;

    .line 273
    const v2, 0x7f0d0227

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mMusicIcon1:Landroid/widget/ImageView;

    .line 274
    const v2, 0x7f0d022a

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mCalendarIcon1:Landroid/widget/ImageView;

    .line 275
    const v2, 0x7f0d022d

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mSVoiceIcon1:Landroid/widget/ImageView;

    .line 276
    const v2, 0x7f0d0230

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mWeatherIcon1:Landroid/widget/ImageView;

    .line 278
    const v2, 0x7f0d0233

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mCameraIcon2:Landroid/widget/ImageView;

    .line 279
    const v2, 0x7f0d0236

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mContactsIcon2:Landroid/widget/ImageView;

    .line 280
    const v2, 0x7f0d0239

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mEmilIcon2:Landroid/widget/ImageView;

    .line 281
    const v2, 0x7f0d023c

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mGalleryIcon2:Landroid/widget/ImageView;

    .line 282
    const v2, 0x7f0d023f

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mInternetIcon2:Landroid/widget/ImageView;

    .line 283
    const v2, 0x7f0d0242

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mMessagesIcon2:Landroid/widget/ImageView;

    .line 284
    const v2, 0x7f0d0245

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mMusicIcon2:Landroid/widget/ImageView;

    .line 285
    const v2, 0x7f0d0248

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mCalendarIcon2:Landroid/widget/ImageView;

    .line 286
    const v2, 0x7f0d024b

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mSVoiceIcon2:Landroid/widget/ImageView;

    .line 287
    const v2, 0x7f0d024e

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mWeatherIcon2:Landroid/widget/ImageView;

    .line 289
    const v2, 0x7f0d0211

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mStandardList:Landroid/widget/LinearLayout;

    .line 290
    const v2, 0x7f0d0212

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mCondensedList:Landroid/widget/LinearLayout;

    .line 291
    const v2, 0x7f0d0213

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mCondensedStandardList:Landroid/widget/LinearLayout;

    .line 293
    const v2, 0x7f0d0267

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mCalendarTitle:Landroid/widget/TextView;

    .line 294
    const v2, 0x7f0d022b

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mCalendarTitle1:Landroid/widget/TextView;

    .line 295
    const v2, 0x7f0d0249

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplayScalingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mCalendarTitle2:Landroid/widget/TextView;

    .line 297
    iget-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mStandardLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/settings/DisplayScalingActivity;->mStandardClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mCondensedLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/settings/DisplayScalingActivity;->mCondensedClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    invoke-direct {p0}, Lcom/android/settings/DisplayScalingActivity;->updatePreperenceStatus()V

    .line 302
    const-string v2, "ro.sf.lcd_density"

    const/16 v5, 0xa0

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 304
    .local v1, "deviceDensity":I
    const/16 v2, 0x230

    if-ne v1, v2, :cond_1

    .line 305
    const/4 v0, 0x1

    .line 309
    .local v0, "defualtValue":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DisplayScalingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "condensed"

    invoke-static {v2, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/settings/DisplayScalingActivity;->isCondensed:Z

    .line 310
    iget-boolean v2, p0, Lcom/android/settings/DisplayScalingActivity;->isCondensed:Z

    if-eqz v2, :cond_3

    .line 311
    iget-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mCondensedRadio:Landroid/widget/RadioButton;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 315
    :goto_3
    iget-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mStandardList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 316
    return-void

    .end local v0    # "defualtValue":I
    .end local v1    # "deviceDensity":I
    :cond_0
    move v2, v4

    .line 212
    goto/16 :goto_0

    .line 307
    .restart local v1    # "deviceDensity":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "defualtValue":I
    goto :goto_1

    :cond_2
    move v2, v4

    .line 309
    goto :goto_2

    .line 313
    :cond_3
    iget-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mStandardRadio:Landroid/widget/RadioButton;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v3, 0x7f020354

    .line 332
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 334
    iget-object v1, p0, Lcom/android/settings/DisplayScalingActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/settings/DisplayScalingActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 336
    .local v0, "customView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 337
    const v1, 0x7f0d015b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/DisplayScalingActivity;->mcancelButton:Landroid/widget/Button;

    .line 338
    iget-object v1, p0, Lcom/android/settings/DisplayScalingActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mcancelButton:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    .line 339
    iget-object v1, p0, Lcom/android/settings/DisplayScalingActivity;->mcancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/DisplayScalingActivity$3;

    invoke-direct {v2, p0}, Lcom/android/settings/DisplayScalingActivity$3;-><init>(Lcom/android/settings/DisplayScalingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    const v1, 0x7f0d015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/DisplayScalingActivity;->mSaveButton:Landroid/widget/Button;

    .line 347
    iget-object v1, p0, Lcom/android/settings/DisplayScalingActivity;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f0e0d05

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 348
    iget-object v1, p0, Lcom/android/settings/DisplayScalingActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/DisplayScalingActivity;->mSaveButton:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    .line 349
    iget-object v1, p0, Lcom/android/settings/DisplayScalingActivity;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/DisplayScalingActivity$4;

    invoke-direct {v2, p0}, Lcom/android/settings/DisplayScalingActivity$4;-><init>(Lcom/android/settings/DisplayScalingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-boolean v1, p0, Lcom/android/settings/DisplayScalingActivity;->isEnabledShowBtnBg:Z

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/android/settings/DisplayScalingActivity;->mcancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 367
    iget-object v1, p0, Lcom/android/settings/DisplayScalingActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 371
    .end local v0    # "customView":Landroid/view/View;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 320
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/DisplayScalingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 322
    return-void
.end method
