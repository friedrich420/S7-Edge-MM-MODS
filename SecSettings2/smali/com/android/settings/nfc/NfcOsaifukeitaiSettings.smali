.class public Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NfcOsaifukeitaiSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private final CSC_SALES_CODE:Ljava/lang/String;

.field private final OMC_SALES_CODE:Ljava/lang/String;

.field private final carrier:Ljava/lang/String;

.field private mABeam:Landroid/preference/PreferenceScreen;

.field private mCashbee:Landroid/preference/PreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mDcmPaymentSettings:Landroid/preference/PreferenceScreen;

.field private mGlobalPaymentSettings:Landroid/preference/PreferenceScreen;

.field private mLockNumInit:Landroid/preference/PreferenceScreen;

.field private mLockNumchg:Landroid/preference/PreferenceScreen;

.field private mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

.field private mNfcRemotelock:Landroid/preference/PreferenceScreen;

.field private mNfcTypeSettings:Landroid/preference/PreferenceScreen;

.field private mNfclock:Landroid/preference/PreferenceScreen;

.field private mRWp2p:Landroid/preference/PreferenceScreen;

.field private mRoot:Landroid/preference/PreferenceScreen;

.field private mSetLayout:Z

.field myNfcOsaifukeitaiSettings:Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings$1;

    invoke-direct {v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 73
    iput-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;

    .line 74
    const-string v0, "persist.omc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->OMC_SALES_CODE:Ljava/lang/String;

    .line 75
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->CSC_SALES_CODE:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->OMC_SALES_CODE:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->OMC_SALES_CODE:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->CSC_SALES_CODE:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->carrier:Ljava/lang/String;

    .line 82
    iput-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfclock:Landroid/preference/PreferenceScreen;

    .line 83
    iput-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mRWp2p:Landroid/preference/PreferenceScreen;

    .line 84
    iput-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mABeam:Landroid/preference/PreferenceScreen;

    .line 85
    iput-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcTypeSettings:Landroid/preference/PreferenceScreen;

    .line 86
    iput-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mDcmPaymentSettings:Landroid/preference/PreferenceScreen;

    .line 87
    iput-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mCashbee:Landroid/preference/PreferenceScreen;

    .line 88
    iput-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mLockNumchg:Landroid/preference/PreferenceScreen;

    .line 89
    iput-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mLockNumInit:Landroid/preference/PreferenceScreen;

    .line 90
    iput-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mGlobalPaymentSettings:Landroid/preference/PreferenceScreen;

    .line 91
    iput-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcRemotelock:Landroid/preference/PreferenceScreen;

    .line 92
    iput-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mRoot:Landroid/preference/PreferenceScreen;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mSetLayout:Z

    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->OMC_SALES_CODE:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 100
    const/16 v0, 0x45

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 104
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    const-string v0, "[NfcOsaifukeitaiSettings]"

    const-string v1, "[S] onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    .line 113
    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->supportNFC()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const-string v0, "[NfcOsaifukeitaiSettings]"

    const-string v1, "[S] nfc not support"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    return-void

    .line 121
    :cond_0
    const v0, 0x7f08007c

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->addPreferencesFromResource(I)V

    .line 123
    const-string v0, "toggle_osaifukeitai_lock"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfclock:Landroid/preference/PreferenceScreen;

    .line 124
    const-string v0, "toggle_nfc"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mRWp2p:Landroid/preference/PreferenceScreen;

    .line 125
    const-string v0, "toggle_android_beam"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mABeam:Landroid/preference/PreferenceScreen;

    .line 126
    const-string v0, "nfc_type_settings_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcTypeSettings:Landroid/preference/PreferenceScreen;

    .line 127
    const-string v0, "nfc_payment_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mDcmPaymentSettings:Landroid/preference/PreferenceScreen;

    .line 128
    const-string v0, "toggle_nfc_mobile_cashbee"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mCashbee:Landroid/preference/PreferenceScreen;

    .line 129
    const-string v0, "toggle_lock_number_change"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mLockNumchg:Landroid/preference/PreferenceScreen;

    .line 130
    const-string v0, "toggle_lock_number_initialization"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mLockNumInit:Landroid/preference/PreferenceScreen;

    .line 131
    const-string v0, "nfc_payment_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mGlobalPaymentSettings:Landroid/preference/PreferenceScreen;

    .line 132
    const-string v0, "toggle_osaifukeitai_remotelock"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcRemotelock:Landroid/preference/PreferenceScreen;

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mRoot:Landroid/preference/PreferenceScreen;

    .line 135
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->carrier:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 151
    :goto_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->onCreate(Landroid/content/Context;)V

    .line 155
    :cond_2
    const-string v0, "[NfcOsaifukeitaiSettings]"

    const-string v1, "[E] onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 135
    :sswitch_0
    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "KDI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "SBM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    .line 137
    :pswitch_0
    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfclock:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mRWp2p:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mABeam:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcTypeSettings:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mDcmPaymentSettings:Landroid/preference/PreferenceScreen;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;-><init>(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;

    goto :goto_2

    .line 140
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getMobileCashbee_DisplayJudging()Z

    move-result v0

    if-nez v0, :cond_3

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mCashbee:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 143
    :cond_3
    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfclock:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mRWp2p:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mABeam:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mCashbee:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mLockNumchg:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mLockNumInit:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mGlobalPaymentSettings:Landroid/preference/PreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mRoot:Landroid/preference/PreferenceScreen;

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;-><init>(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;

    goto :goto_2

    .line 146
    :pswitch_2
    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfclock:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mRWp2p:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mABeam:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcRemotelock:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mGlobalPaymentSettings:Landroid/preference/PreferenceScreen;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;-><init>(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;

    goto :goto_2

    .line 135
    nop

    :sswitch_data_0
    .sparse-switch
        0x107ae -> :sswitch_0
        0x12210 -> :sswitch_1
        0x13fde -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 181
    const-string v0, "[NfcOsaifukeitaiSettings]"

    const-string v1, "[S] onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 184
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->onPause(Landroid/content/Context;)V

    .line 188
    :cond_0
    const-string v0, "[NfcOsaifukeitaiSettings]"

    const-string v1, "[E] onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 177
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 163
    const-string v0, "[NfcOsaifukeitaiSettings]"

    const-string v1, "[S] resume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 166
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->onResume(Landroid/content/Context;)V

    .line 173
    const-string v0, "[NfcOsaifukeitaiSettings]"

    const-string v1, "[E] resume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 159
    return-void
.end method

.method public supportNFC()Z
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v0, 0x0

    .line 202
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nobleltedcm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ro.revision"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lt v1, v3, :cond_2

    :cond_0
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nobleltekdi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ro.revision"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lt v1, v3, :cond_2

    :cond_1
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nobleltesbm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "ro.revision"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    .line 206
    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
