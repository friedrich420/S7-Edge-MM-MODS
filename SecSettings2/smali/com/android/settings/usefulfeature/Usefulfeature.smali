.class public Lcom/android/settings/usefulfeature/Usefulfeature;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Usefulfeature.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static componentNameOfDoubleTapOnHomeCommandIntent:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field public static final mMotionFeatures:[Ljava/lang/String;

.field private static mSupportMcc:[Ljava/lang/String;


# instance fields
.field private mCategoryFour:Landroid/preference/PreferenceCategory;

.field private mCategoryThree:Landroid/preference/PreferenceCategory;

.field private mCategoryTwo:Landroid/preference/PreferenceCategory;

.field private mGalaxyLabs:Landroid/preference/Preference;

.field private mGameHome:Landroid/preference/PreferenceScreen;

.field private mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

.field private final mIdentifyUnsavedNumbersObserver:Landroid/database/ContentObserver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMergedMutePauseSwitch:Landroid/preference/Preference;

.field private final mMultiWindowObserver:Landroid/database/ContentObserver;

.field private mMultiWindowSettingSwitch:Landroid/preference/Preference;

.field private mOneHandOperation:Landroid/preference/PreferenceScreen;

.field private mPalmSwipeSwitch:Landroid/preference/Preference;

.field private final mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

.field private final mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPickUpSwitch:Landroid/preference/Preference;

.field private mPickUpToCallOutSwitch:Landroid/preference/Preference;

.field private mQuickCameraLaunch:Landroid/preference/SwitchPreference;

.field private mSamrtCapture:Landroid/preference/Preference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 89
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

    sput-object v0, Lcom/android/settings/usefulfeature/Usefulfeature;->mMotionFeatures:[Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    .line 766
    new-instance v0, Lcom/android/settings/usefulfeature/Usefulfeature$7;

    invoke-direct {v0}, Lcom/android/settings/usefulfeature/Usefulfeature$7;-><init>()V

    sput-object v0, Lcom/android/settings/usefulfeature/Usefulfeature;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 135
    new-instance v0, Lcom/android/settings/usefulfeature/Usefulfeature$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/usefulfeature/Usefulfeature$1;-><init>(Lcom/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    .line 143
    new-instance v0, Lcom/android/settings/usefulfeature/Usefulfeature$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/usefulfeature/Usefulfeature$2;-><init>(Lcom/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    .line 179
    new-instance v0, Lcom/android/settings/usefulfeature/Usefulfeature$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/usefulfeature/Usefulfeature$3;-><init>(Lcom/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mMultiWindowObserver:Landroid/database/ContentObserver;

    .line 193
    new-instance v0, Lcom/android/settings/usefulfeature/Usefulfeature$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/usefulfeature/Usefulfeature$4;-><init>(Lcom/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbersObserver:Landroid/database/ContentObserver;

    .line 201
    new-instance v0, Lcom/android/settings/usefulfeature/Usefulfeature$5;

    invoke-direct {v0, p0}, Lcom/android/settings/usefulfeature/Usefulfeature$5;-><init>(Lcom/android/settings/usefulfeature/Usefulfeature;)V

    iput-object v0, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 544
    new-instance v0, Lcom/android/settings/usefulfeature/Usefulfeature$6;

    invoke-direct {v0, p0}, Lcom/android/settings/usefulfeature/Usefulfeature$6;-><init>(Lcom/android/settings/usefulfeature/Usefulfeature;)V

    iput-object v0, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/usefulfeature/Usefulfeature;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/usefulfeature/Usefulfeature;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/usefulfeature/Usefulfeature;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/android/settings/usefulfeature/Usefulfeature;->isSupportSmartCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/android/settings/usefulfeature/Usefulfeature;->isSupportMCC()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/settings/usefulfeature/Usefulfeature;->componentNameOfDoubleTapOnHomeCommandIntent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/usefulfeature/Usefulfeature;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/usefulfeature/Usefulfeature;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/usefulfeature/Usefulfeature;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/usefulfeature/Usefulfeature;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/usefulfeature/Usefulfeature;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mMultiWindowSettingSwitch:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/usefulfeature/Usefulfeature;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/usefulfeature/Usefulfeature;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/usefulfeature/Usefulfeature;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method public static checkMccSmartCall(Ljava/lang/String;)Z
    .locals 8
    .param p0, "simMcc"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 628
    const/4 v4, 0x0

    .line 630
    .local v4, "mSupportSmartCall":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 646
    :cond_0
    :goto_0
    return v5

    .line 633
    :cond_1
    sget-object v6, Lcom/android/settings/usefulfeature/Usefulfeature;->mSupportMcc:[Ljava/lang/String;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/settings/usefulfeature/Usefulfeature;->mSupportMcc:[Ljava/lang/String;

    array-length v6, v6

    if-eqz v6, :cond_0

    .line 636
    sget-object v0, Lcom/android/settings/usefulfeature/Usefulfeature;->mSupportMcc:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 637
    .local v3, "mMcc":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 638
    const/4 v4, 0x0

    .line 640
    :cond_2
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 641
    const/4 v4, 0x1

    .line 645
    .end local v3    # "mMcc":Ljava/lang/String;
    :cond_3
    const-string v5, "Usefulfeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkMccSmartCall : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 646
    goto :goto_0

    .line 636
    .restart local v3    # "mMcc":Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getInsertedSimCard()I
    .locals 4

    .prologue
    .line 708
    const/4 v2, 0x0

    .line 709
    .local v2, "returnValue":I
    const/4 v0, 0x0

    .line 710
    .local v0, "index":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 712
    .local v1, "phoneCount":I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 713
    invoke-static {v0}, Lcom/android/settings/usefulfeature/Usefulfeature;->isSimCardInserted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 714
    add-int/lit8 v2, v2, 0x1

    .line 712
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 718
    :cond_1
    return v2
.end method

.method public static getMultiSimIccType(I)Ljava/lang/String;
    .locals 4
    .param p0, "phoneId"    # I

    .prologue
    .line 730
    const-string v1, "0"

    .line 732
    .local v1, "icctype":Ljava/lang/String;
    :try_start_0
    const-string v2, "ril.ICC_TYPE"

    const-string v3, "0"

    invoke-static {p0, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 733
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 734
    const-string v1, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    :cond_0
    :goto_0
    return-object v1

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "0"

    goto :goto_0
.end method

.method public static getSimMcc()Ljava/lang/String;
    .locals 4

    .prologue
    .line 664
    invoke-static {}, Lcom/android/settings/usefulfeature/Usefulfeature;->isSimMccMncReady()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 671
    .local v0, "mSimMcc":Ljava/lang/String;
    .local v1, "simOperator":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 666
    .end local v0    # "mSimMcc":Ljava/lang/String;
    .end local v1    # "simOperator":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 667
    .restart local v1    # "simOperator":Ljava/lang/String;
    const/4 v0, 0x0

    .line 668
    .restart local v0    # "mSimMcc":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 669
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSimMcc(I)Ljava/lang/String;
    .locals 4
    .param p0, "simId"    # I

    .prologue
    .line 675
    invoke-static {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->isSimMccMncReady(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 682
    :cond_0
    :goto_0
    return-object v0

    .line 677
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    .line 678
    .local v1, "simOperator":Ljava/lang/String;
    const/4 v0, 0x0

    .line 679
    .local v0, "mSimMcc":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 680
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isSimCardInserted(I)Z
    .locals 1
    .param p0, "slotidx"    # I

    .prologue
    .line 722
    invoke-static {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getMultiSimIccType(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 723
    const/4 v0, 0x0

    .line 725
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSimCardStatusOn(I)Z
    .locals 5
    .param p0, "simidx"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 743
    const/4 v0, 0x1

    .line 744
    .local v0, "returnValue":Z
    sget-object v3, Lcom/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 759
    :goto_0
    return v2

    .line 749
    :cond_0
    invoke-static {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->isSimCardInserted(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 750
    const/4 v0, 0x0

    .line 754
    :cond_1
    if-ne v0, v1, :cond_4

    if-ne p0, v1, :cond_4

    .line 755
    sget-object v3, Lcom/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone2_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3

    move v0, v1

    :cond_2
    :goto_1
    move v2, v0

    .line 759
    goto :goto_0

    :cond_3
    move v0, v2

    .line 755
    goto :goto_1

    .line 756
    :cond_4
    if-ne v0, v1, :cond_2

    if-nez p0, :cond_2

    .line 757
    sget-object v3, Lcom/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone1_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_5

    move v0, v1

    :goto_2
    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method public static isSimMccMncReady()Z
    .locals 2

    .prologue
    .line 650
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "simOperator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 652
    const/4 v1, 0x0

    .line 653
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSimMccMncReady(I)Z
    .locals 2
    .param p0, "simId"    # I

    .prologue
    .line 657
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, "simOperator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 659
    const/4 v1, 0x0

    .line 660
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isSupportMCC()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 583
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_ConfigSvcProviderForUnknownNumber"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 584
    .local v1, "cscString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 585
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "cscSmartCallData":[Ljava/lang/String;
    array-length v4, v0

    if-le v4, v2, :cond_1

    invoke-static {}, Lcom/android/settings/usefulfeature/Usefulfeature;->isSupportSmartCall()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 587
    aget-object v4, v0, v2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 590
    .end local v0    # "cscSmartCallData":[Ljava/lang/String;
    :goto_0
    return v2

    .restart local v0    # "cscSmartCallData":[Ljava/lang/String;
    :cond_0
    move v2, v3

    .line 587
    goto :goto_0

    .end local v0    # "cscSmartCallData":[Ljava/lang/String;
    :cond_1
    move v2, v3

    .line 590
    goto :goto_0
.end method

.method public static isSupportMccSmartCall()Z
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 604
    const/4 v1, 0x0

    .line 605
    .local v1, "mSim1Support":Z
    const/4 v3, 0x0

    .line 607
    .local v3, "mSim2Support":Z
    invoke-static {}, Lcom/android/settings/usefulfeature/Usefulfeature;->getSimMcc()Ljava/lang/String;

    move-result-object v4

    .line 609
    .local v4, "mSimMcc":Ljava/lang/String;
    const-string v8, "persist.radio.multisim.config"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 611
    .local v5, "multiSimConfig":Ljava/lang/String;
    const-string v8, "dsds"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "tsts"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "dsda"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_0
    invoke-static {}, Lcom/android/settings/usefulfeature/Usefulfeature;->getInsertedSimCard()I

    move-result v8

    if-le v8, v7, :cond_3

    invoke-static {v6}, Lcom/android/settings/usefulfeature/Usefulfeature;->isSimCardStatusOn(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v7}, Lcom/android/settings/usefulfeature/Usefulfeature;->isSimCardStatusOn(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 615
    invoke-static {v6}, Lcom/android/settings/usefulfeature/Usefulfeature;->getSimMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "mSim1Mcc":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/usefulfeature/Usefulfeature;->getSimMcc(I)Ljava/lang/String;

    move-result-object v2

    .line 618
    .local v2, "mSim2Mcc":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/usefulfeature/Usefulfeature;->checkMccSmartCall(Ljava/lang/String;)Z

    move-result v1

    .line 619
    invoke-static {v2}, Lcom/android/settings/usefulfeature/Usefulfeature;->checkMccSmartCall(Ljava/lang/String;)Z

    move-result v3

    .line 620
    const-string v8, "Usefulfeature"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isSupportMccSmartCall mSim1Support : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mSim2Support : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    if-nez v1, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    move v6, v7

    .line 624
    .end local v0    # "mSim1Mcc":Ljava/lang/String;
    .end local v2    # "mSim2Mcc":Ljava/lang/String;
    :cond_2
    :goto_0
    return v6

    :cond_3
    invoke-static {v4}, Lcom/android/settings/usefulfeature/Usefulfeature;->checkMccSmartCall(Ljava/lang/String;)Z

    move-result v6

    goto :goto_0
.end method

.method private static isSupportSmartCall()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 570
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_ConfigSvcProviderForUnknownNumber"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 571
    .local v2, "cscString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 572
    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 573
    .local v1, "cscSmartCallData":[Ljava/lang/String;
    aget-object v5, v1, v4

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "cscData":[Ljava/lang/String;
    sget-object v5, Lcom/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const-string v6, "com.samsung.android.smartcallprovider"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 575
    .local v3, "hasSmartCallProvider":Z
    array-length v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    const-string v5, "off"

    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "off"

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 579
    .end local v0    # "cscData":[Ljava/lang/String;
    .end local v1    # "cscSmartCallData":[Ljava/lang/String;
    .end local v3    # "hasSmartCallProvider":Z
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method public static setSupportMccSmartCall()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 594
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_ConfigSvcProviderForUnknownNumber"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, "cscString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 596
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "cscSmartCallData":[Ljava/lang/String;
    array-length v2, v0

    if-le v2, v4, :cond_0

    aget-object v2, v0, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 598
    aget-object v2, v0, v4

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/usefulfeature/Usefulfeature;->mSupportMcc:[Ljava/lang/String;

    .line 601
    .end local v0    # "cscSmartCallData":[Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 132
    const/16 v0, 0x2a

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 453
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 455
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget v0, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v0, v2, :cond_1

    .line 457
    iget-object v0, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 458
    iget-object v0, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mMultiWindowSettingSwitch:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 461
    iget-object v0, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mMultiWindowSettingSwitch:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 224
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    sput-object v8, Lcom/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    .line 226
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Lcom/android/settings/usefulfeature/Usefulfeature;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    iput-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 228
    const v8, 0x7f0800ce

    invoke-virtual {p0, v8}, Lcom/android/settings/usefulfeature/Usefulfeature;->addPreferencesFromResource(I)V

    .line 229
    invoke-static {}, Lcom/android/settings/usefulfeature/Usefulfeature;->setSupportMccSmartCall()V

    .line 230
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 231
    .local v1, "filter":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/settings/usefulfeature/Usefulfeature;->isSupportMCC()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 232
    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v1, v11, v11}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    .line 237
    .local v3, "isKioskContainer":Z
    const-string v8, "game_home"

    invoke-virtual {p0, v8}, Lcom/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/preference/PreferenceScreen;

    .line 238
    iget-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/preference/PreferenceScreen;

    if-eqz v8, :cond_1

    .line 239
    iget-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 242
    :cond_1
    const-string v8, "identify_unsaved_numbers"

    invoke-virtual {p0, v8}, Lcom/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    .line 243
    iget-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    if-eqz v8, :cond_2

    .line 244
    iget-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 245
    iget-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 248
    :cond_2
    const-string v8, "category_two"

    invoke-virtual {p0, v8}, Lcom/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mCategoryTwo:Landroid/preference/PreferenceCategory;

    .line 249
    const-string v8, "onehand_operation_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Landroid/preference/PreferenceScreen;

    .line 251
    const-string v8, "category_three"

    invoke-virtual {p0, v8}, Lcom/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mCategoryThree:Landroid/preference/PreferenceCategory;

    .line 252
    const-string v8, "quick_camera_launch"

    invoke-virtual {p0, v8}, Lcom/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    .line 253
    iget-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_3

    .line 254
    iget-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 256
    :cond_3
    const-string v8, "pick_up_switch"

    invoke-virtual {p0, v8}, Lcom/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Landroid/preference/Preference;

    .line 257
    iget-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Landroid/preference/Preference;

    if-eqz v8, :cond_4

    .line 258
    iget-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Landroid/preference/Preference;

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 260
    :cond_4
    const-string v8, "pick_up_to_call_out_switch"

    invoke-virtual {p0, v8}, Lcom/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Landroid/preference/Preference;

    .line 261
    iget-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Landroid/preference/Preference;

    if-eqz v8, :cond_5

    .line 262
    iget-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Landroid/preference/Preference;

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 264
    :cond_5
    const-string v8, "smart_capture"

    invoke-virtual {p0, v8}, Lcom/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mSamrtCapture:Landroid/preference/Preference;

    .line 265
    iget-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mSamrtCapture:Landroid/preference/Preference;

    if-eqz v8, :cond_6

    .line 266
    iget-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mSamrtCapture:Landroid/preference/Preference;

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 268
    :cond_6
    const-string v8, "merged_mute_or_pause_switch"

    invoke-virtual {p0, v8}, Lcom/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Landroid/preference/Preference;

    .line 269
    iget-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Landroid/preference/Preference;

    if-eqz v8, :cond_7

    .line 270
    iget-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Landroid/preference/Preference;

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 272
    :cond_7
    const-string v8, "palm_swipe_switch"

    invoke-virtual {p0, v8}, Lcom/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Landroid/preference/Preference;

    .line 273
    iget-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Landroid/preference/Preference;

    if-eqz v8, :cond_8

    .line 274
    iget-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Landroid/preference/Preference;

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 276
    :cond_8
    const-string v8, "multi_window_setting_switch"

    invoke-virtual {p0, v8}, Lcom/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mMultiWindowSettingSwitch:Landroid/preference/Preference;

    .line 277
    iget-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mMultiWindowSettingSwitch:Landroid/preference/Preference;

    if-eqz v8, :cond_9

    .line 278
    iget-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mMultiWindowSettingSwitch:Landroid/preference/Preference;

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 281
    :cond_9
    const-string v8, "category_four"

    invoke-virtual {p0, v8}, Lcom/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mCategoryFour:Landroid/preference/PreferenceCategory;

    .line 282
    const-string v8, "galaxy_labs"

    invoke-virtual {p0, v8}, Lcom/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/preference/Preference;

    .line 283
    iget-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/preference/Preference;

    if-eqz v8, :cond_a

    .line 284
    iget-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/preference/Preference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 285
    iget-object v8, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/preference/Preference;

    invoke-virtual {v8, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 288
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.samsung.android.game.gametools"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 289
    :cond_b
    const-string v8, "game_home"

    invoke-virtual {p0, v8}, Lcom/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 292
    :cond_c
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v8

    if-nez v8, :cond_e

    invoke-static {}, Lcom/android/settings/usefulfeature/Usefulfeature;->isSupportSmartCall()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eqz v8, :cond_e

    .line 293
    :cond_d
    const-string v8, "identify_unsaved_numbers"

    invoke-virtual {p0, v8}, Lcom/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 295
    :cond_e
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-nez v8, :cond_f

    if-eqz v3, :cond_10

    .line 297
    :cond_f
    const-string v8, "category_two"

    invoke-virtual {p0, v8}, Lcom/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 298
    const-string v8, "onehand_operation_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 301
    :cond_10
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "double_tab_launch_component"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/settings/usefulfeature/Usefulfeature;->componentNameOfDoubleTapOnHomeCommandIntent:Ljava/lang/String;

    .line 302
    const-string v8, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    sget-object v9, Lcom/android/settings/usefulfeature/Usefulfeature;->componentNameOfDoubleTapOnHomeCommandIntent:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 303
    const-string v8, "quick_camera_launch"

    invoke-virtual {p0, v8}, Lcom/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 306
    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.samsung.android.app.scrollcapture"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 307
    const-string v8, "smart_capture"

    invoke-virtual {p0, v8}, Lcom/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 309
    :cond_12
    sget-object v0, Lcom/android/settings/usefulfeature/Usefulfeature;->mMotionFeatures:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v6, :cond_14

    aget-object v7, v0, v2

    .line 310
    .local v7, "motionFeature":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_13

    .line 311
    invoke-virtual {p0, v7}, Lcom/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 309
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    .end local v7    # "motionFeature":Ljava/lang/String;
    :cond_14
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 315
    const-string v8, "multi_window_setting_switch"

    invoke-virtual {p0, v8}, Lcom/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 317
    :cond_15
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.samsung.android.app.galaxylabs"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_16

    .line 318
    const-string v8, "category_four"

    invoke-virtual {p0, v8}, Lcom/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 319
    const-string v8, "galaxy_labs"

    invoke-virtual {p0, v8}, Lcom/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 322
    :cond_16
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    instance-of v8, v8, Landroid/preference/PreferenceCategory;

    if-eqz v8, :cond_17

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 326
    :cond_17
    const/4 v5, 0x0

    .line 327
    .local v5, "knoxCustomSettingsState":I
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SettingsManager;->getInstance()Landroid/app/enterprise/knoxcustom/SettingsManager;

    move-result-object v4

    .line 328
    .local v4, "knoxCustomSettingsManager":Landroid/app/enterprise/knoxcustom/SettingsManager;
    if-eqz v4, :cond_18

    .line 329
    invoke-virtual {v4}, Landroid/app/enterprise/knoxcustom/SettingsManager;->getSettingsHiddenState()I

    move-result v5

    .line 331
    :cond_18
    and-int/lit8 v8, v5, 0x8

    if-eqz v8, :cond_19

    .line 332
    const-string v8, "multi_window_setting_switch"

    invoke-virtual {p0, v8}, Lcom/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    .line 335
    :cond_19
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 488
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 489
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 468
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 469
    iget-object v0, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mMultiWindowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    .line 476
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbersObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 477
    iget-object v0, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 479
    :cond_2
    iget-object v0, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Landroid/preference/Preference;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Landroid/preference/Preference;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Landroid/preference/Preference;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    .line 480
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 482
    :cond_4
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 529
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .local v0, "key":Ljava/lang/String;
    move-object v2, p2

    .line 530
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    .line 532
    .local v1, "value":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 533
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 534
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "double_tab_launch"

    invoke-static {v2, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 535
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 536
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "com.android.settings"

    const-string v5, "UFQC"

    const/16 v6, 0x3e8

    invoke-static {v2, v4, v5, v6}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 541
    :cond_0
    :goto_1
    return v3

    .end local v1    # "value":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    move v1, v4

    .line 530
    goto :goto_0

    .line 538
    .end local p2    # "objValue":Ljava/lang/Object;
    .restart local v1    # "value":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v5, "com.android.settings"

    const-string v6, "UFQC"

    invoke-static {v2, v5, v6, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 494
    iget-object v2, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 496
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.game.gamehome.action.SETTING"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 497
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "Usefulfeature"

    const-string v3, "ActivityNotFoundException in GameHome"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 502
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 504
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 505
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.smartcall.SmartCallSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    invoke-virtual {p0, v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 508
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 509
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "Usefulfeature"

    const-string v3, "ActivityNotFoundException in IdentifyUnsavedNumbers"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 512
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/preference/Preference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 514
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 515
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    const-string v2, "com.samsung.android.app.galaxylabs"

    const-string v3, "com.samsung.android.app.galaxylabs.GalaxyLabsMainActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    invoke-virtual {p0, v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 518
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v0

    .line 519
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "Usefulfeature"

    const-string v3, "ActivityNotFoundException in GalaxyLabs"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 12

    .prologue
    const v6, 0x7f0e0e92

    const v7, 0x7f0e0e93

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 339
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 341
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 343
    .local v2, "isScreenCaptureEnabled":Ljava/lang/Boolean;
    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "false"

    aput-object v5, v4, v9

    .line 346
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v11, "isScreenCaptureEnabled"

    invoke-static {v5, v10, v11, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 349
    .local v1, "isScreenCapture":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    if-eq v1, v8, :cond_0

    .line 350
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "access_control_enabled"

    invoke-static {v5, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 357
    .local v3, "onInteractionConrol":I
    if-ne v3, v8, :cond_1

    .line 358
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 360
    :cond_1
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_3

    .line 361
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v5

    if-nez v5, :cond_2

    .line 362
    sget-object v5, Lcom/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 363
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 374
    :cond_2
    :goto_0
    iget-object v10, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v11, "spam_call_enable"

    invoke-static {v5, v11, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_10

    move v5, v6

    :goto_1
    invoke-virtual {v10, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 375
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "spam_call_enable"

    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbersObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v10, v8, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 376
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v10, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v5, v10, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 378
    :cond_3
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_4

    .line 379
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-nez v5, :cond_12

    .line 380
    iget-object v10, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v11, "double_tab_launch"

    invoke-static {v5, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_11

    move v5, v8

    :goto_2
    invoke-virtual {v10, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 386
    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Landroid/preference/Preference;

    if-eqz v5, :cond_5

    .line 387
    if-ne v3, v8, :cond_13

    .line 388
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Landroid/preference/Preference;

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 394
    :cond_5
    :goto_4
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Landroid/preference/Preference;

    if-eqz v5, :cond_6

    .line 395
    if-ne v3, v8, :cond_15

    .line 396
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Landroid/preference/Preference;

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 402
    :cond_6
    :goto_5
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Landroid/preference/Preference;

    if-eqz v5, :cond_7

    .line 403
    if-ne v3, v8, :cond_17

    .line 404
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Landroid/preference/Preference;

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 410
    :cond_7
    :goto_6
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Landroid/preference/Preference;

    if-eqz v5, :cond_8

    .line 412
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 413
    const-string v5, "Usefulfeature"

    const-string v10, "MDM: Screen Capture Disabled"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Landroid/preference/Preference;

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 415
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "surface_palm_swipe"

    invoke-static {v5, v10, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 423
    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "surface_palm_swipe"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v10, v8, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 425
    :cond_8
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mMultiWindowSettingSwitch:Landroid/preference/Preference;

    if-eqz v5, :cond_9

    .line 426
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "multi_window_enabled"

    invoke-static {v5, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1b

    .line 427
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mMultiWindowSettingSwitch:Landroid/preference/Preference;

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 428
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mMultiWindowSettingSwitch:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 433
    :goto_8
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "multi_window_enabled"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mMultiWindowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v10, v8, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 435
    :cond_9
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mSamrtCapture:Landroid/preference/Preference;

    if-eqz v5, :cond_a

    .line 436
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mSamrtCapture:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "enable_smart_capture"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_1d

    :goto_9
    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 438
    :cond_a
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Landroid/preference/Preference;

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Landroid/preference/Preference;

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Landroid/preference/Preference;

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Landroid/preference/Preference;

    if-eqz v5, :cond_c

    .line 439
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "access_control_enabled"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 441
    :cond_c
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 444
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v5, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v5, v8, :cond_d

    .line 445
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Landroid/preference/Preference;

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 446
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mMultiWindowSettingSwitch:Landroid/preference/Preference;

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 449
    .end local v0    # "conf":Landroid/content/res/Configuration;
    :cond_d
    return-void

    .line 365
    :cond_e
    sget-object v5, Lcom/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 366
    invoke-static {}, Lcom/android/settings/usefulfeature/Usefulfeature;->isSupportMCC()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {}, Lcom/android/settings/usefulfeature/Usefulfeature;->isSupportMccSmartCall()Z

    move-result v5

    if-nez v5, :cond_f

    .line 367
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    .line 369
    :cond_f
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_10
    move v5, v7

    .line 374
    goto/16 :goto_1

    :cond_11
    move v5, v9

    .line 380
    goto/16 :goto_2

    .line 382
    :cond_12
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 383
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_3

    .line 390
    :cond_13
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Landroid/preference/Preference;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 391
    iget-object v10, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v11, "motion_pick_up"

    invoke-static {v5, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_14

    move v5, v6

    :goto_a
    invoke-virtual {v10, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_4

    :cond_14
    move v5, v7

    goto :goto_a

    .line 398
    :cond_15
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Landroid/preference/Preference;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 399
    iget-object v10, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v11, "motion_pick_up_to_call_out"

    invoke-static {v5, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_16

    move v5, v6

    :goto_b
    invoke-virtual {v10, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_5

    :cond_16
    move v5, v7

    goto :goto_b

    .line 406
    :cond_17
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Landroid/preference/Preference;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 407
    iget-object v10, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v11, "motion_merged_mute_pause"

    invoke-static {v5, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_18

    move v5, v6

    :goto_c
    invoke-virtual {v10, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_6

    :cond_18
    move v5, v7

    goto :goto_c

    .line 418
    :cond_19
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Landroid/preference/Preference;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 419
    iget-object v10, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v11, "surface_palm_swipe"

    invoke-static {v5, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1a

    move v5, v6

    :goto_d
    invoke-virtual {v10, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_7

    :cond_1a
    move v5, v7

    goto :goto_d

    .line 430
    :cond_1b
    iget-object v5, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mMultiWindowSettingSwitch:Landroid/preference/Preference;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 431
    iget-object v10, p0, Lcom/android/settings/usefulfeature/Usefulfeature;->mMultiWindowSettingSwitch:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v11, "db_popup_view_shortcut"

    invoke-static {v5, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1c

    move v5, v6

    :goto_e
    invoke-virtual {v10, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_8

    :cond_1c
    move v5, v7

    goto :goto_e

    :cond_1d
    move v6, v7

    .line 436
    goto/16 :goto_9
.end method
