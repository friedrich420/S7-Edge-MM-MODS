.class public Lcom/android/settings/nfc/NfcListenStatusChange;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NfcListenStatusChange.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;,
        Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreen;
    }
.end annotation


# instance fields
.field private alertDialog:Landroid/app/AlertDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mFeliCaLock:Z

.field mHandler:Landroid/os/Handler;

.field mHandlerBF:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

.field private final mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mSelectAccount:Ljava/lang/String;

.field private mSetReceiver:Z

.field private mUimLock:Z

.field private pNFcTypeABF:Landroid/preference/CheckBoxPreference;

.field private pNFcTypeAF:Landroid/preference/CheckBoxPreference;

.field private pNFcTypeBF:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 63
    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mFeliCaLock:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mUimLock:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mSetReceiver:Z

    .line 78
    iput-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeABF:Landroid/preference/CheckBoxPreference;

    .line 79
    iput-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeAF:Landroid/preference/CheckBoxPreference;

    .line 80
    iput-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeBF:Landroid/preference/CheckBoxPreference;

    .line 89
    new-instance v0, Lcom/android/settings/nfc/NfcListenStatusChange$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcListenStatusChange$1;-><init>(Lcom/android/settings/nfc/NfcListenStatusChange;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 290
    new-instance v0, Lcom/android/settings/nfc/NfcListenStatusChange$4;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcListenStatusChange$4;-><init>(Lcom/android/settings/nfc/NfcListenStatusChange;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 361
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/NfcListenStatusChange;)Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcListenStatusChange;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/NfcListenStatusChange;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcListenStatusChange;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mFeliCaLock:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/nfc/NfcListenStatusChange;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcListenStatusChange;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->alertDialog:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/nfc/NfcListenStatusChange;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcListenStatusChange;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mFeliCaLock:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/nfc/NfcListenStatusChange;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcListenStatusChange;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcListenStatusChange;->createScreen()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/NfcListenStatusChange;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcListenStatusChange;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mUimLock:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/nfc/NfcListenStatusChange;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcListenStatusChange;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mUimLock:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcListenStatusChange;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeABF:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcListenStatusChange;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeAF:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcListenStatusChange;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeBF:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/nfc/NfcListenStatusChange;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcListenStatusChange;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mSelectAccount:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/nfc/NfcListenStatusChange;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcListenStatusChange;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcListenStatusChange;->startHandler()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/nfc/NfcListenStatusChange;)Landroid/nfc/NfcAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcListenStatusChange;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/nfc/NfcListenStatusChange;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcListenStatusChange;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcListenStatusChange;->startHandlerBF()V

    return-void
.end method

