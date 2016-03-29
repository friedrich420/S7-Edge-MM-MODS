.class public Lcom/android/settings/nfc/TapAndPaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TapAndPaySettings.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field static final DBG:Z

.field private static OTHER_TAB_TAG:Ljava/lang/String;

.field private static PAYMENT_TAB_TAG:Ljava/lang/String;

.field private static SETTING_OTHER_TAB:I

.field private static SETTING_PAYMENT_TAB:I


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOtherFragment:Lcom/android/settings/nfc/OtherSettings;

.field private mPaymentFragment:Lcom/android/settings/nfc/PaymentSettings;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 42
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/nfc/TapAndPaySettings;->DBG:Z

    .line 57
    sput v1, Lcom/android/settings/nfc/TapAndPaySettings;->SETTING_PAYMENT_TAB:I

    .line 58
    sput v2, Lcom/android/settings/nfc/TapAndPaySettings;->SETTING_OTHER_TAB:I

    .line 60
    const-string v0, "payment"

    sput-object v0, Lcom/android/settings/nfc/TapAndPaySettings;->PAYMENT_TAB_TAG:Ljava/lang/String;

    .line 61
    const-string v0, "others"

    sput-object v0, Lcom/android/settings/nfc/TapAndPaySettings;->OTHER_TAB_TAG:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 42
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 70
    new-instance v0, Lcom/android/settings/nfc/TapAndPaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/TapAndPaySettings$1;-><init>(Lcom/android/settings/nfc/TapAndPaySettings;)V

    iput-object v0, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/TapAndPaySettings;)Lcom/android/settings/nfc/PaymentSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/TapAndPaySettings;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mPaymentFragment:Lcom/android/settings/nfc/PaymentSettings;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/nfc/TapAndPaySettings;Lcom/android/settings/nfc/PaymentSettings;)Lcom/android/settings/nfc/PaymentSettings;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/TapAndPaySettings;
    .param p1, "x1"    # Lcom/android/settings/nfc/PaymentSettings;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mPaymentFragment:Lcom/android/settings/nfc/PaymentSettings;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/settings/nfc/TapAndPaySettings;->PAYMENT_TAB_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/TapAndPaySettings;)Lcom/android/settings/nfc/OtherSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/TapAndPaySettings;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mOtherFragment:Lcom/android/settings/nfc/OtherSettings;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/nfc/TapAndPaySettings;Lcom/android/settings/nfc/OtherSettings;)Lcom/android/settings/nfc/OtherSettings;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/TapAndPaySettings;
    .param p1, "x1"    # Lcom/android/settings/nfc/OtherSettings;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mOtherFragment:Lcom/android/settings/nfc/OtherSettings;

    return-object p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/settings/nfc/TapAndPaySettings;->OTHER_TAB_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/nfc/TapAndPaySettings;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/TapAndPaySettings;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/android/settings/nfc/TapAndPaySettings;->SETTING_PAYMENT_TAB:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/android/settings/nfc/TapAndPaySettings;->SETTING_OTHER_TAB:I

    return v0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x46

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    sget-boolean v0, Lcom/android/settings/nfc/TapAndPaySettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "TapAndPaySettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/TapAndPaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mInflater:Landroid/view/LayoutInflater;

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 105
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x1020011

    .line 109
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 111
    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04014f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, "v":Landroid/view/View;
    const v1, 0x1020012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost;

    iput-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    .line 114
    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->setup()V

    .line 115
    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 117
    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    sget-object v3, Lcom/android/settings/nfc/TapAndPaySettings;->PAYMENT_TAB_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f0e0d5b

    invoke-virtual {p0, v3}, Lcom/android/settings/nfc/TapAndPaySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 121
    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    sget-object v3, Lcom/android/settings/nfc/TapAndPaySettings;->OTHER_TAB_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f0e0d5c

    invoke-virtual {p0, v3}, Lcom/android/settings/nfc/TapAndPaySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 125
    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    sget v2, Lcom/android/settings/nfc/TapAndPaySettings;->SETTING_PAYMENT_TAB:I

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 127
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 149
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 134
    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 138
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 139
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "org.mobilenfcassociation.CardEmulation.action.AID_TABLE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "com.samsung.nfc.action.LMRT_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    const v3, 0x7f0d0379

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 155
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/android/settings/nfc/TapAndPaySettings;->PAYMENT_TAB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/nfc/PaymentSettings;

    iput-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mPaymentFragment:Lcom/android/settings/nfc/PaymentSettings;

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/android/settings/nfc/TapAndPaySettings;->OTHER_TAB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/nfc/OtherSettings;

    iput-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mOtherFragment:Lcom/android/settings/nfc/OtherSettings;

    .line 158
    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mPaymentFragment:Lcom/android/settings/nfc/PaymentSettings;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mPaymentFragment:Lcom/android/settings/nfc/PaymentSettings;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mOtherFragment:Lcom/android/settings/nfc/OtherSettings;

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mOtherFragment:Lcom/android/settings/nfc/OtherSettings;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 166
    :cond_1
    sget-object v1, Lcom/android/settings/nfc/TapAndPaySettings;->PAYMENT_TAB_TAG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 167
    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mPaymentFragment:Lcom/android/settings/nfc/PaymentSettings;

    if-nez v1, :cond_3

    .line 168
    new-instance v1, Lcom/android/settings/nfc/PaymentSettings;

    invoke-direct {v1}, Lcom/android/settings/nfc/PaymentSettings;-><init>()V

    sget-object v2, Lcom/android/settings/nfc/TapAndPaySettings;->PAYMENT_TAB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 179
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 180
    return-void

    .line 170
    :cond_3
    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mPaymentFragment:Lcom/android/settings/nfc/PaymentSettings;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 172
    :cond_4
    sget-object v1, Lcom/android/settings/nfc/TapAndPaySettings;->OTHER_TAB_TAG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mOtherFragment:Lcom/android/settings/nfc/OtherSettings;

    if-nez v1, :cond_5

    .line 174
    new-instance v1, Lcom/android/settings/nfc/OtherSettings;

    invoke-direct {v1}, Lcom/android/settings/nfc/OtherSettings;-><init>()V

    sget-object v2, Lcom/android/settings/nfc/TapAndPaySettings;->OTHER_TAB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 176
    :cond_5
    iget-object v1, p0, Lcom/android/settings/nfc/TapAndPaySettings;->mOtherFragment:Lcom/android/settings/nfc/OtherSettings;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method
