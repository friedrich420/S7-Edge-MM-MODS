.class public Lcom/android/settings/cpa/CpaAdvancedSettings;
.super Landroid/preference/PreferenceActivity;
.source "CpaAdvancedSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mApn:Landroid/preference/EditTextPreference;

.field private mAuthType:Landroid/preference/ListPreference;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDns1:Landroid/preference/EditTextPreference;

.field private mDns2:Landroid/preference/EditTextPreference;

.field private mFirstTime:Z

.field private mNewApn:Z

.field private mPassword:Landroid/preference/EditTextPreference;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mProxy:Landroid/preference/EditTextPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroid/preference/EditTextPreference;

.field private regExpn:Ljava/lang/String;

.field private regExpn1:Ljava/lang/String;

.field private regExpn_Domain_num:Ljava/lang/String;

.field private regExpn_Domain_num1:Ljava/lang/String;

.field private regExpn_IP:Ljava/lang/String;

.field private regExpn_Pwd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    const-class v0, Lcom/android/settings/cpa/CpaAdvancedSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    .line 138
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/cpa/CpaAdvancedSettings;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 87
    const-string v0, "^[a-z0-9A-Z]+([-._/a-z0-9A-Z]?)+[a-z0-9A-Z]@[0-9a-z]+[-.0-9a-z]+[0-9a-z]$"

    iput-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->regExpn:Ljava/lang/String;

    .line 90
    const-string v0, "^[a-z0-9A-Z]@[0-9a-z]+[-.0-9a-z]+[0-9a-z]$"

    iput-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->regExpn1:Ljava/lang/String;

    .line 92
    const-string v0, "^[a-z0-9A-Z]+([-._/a-z0-9A-Z]?)+[a-z0-9A-Z]@[0-9]*$"

    iput-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->regExpn_Domain_num:Ljava/lang/String;

    .line 93
    const-string v0, "^[a-z0-9A-Z]@[0-9]*$"

    iput-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->regExpn_Domain_num1:Ljava/lang/String;

    .line 96
    const-string v0, "^[a-z0-9A-Z!#$%&()*+-./:;<>=?@\\[\\]_\\{\\}]{1,16}$"

    iput-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->regExpn_Pwd:Ljava/lang/String;

    .line 99
    const-string v0, "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

    iput-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->regExpn_IP:Ljava/lang/String;

    .line 181
    new-instance v0, Lcom/android/settings/cpa/CpaAdvancedSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/cpa/CpaAdvancedSettings$1;-><init>(Lcom/android/settings/cpa/CpaAdvancedSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method protected static checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 798
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/settings/cpa/CpaAdvancedSettings;->sNotSet:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 799
    :cond_0
    const-string p0, ""

    .line 801
    .end local p0    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 769
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 770
    :cond_0
    sget-object p1, Lcom/android/settings/cpa/CpaAdvancedSettings;->sNotSet:Ljava/lang/String;

    .line 772
    .end local p1    # "value":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private fillUi()V
    .locals 12

    .prologue
    .line 258
    sget-object v9, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fillUi(), isFirstTime? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mFirstTime:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", newAPN? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mNewApn:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v0, 0x0

    .line 261
    .local v0, "apnType":Ljava/lang/String;
    iget-boolean v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mFirstTime:Z

    if-eqz v9, :cond_3

    .line 262
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mFirstTime:Z

    .line 264
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 265
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x3

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 266
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x4

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 267
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x5

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 268
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x7

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 270
    iget-boolean v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mNewApn:Z

    if-eqz v9, :cond_0

    .line 271
    const-string v9, "gsm.sim.operator.numeric"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 273
    .local v7, "numeric":Ljava/lang/String;
    sget-object v9, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "numeric = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-le v9, v10, :cond_0

    .line 277
    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 279
    .local v5, "mcc":Ljava/lang/String;
    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 281
    .local v6, "mnc":Ljava/lang/String;
    iput-object v6, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCurMnc:Ljava/lang/String;

    .line 282
    iput-object v5, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCurMcc:Ljava/lang/String;

    .line 286
    .end local v5    # "mcc":Ljava/lang/String;
    .end local v6    # "mnc":Ljava/lang/String;
    .end local v7    # "numeric":Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xe

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 287
    .local v1, "authVal":I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_4

    .line 288
    const/4 v9, 0x1

    if-lt v1, v9, :cond_1

    const/4 v9, 0x2

    if-le v1, v9, :cond_2

    .line 289
    :cond_1
    const/4 v1, 0x2

    .line 291
    :cond_2
    sget-object v9, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fillUi() : mCursor.getInt(AUTH_TYPE_INDEX) = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    add-int/lit8 v10, v1, -0x1

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 297
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "kddi_cpa_static_dns1"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, "dns1":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "kddi_cpa_static_dns2"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 299
    .local v4, "dns2":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mDns1:Landroid/preference/EditTextPreference;

    invoke-virtual {v9, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 300
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-virtual {v9, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 303
    .end local v1    # "authVal":I
    .end local v3    # "dns1":Ljava/lang/String;
    .end local v4    # "dns2":Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/cpa/CpaAdvancedSettings;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mDns1:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    .line 310
    .restart local v3    # "dns1":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    .line 311
    .restart local v4    # "dns2":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mDns1:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v4}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 314
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 315
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 320
    :goto_1
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "authVal":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 322
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 323
    .local v2, "authValIndex":I
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v9, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 325
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f11003d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 326
    .local v8, "values":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    aget-object v10, v8, v2

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 330
    .end local v2    # "authValIndex":I
    .end local v8    # "values":[Ljava/lang/String;
    :goto_2
    return-void

    .line 294
    .end local v3    # "dns1":Ljava/lang/String;
    .end local v4    # "dns2":Ljava/lang/String;
    .local v1, "authVal":I
    :cond_4
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 317
    .end local v1    # "authVal":I
    .restart local v3    # "dns1":Ljava/lang/String;
    .restart local v4    # "dns2":Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto :goto_1

    .line 328
    .local v1, "authVal":Ljava/lang/String;
    :cond_6
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    sget-object v10, Lcom/android/settings/cpa/CpaAdvancedSettings;->sNotSet:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 686
    const/4 v1, 0x0

    .line 688
    .local v1, "errorMsg":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, "apn":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 690
    .local v5, "user":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 691
    .local v2, "passwd":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 692
    .local v4, "proxy":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 694
    .local v3, "port":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_1

    .line 695
    iget-object v6, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0e070b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 705
    :cond_0
    :goto_0
    return-object v1

    .line 696
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_2

    .line 697
    iget-object v6, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0e0723

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 698
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_3

    .line 699
    iget-object v6, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0e0724

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 700
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_0

    .line 701
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v7, :cond_0

    .line 702
    iget-object v6, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0e071f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private isValidIP(Ljava/lang/String;)Z
    .locals 6
    .param p1, "mIP"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 514
    if-nez p1, :cond_0

    .line 528
    :goto_0
    return v2

    .line 517
    :cond_0
    iget-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->regExpn_IP:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 518
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 520
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 521
    goto :goto_0

    .line 523
    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 524
    sget-object v2, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isValidIP : Valid IP == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 525
    goto :goto_0

    .line 527
    :cond_2
    sget-object v3, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isValidIP : unValid IP == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isValidPort(Ljava/lang/String;)Z
    .locals 6
    .param p1, "sPort"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 532
    if-nez p1, :cond_0

    .line 553
    :goto_0
    return v2

    .line 535
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 536
    goto :goto_0

    .line 538
    :cond_1
    const/4 v1, 0x0

    .line 541
    .local v1, "mPort_int":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 548
    const v4, 0xffff

    if-gt v1, v4, :cond_2

    if-gez v1, :cond_3

    .line 549
    :cond_2
    sget-object v3, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isValidPort : unValid Port == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 542
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string v4, "It\'s not number type!!!"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 552
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    sget-object v2, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isValidPort : Valid Port == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 553
    goto :goto_0
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 757
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 758
    :cond_0
    sget-object v2, Lcom/android/settings/cpa/CpaAdvancedSettings;->sNotSet:Ljava/lang/String;

    .line 764
    :goto_0
    return-object v2

    .line 760
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 761
    .local v1, "password":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 762
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 761
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 764
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 13
    .param p1, "force"    # Z

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 623
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, "apn":Ljava/lang/String;
    sget-object v8, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "validateAndSave()force = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-direct {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getErrorMsg()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    if-nez p1, :cond_1

    .line 627
    invoke-virtual {p0, v6}, Lcom/android/settings/cpa/CpaAdvancedSettings;->showDialog(I)V

    .line 682
    :cond_0
    :goto_0
    return v6

    .line 631
    :cond_1
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-nez v8, :cond_2

    .line 632
    sget-object v7, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string v8, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 638
    :cond_2
    if-eqz p1, :cond_3

    iget-boolean v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mNewApn:Z

    if-eqz v8, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v7, :cond_0

    .line 643
    :cond_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 647
    .local v5, "values":Landroid/content/ContentValues;
    const-string v8, "apn"

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v8, "proxy"

    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v8, "port"

    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v8, "user"

    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string v8, "password"

    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 654
    .local v1, "authVal":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 655
    const-string v8, "authtype"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    :cond_4
    const-string v8, "gsm.sim.operator.numeric"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 659
    .local v4, "numeric":Ljava/lang/String;
    sget-object v8, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "validateAndSave numeric = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const-string v3, ""

    .line 662
    .local v3, "mnc":Ljava/lang/String;
    const-string v2, ""

    .line 664
    .local v2, "mcc":Ljava/lang/String;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-le v8, v9, :cond_5

    .line 665
    invoke-virtual {v4, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 666
    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 668
    iput-object v3, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCurMnc:Ljava/lang/String;

    .line 669
    iput-object v2, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCurMcc:Ljava/lang/String;

    .line 671
    :cond_5
    const-string v6, "numeric"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    sget-object v6, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string v8, "CURRENT 1"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v6, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCurMnc:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCurMcc:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 674
    sget-object v6, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string v8, "CURRENT 2"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v6, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 676
    sget-object v6, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string v8, "CURRENT 3"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const-string v6, "current"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 680
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v8, v5, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v6, v7

    .line 682
    goto/16 :goto_0
.end method


# virtual methods
.method public isValidID(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 13
    .param p1, "inputEmail"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x40

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 444
    if-nez p1, :cond_0

    .line 445
    sget-object v8, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string v9, "isValidID : inputEmail == null"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 486
    :goto_0
    return-object v8

    .line 449
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 450
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_0

    .line 452
    :cond_1
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->regExpn:Ljava/lang/String;

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 454
    .local v4, "p":Ljava/util/regex/Pattern;
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->regExpn1:Ljava/lang/String;

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 456
    .local v5, "p1":Ljava/util/regex/Pattern;
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->regExpn_Domain_num:Ljava/lang/String;

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 457
    .local v6, "p2":Ljava/util/regex/Pattern;
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->regExpn_Domain_num1:Ljava/lang/String;

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 459
    .local v7, "p3":Ljava/util/regex/Pattern;
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 460
    .local v1, "limitId":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    sub-int v0, v8, v9

    .line 462
    .local v0, "limitDomain":I
    const/16 v8, 0x18

    if-le v1, v8, :cond_2

    .line 463
    sget-object v8, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isValidID : limitId == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_0

    .line 465
    :cond_2
    const/16 v8, 0x14

    if-le v0, v8, :cond_3

    .line 466
    sget-object v8, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isValidID : limitDomain == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_0

    .line 468
    :cond_3
    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-ne v8, v12, :cond_4

    .line 469
    sget-object v8, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isValidID : domain made only numberic!!  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto/16 :goto_0

    .line 471
    :cond_4
    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-ne v8, v12, :cond_5

    .line 472
    sget-object v8, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isValidID : domain made only numberic!!  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto/16 :goto_0

    .line 476
    :cond_5
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 477
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 478
    .local v3, "m1":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 480
    :cond_6
    sget-object v8, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isValidID : Valid id == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto/16 :goto_0

    .line 485
    :cond_7
    sget-object v8, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isValidID : Invalid id == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto/16 :goto_0
.end method

.method public isValidPwd(Ljava/lang/String;)Z
    .locals 5
    .param p1, "inputPwd"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 491
    if-nez p1, :cond_0

    .line 492
    sget-object v3, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string v4, "inputPwd : inputPwd == null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :goto_0
    return v2

    .line 497
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 498
    goto :goto_0

    .line 500
    :cond_1
    iget-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->regExpn_Pwd:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 501
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 503
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 504
    sget-object v2, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string v4, "isValidPwd : Vaild pwd"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 506
    goto :goto_0

    .line 508
    :cond_2
    sget-object v3, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string v4, "isValidPwd : Invalid pwd"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 193
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 195
    const v4, 0x7f08002f

    invoke-virtual {p0, v4}, Lcom/android/settings/cpa/CpaAdvancedSettings;->addPreferencesFromResource(I)V

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 198
    .local v2, "ps":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0e06ea

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings/cpa/CpaAdvancedSettings;->sNotSet:Ljava/lang/String;

    .line 199
    const-string v4, "apn_apn"

    invoke-virtual {p0, v4}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    .line 200
    const-string v4, "apn_http_proxy"

    invoke-virtual {p0, v4}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    .line 201
    const-string v4, "apn_http_port"

    invoke-virtual {p0, v4}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    .line 202
    const-string v4, "apn_user"

    invoke-virtual {p0, v4}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    .line 203
    const-string v4, "apn_password"

    invoke-virtual {p0, v4}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    .line 204
    const-string v4, "dns1"

    invoke-virtual {p0, v4}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mDns1:Landroid/preference/EditTextPreference;

    .line 205
    const-string v4, "dns2"

    invoke-virtual {p0, v4}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    .line 207
    iget-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 208
    iget-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 209
    iget-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 210
    iget-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 211
    iget-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mDns1:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 212
    iget-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 214
    const-string v4, "auth_type"

    invoke-virtual {p0, v4}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    .line 215
    iget-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 218
    .local v3, "tempIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 221
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "action":Ljava/lang/String;
    if-nez p1, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mFirstTime:Z

    .line 225
    const-string v4, "com.samsung.settings.cpa.CpaAdvancedSettings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 226
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mUri:Landroid/net/Uri;

    .line 227
    const-string v4, "new"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mNewApn:Z

    .line 232
    sget-object v4, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/settings/cpa/CpaAdvancedSettings;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v7, v7}, Lcom/android/settings/cpa/CpaAdvancedSettings;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    .line 234
    sget-object v4, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCursor = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 237
    invoke-direct {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->fillUi()V

    .line 238
    :goto_1
    return-void

    :cond_0
    move v4, v5

    .line 223
    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->finish()V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    const v3, 0x104000a

    .line 711
    if-nez p1, :cond_0

    .line 712
    invoke-direct {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0709

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e115d

    new-instance v3, Lcom/android/settings/cpa/CpaAdvancedSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/cpa/CpaAdvancedSettings$3;-><init>(Lcom/android/settings/cpa/CpaAdvancedSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 735
    .end local v0    # "msg":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 725
    :cond_0
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 726
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0389

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0712

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 735
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 595
    packed-switch p1, :pswitch_data_0

    .line 605
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 597
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/cpa/CpaAdvancedSettings;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/cpa/CpaAdvancedSettings;->setResult(I)V

    .line 599
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "kddi_cpa_added"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 600
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->finish()V

    goto :goto_0

    .line 595
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 254
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 255
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const v9, 0x7f0e071e

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 352
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, "key":Ljava/lang/String;
    const-string v8, "auth_type"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 355
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 356
    .local v1, "index":I
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v8, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 358
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f11003d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 359
    .local v5, "values":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    aget-object v9, v5, v1

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "index":I
    .end local v5    # "values":[Ljava/lang/String;
    :cond_0
    :goto_0
    move v6, v7

    .line 426
    :goto_1
    return v6

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 363
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string v8, "apn_http_port"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v3, p2

    .line 364
    check-cast v3, Ljava/lang/String;

    .line 365
    .local v3, "value":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/settings/cpa/CpaAdvancedSettings;->isValidPort(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 367
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 368
    :catch_1
    move-exception v6

    goto :goto_0

    .line 372
    :cond_2
    iget-object v7, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f0e071f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    goto :goto_1

    .line 375
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    const-string v8, "apn_apn"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v3, p2

    .line 376
    check-cast v3, Ljava/lang/String;

    .line 378
    .restart local v3    # "value":Ljava/lang/String;
    const-string v8, ".au-net.ne.jp"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 379
    iget-object v7, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f0e0720

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    goto :goto_1

    .line 382
    .end local v3    # "value":Ljava/lang/String;
    :cond_4
    const-string v8, "apn_user"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v3, p2

    .line 383
    check-cast v3, Ljava/lang/String;

    .line 384
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/settings/cpa/CpaAdvancedSettings;->isValidID(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 385
    iget-object v6, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 387
    :cond_5
    iget-object v7, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f0e0721

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    goto :goto_1

    .line 390
    .end local v3    # "value":Ljava/lang/String;
    :cond_6
    const-string v8, "apn_password"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    move-object v3, p2

    .line 391
    check-cast v3, Ljava/lang/String;

    .line 392
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/settings/cpa/CpaAdvancedSettings;->isValidPwd(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 393
    iget-object v6, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/cpa/CpaAdvancedSettings;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 395
    :cond_7
    iget-object v7, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f0e0722

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 399
    .end local v3    # "value":Ljava/lang/String;
    :cond_8
    const-string v8, "dns1"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    move-object v3, p2

    .line 400
    check-cast v3, Ljava/lang/String;

    .line 401
    .restart local v3    # "value":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/settings/cpa/CpaAdvancedSettings;->isValidIP(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 402
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "kddi_cpa_static_dns2"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, "value2":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "kddi_cpa_static_dns1"

    invoke-static {v8, v9, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 406
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 407
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v6}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 409
    :cond_9
    iget-object v6, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 412
    .end local v4    # "value2":Ljava/lang/String;
    :cond_a
    iget-object v7, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 415
    .end local v3    # "value":Ljava/lang/String;
    :cond_b
    const-string v8, "dns2"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v3, p2

    .line 416
    check-cast v3, Ljava/lang/String;

    .line 417
    .restart local v3    # "value":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/settings/cpa/CpaAdvancedSettings;->isValidIP(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 418
    invoke-direct {p0, v3}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 419
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "kddi_cpa_static_dns2"

    invoke-static {v6, v8, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 421
    :cond_c
    iget-object v7, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 740
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 742
    if-nez p1, :cond_0

    .line 743
    invoke-direct {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, "msg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 746
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 749
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 242
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 247
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 610
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 611
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    const-string v0, "pos"

    iget-object v1, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 614
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 820
    invoke-virtual {p0, p2}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 822
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 823
    iget-object v1, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 824
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/cpa/CpaAdvancedSettings;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 829
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showAlertDialogAboutInvalid(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 430
    if-eqz p1, :cond_0

    .line 431
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 432
    .local v0, "errorDialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e0709

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 433
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/cpa/CpaAdvancedSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/cpa/CpaAdvancedSettings$2;-><init>(Lcom/android/settings/cpa/CpaAdvancedSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 437
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 438
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 441
    .end local v0    # "errorDialog":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method