.method private createCheckBox(Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V
    .locals 2
    .param p1, "preference"    # Landroid/preference/CheckBoxPreference;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mSelectAccount:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 267
    .local v0, "isChecked":Z
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 268
    iget-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 270
    return-void
.end method

.method private createScreen()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeABF:Landroid/preference/CheckBoxPreference;

    const-string v1, "00001,0"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/nfc/NfcListenStatusChange;->createCheckBox(Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeAF:Landroid/preference/CheckBoxPreference;

    const-string v1, "00001,1"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/nfc/NfcListenStatusChange;->createCheckBox(Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeBF:Landroid/preference/CheckBoxPreference;

    const-string v1, "00001,2"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/nfc/NfcListenStatusChange;->createCheckBox(Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method private loadSelectRadioButton()V
    .locals 2

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v1}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getNfcTypeSettings()I

    move-result v0

    .line 275
    .local v0, "Value":I
    packed-switch v0, :pswitch_data_0

    .line 287
    :goto_0
    return-void

    .line 277
    :pswitch_0
    const-string v1, "00001,0"

    iput-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mSelectAccount:Ljava/lang/String;

    goto :goto_0

    .line 280
    :pswitch_1
    const-string v1, "00001,1"

    iput-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mSelectAccount:Ljava/lang/String;

    goto :goto_0

    .line 283
    :pswitch_2
    const-string v1, "00001,2"

    iput-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mSelectAccount:Ljava/lang/String;

    goto :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startHandler()V
    .locals 1

    .prologue
    .line 342
    new-instance v0, Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreen;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreen;-><init>(Lcom/android/settings/nfc/NfcListenStatusChange;)V

    .line 343
    .local v0, "screen":Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreen;
    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreen;->start()V

    .line 344
    return-void
.end method

.method private startHandlerBF()V
    .locals 1

    .prologue
    .line 357
    new-instance v0, Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;-><init>(Lcom/android/settings/nfc/NfcListenStatusChange;)V

    .line 358
    .local v0, "screen":Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;
    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;->start()V

    .line 359
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0x45

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcListenStatusChange;->startHandler()V

    .line 384
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 379
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 181
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 182
    const v1, 0x7f08007f

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/NfcListenStatusChange;->addPreferencesFromResource(I)V

    .line 183
    const v1, 0x7f0e1728

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/NfcListenStatusChange;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/NfcListenStatusChange;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 185
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mHandler:Landroid/os/Handler;

    .line 186
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mHandlerBF:Landroid/os/Handler;

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcListenStatusChange;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 189
    .local v0, "activity":Landroid/app/Activity;
    iput-object v0, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mContext:Landroid/content/Context;

    .line 190
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_EF_LOCK_STATE_GET"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mIntentFilter:Landroid/content/IntentFilter;

    .line 191
    iget-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_EF_LOCK_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcListenStatusChange;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 196
    new-instance v1, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    .line 198
    const v1, 0x7f0e1729

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/NfcListenStatusChange;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/NfcListenStatusChange;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeABF:Landroid/preference/CheckBoxPreference;

    .line 199
    const v1, 0x7f0e172a

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/NfcListenStatusChange;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/NfcListenStatusChange;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeAF:Landroid/preference/CheckBoxPreference;

    .line 200
    const v1, 0x7f0e172b

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/NfcListenStatusChange;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/NfcListenStatusChange;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeBF:Landroid/preference/CheckBoxPreference;

    .line 202
    iget-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeABF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 203
    iget-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeAF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 204
    iget-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeBF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 206
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcListenStatusChange;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->alertDialog:Landroid/app/AlertDialog$Builder;

    .line 207
    iget-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->alertDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0e172c

    invoke-virtual {p0, v2}, Lcom/android/settings/nfc/NfcListenStatusChange;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 208
    iget-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->alertDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0e172d

    invoke-virtual {p0, v2}, Lcom/android/settings/nfc/NfcListenStatusChange;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/nfc/NfcListenStatusChange$2;

    invoke-direct {v3, p0}, Lcom/android/settings/nfc/NfcListenStatusChange$2;-><init>(Lcom/android/settings/nfc/NfcListenStatusChange;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 227
    iget-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->alertDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0e172e

    invoke-virtual {p0, v2}, Lcom/android/settings/nfc/NfcListenStatusChange;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/nfc/NfcListenStatusChange$3;

    invoke-direct {v3, p0}, Lcom/android/settings/nfc/NfcListenStatusChange$3;-><init>(Lcom/android/settings/nfc/NfcListenStatusChange;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 232
    iget-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->alertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 233
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 375
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 248
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 249
    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mSetReceiver:Z

    if-eqz v0, :cond_0

    .line 250
    const-string v0, "[NfcListenStatus]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ON -> OFF mSetReceiver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mSetReceiver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mSetReceiver:Z

    .line 254
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 237
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 238
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcListenStatusChange;->loadSelectRadioButton()V

    .line 239
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcListenStatusChange;->createScreen()V

    .line 240
    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mSetReceiver:Z

    if-nez v0, :cond_0

    .line 241
    const-string v0, "[NfcListenStatus]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OFF -> ON mSetReceiver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mSetReceiver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcListenStatusChange;->mSetReceiver:Z

    .line 245
    :cond_0
    return-void
.end method
