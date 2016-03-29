.class public Lcom/android/settings/spen/SPenSettingsMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SPenSettingsMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final PEN_NOTIFICATION_OFF:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

.field private mAirCmdObserver:Landroid/database/ContentObserver;

.field private mAirCommandPref:Landroid/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mDirectPenInputPref:Landroid/preference/Preference;

.field private mDisablePenDetectionSwitchPref:Landroid/preference/SwitchPreference;

.field private mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

.field private mPenAirViewPref:Landroid/preference/Preference;

.field private mPenDetachObserver:Landroid/database/ContentObserver;

.field private mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;

.field private mPenFeedbackHapticSwitchPref:Landroid/preference/SwitchPreference;

.field private mPenFeedbackSoundSwitchPref:Landroid/preference/SwitchPreference;

.field private mSpenPointerPref:Landroid/preference/Preference;

.field private mSpenPointerSwtichPref:Landroid/preference/SwitchPreference;

.field private mSupportPenUsp10:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/spen/SPenSettingsMenu;->PEN_NOTIFICATION_OFF:Ljava/lang/String;

    .line 436
    new-instance v0, Lcom/android/settings/spen/SPenSettingsMenu$3;

    invoke-direct {v0}, Lcom/android/settings/spen/SPenSettingsMenu$3;-><init>()V

    sput-object v0, Lcom/android/settings/spen/SPenSettingsMenu;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 112
    new-instance v0, Lcom/android/settings/spen/SPenSettingsMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/spen/SPenSettingsMenu$1;-><init>(Lcom/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mAirCmdObserver:Landroid/database/ContentObserver;

    .line 482
    new-instance v0, Lcom/android/settings/spen/SPenSettingsMenu$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/spen/SPenSettingsMenu$4;-><init>(Lcom/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/spen/SPenSettingsMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/spen/SPenSettingsMenu;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->updateEnableState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/spen/SPenSettingsMenu;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/spen/SPenSettingsMenu;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/spen/SPenSettingsMenu;)Lcom/android/settings/DropDownPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/spen/SPenSettingsMenu;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/spen/SPenSettingsMenu;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/spen/SPenSettingsMenu;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/spen/SPenSettingsMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/spen/SPenSettingsMenu;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->updateState()V

    return-void
.end method

.method private sendLossPreventionAlert(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 429
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.LossPeventionAlertChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "LossPreventionAlertState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 431
    const-string v1, "SPenSettingsMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadCast Loss prevention alert : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 433
    return-void
.end method

.method private updateEnableState()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_button_onoff"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 289
    .local v0, "isEnable":I
    iget-object v5, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mAirCommandPref:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 290
    iget-object v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;

    if-eqz v2, :cond_1

    .line 291
    iget-object v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v2}, Lcom/android/settings/DropDownPreference;->clearItems()V

    .line 292
    iget-object v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 293
    .local v1, "res":Landroid/content/res/Resources;
    iget-boolean v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    if-eqz v2, :cond_1

    .line 294
    if-ne v0, v3, :cond_0

    .line 295
    iget-object v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;

    const v5, 0x7f0e1575

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/android/settings/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    :cond_0
    iget-object v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;

    const v5, 0x7f0e1574

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/settings/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    iget-object v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;

    const v3, 0x7f0e1573

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 289
    goto :goto_0
.end method

.method private updateState()V
    .locals 15

    .prologue
    const-wide/16 v12, 0x0

    const v14, 0x7f0e1568

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 303
    const-string v7, "SPenSettingsMenu"

    const-string v10, "updateState() "

    invoke-static {v7, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v10, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "pen_detachment_alert"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_3

    move v7, v8

    :goto_0
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 308
    invoke-static {}, Lcom/android/settings/Utils;->isSupportAddtionalFeedback()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 309
    iget-object v10, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "spen_feedback_sound"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_4

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 311
    iget-object v10, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "spen_feedback_haptic"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_5

    move v7, v8

    :goto_2
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 315
    :cond_0
    iget-boolean v7, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    if-eqz v7, :cond_1

    .line 317
    iget-object v7, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 318
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "pen_detached_time"

    invoke-static {v7, v10, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 319
    .local v0, "detachTime":J
    cmp-long v7, v0, v12

    if-lez v7, :cond_6

    .line 320
    iget-object v7, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    .line 321
    .local v5, "shortDateFormat":Ljava/text/DateFormat;
    const v7, 0x7f0e1597

    new-array v10, v8, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v12

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-virtual {v4, v7, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, "detachTimeStr":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 326
    .end local v2    # "detachTimeStr":Ljava/lang/String;
    .end local v5    # "shortDateFormat":Ljava/text/DateFormat;
    :goto_3
    iget-object v10, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "pen_hovering_pointer"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_7

    move v7, v8

    :goto_4
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 329
    iget-object v10, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "action_memo_on_off_screen"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_8

    move v7, v8

    :goto_5
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 332
    .end local v0    # "detachTime":J
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "pen_detachment_option"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 335
    .local v3, "penDetachIndex":I
    iget-object v7, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/settings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 338
    iget-object v10, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "pen_detect_mode_disabled"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_9

    move v7, v8

    :goto_6
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "pen_writing_buddy"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_a

    move v6, v8

    .line 342
    .local v6, "writingBuddyOn":Z
    :goto_7
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v7

    const-string v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v7, v10}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v7, v8, :cond_b

    .line 344
    iget-object v7, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Landroid/preference/Preference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 349
    :cond_2
    :goto_8
    return-void

    .end local v3    # "penDetachIndex":I
    .end local v6    # "writingBuddyOn":Z
    :cond_3
    move v7, v9

    .line 305
    goto/16 :goto_0

    :cond_4
    move v7, v9

    .line 309
    goto/16 :goto_1

    :cond_5
    move v7, v9

    .line 311
    goto/16 :goto_2

    .line 324
    .restart local v0    # "detachTime":J
    .restart local v4    # "res":Landroid/content/res/Resources;
    :cond_6
    iget-object v7, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_7
    move v7, v9

    .line 326
    goto :goto_4

    :cond_8
    move v7, v9

    .line 329
    goto :goto_5

    .end local v0    # "detachTime":J
    .end local v4    # "res":Landroid/content/res/Resources;
    .restart local v3    # "penDetachIndex":I
    :cond_9
    move v7, v9

    .line 338
    goto :goto_6

    :cond_a
    move v6, v9

    .line 341
    goto :goto_7

    .line 346
    .restart local v6    # "writingBuddyOn":Z
    :cond_b
    iget-object v7, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Landroid/preference/Preference;

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_8
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 109
    const/16 v0, 0x57

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 123
    const-string v3, "SPenSettingsMenu"

    const-string v4, "onCreate() "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 125
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    .line 128
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportPenUsp10(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    .line 130
    const v3, 0x7f080087

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/SPenSettingsMenu;->addPreferencesFromResource(I)V

    .line 132
    const-string v3, "key_air_button"

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mAirCommandPref:Landroid/preference/Preference;

    .line 135
    const-string v3, "pen_air_view"

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Landroid/preference/Preference;

    .line 136
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 137
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Landroid/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 141
    :cond_0
    const-string v3, "key_spen_pointer"

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSpenPointerPref:Landroid/preference/Preference;

    .line 144
    const-string v3, "key_writing_buddy"

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Landroid/preference/Preference;

    .line 145
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    .line 146
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Landroid/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 150
    :cond_1
    const-string v3, "key_spen_pointer_switch"

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/preference/SwitchPreference;

    .line 151
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 152
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 155
    const-string v3, "loss_prevention_alert"

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    .line 156
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 157
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 160
    const-string v3, "action_memo_on_off_screen"

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

    .line 161
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 162
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 165
    const-string v3, "battery_saving"

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/preference/SwitchPreference;

    .line 166
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 167
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 170
    const-string v3, "key_additional_feedback_pen_sound"

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/preference/SwitchPreference;

    .line 171
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 172
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    const-string v3, "key_additional_feedback_pen_haptic"

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/preference/SwitchPreference;

    .line 176
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 177
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 184
    const-string v3, "pen_detachment_option_list"

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/DropDownPreference;

    iput-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;

    .line 185
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;

    if-eqz v3, :cond_3

    .line 186
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/DropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 187
    iget-boolean v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    if-nez v3, :cond_2

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1100a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "DetachOptionTitles":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 191
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;

    aget-object v4, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v0    # "DetachOptionTitles":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;

    new-instance v4, Lcom/android/settings/spen/SPenSettingsMenu$2;

    invoke-direct {v4, p0}, Lcom/android/settings/spen/SPenSettingsMenu$2;-><init>(Lcom/android/settings/spen/SPenSettingsMenu;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/DropDownPreference;->setCallback(Lcom/android/settings/DropDownPreference$Callback;)V

    .line 203
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v3, v6}, Lcom/android/settings/DropDownPreference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 206
    :cond_3
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string v4, "com.sec.android.app.SPenKeeper"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 207
    .local v2, "mSupportSPenKeeper":Z
    if-nez v2, :cond_4

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 211
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportAddtionalFeedback()Z

    move-result v3

    if-nez v3, :cond_6

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "Additional_feedback_category"

    invoke-virtual {p0, v4}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "key_additional_feedback_pen_sound"

    invoke-virtual {p0, v4}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "key_additional_feedback_pen_haptic"

    invoke-virtual {p0, v4}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 222
    :cond_5
    :goto_1
    iget-boolean v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    if-eqz v3, :cond_8

    .line 223
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mAirCommandPref:Landroid/preference/Preference;

    const-class v4, Lcom/android/settings/spen/PenAirCmdSettingsMenu;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "key_spen_pointer"

    invoke-virtual {p0, v4}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 233
    :goto_2
    return-void

    .line 216
    :cond_6
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 218
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "key_additional_feedback_pen_haptic"

    invoke-virtual {p0, v4}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 228
    :cond_8
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mAirCommandPref:Landroid/preference/Preference;

    const-class v4, Lcom/android/settings/spen/AirButtonHelp;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "action_memo_on_off_screen"

    invoke-virtual {p0, v4}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "key_spen_pointer_switch"

    invoke-virtual {p0, v4}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 276
    const-string v0, "SPenSettingsMenu"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 278
    iget-boolean v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mAirCmdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 283
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 354
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "key":Ljava/lang/String;
    const-string v2, "battery_saving"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 357
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 358
    .local v1, "value":Z
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_detect_mode_disabled"

    if-eqz v1, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 360
    if-eqz v1, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setEPenSavingmode(I)Z

    .line 361
    const-string v2, "SPenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "battery saving : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_detect_mode_disabled"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .end local v1    # "value":Z
    :cond_0
    :goto_2
    return v3

    .restart local v1    # "value":Z
    :cond_1
    move v2, v4

    .line 358
    goto :goto_0

    :cond_2
    move v2, v4

    .line 360
    goto :goto_1

    .line 367
    .end local v1    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_3
    const-string v2, "key_spen_pointer_switch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 368
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 369
    .restart local v1    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_pointer"

    if-eqz v1, :cond_4

    move v2, v3

    :goto_3
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 370
    const-string v2, "SPenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pointer : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_pointer"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    move v2, v4

    .line 369
    goto :goto_3

    .line 375
    .end local v1    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_5
    const-string v2, "loss_prevention_alert"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 376
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 377
    .restart local v1    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_detachment_alert"

    if-eqz v1, :cond_6

    move v2, v3

    :goto_4
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 378
    invoke-direct {p0, v1}, Lcom/android/settings/spen/SPenSettingsMenu;->sendLossPreventionAlert(Z)V

    .line 379
    const-string v2, "SPenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loss prevention alert : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_detachment_alert"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_6
    move v2, v4

    .line 377
    goto :goto_4

    .line 384
    .end local v1    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_7
    const-string v2, "action_memo_on_off_screen"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 385
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 386
    .restart local v1    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "action_memo_on_off_screen"

    if-eqz v1, :cond_8

    move v2, v3

    :goto_5
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 387
    const-string v2, "SPenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Action Memo On off Screen : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "action_memo_on_off_screen"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    move v2, v4

    .line 386
    goto :goto_5

    .line 392
    .end local v1    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_9
    const-string v2, "key_additional_feedback_pen_sound"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 393
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 394
    .restart local v1    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "spen_feedback_sound"

    if-eqz v1, :cond_b

    move v2, v3

    :goto_6
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 396
    iget-boolean v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    if-eqz v2, :cond_a

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_detachment_notification"

    if-eqz v1, :cond_c

    const-string v2, "/system/media/audio/ui/Pen_att_noti1.ogg,/system/media/audio/ui/Pen_det_noti1.ogg"

    :goto_7
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 398
    :cond_a
    const-string v2, "SPenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pen additional feedback sound : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "spen_feedback_sound"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    move v2, v4

    .line 394
    goto :goto_6

    .line 397
    :cond_c
    sget-object v2, Lcom/android/settings/spen/SPenSettingsMenu;->PEN_NOTIFICATION_OFF:Ljava/lang/String;

    goto :goto_7

    .line 403
    .end local v1    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_d
    const-string v2, "key_additional_feedback_pen_haptic"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 405
    .restart local v1    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "spen_feedback_haptic"

    if-eqz v1, :cond_f

    move v2, v3

    :goto_8
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 407
    iget-boolean v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    if-eqz v2, :cond_e

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_attach_detach_vibration"

    if-eqz v1, :cond_10

    move v2, v3

    :goto_9
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 410
    :cond_e
    const-string v2, "SPenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pen additional feedback haptic : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "spen_feedback_haptic"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_f
    move v2, v4

    .line 405
    goto :goto_8

    :cond_10
    move v2, v4

    .line 408
    goto :goto_9
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 421
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "key":Ljava/lang/String;
    const-string v1, "key_air_button"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string v2, "com.android.settings"

    const-string v3, "SEAC"

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const v1, 0x7f0e0e92

    const/4 v5, 0x0

    const v2, 0x7f0e0e93

    .line 238
    const-string v0, "SPenSettingsMenu"

    const-string v3, "onResume() "

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 240
    iget-boolean v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    if-eqz v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->updateEnableState()V

    .line 242
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->updateState()V

    .line 244
    iget-boolean v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    if-nez v0, :cond_1

    .line 245
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mAirCommandPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "air_button_onoff"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 248
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSpenPointerPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering_pointer"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 252
    :cond_1
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v0, v6, :cond_6

    .line 257
    iget-object v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 264
    :goto_3
    iget-boolean v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    if-eqz v0, :cond_2

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_button_onoff"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mAirCmdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_detached_time"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 272
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 245
    goto :goto_0

    :cond_4
    move v0, v2

    .line 248
    goto :goto_1

    :cond_5
    move v0, v2

    .line 252
    goto :goto_2

    .line 259
    :cond_6
    iget-object v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_writing_buddy"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_3

    :cond_7
    move v1, v2

    goto :goto_4
.end method
