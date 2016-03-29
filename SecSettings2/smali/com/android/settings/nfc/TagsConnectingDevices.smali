.class public Lcom/android/settings/nfc/TagsConnectingDevices;
.super Landroid/app/Fragment;
.source "TagsConnectingDevices.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static androidBeamState:I


# instance fields
.field private activity:Landroid/app/Activity;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    .line 60
    new-instance v0, Lcom/android/settings/nfc/TagsConnectingDevices$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/TagsConnectingDevices$1;-><init>(Lcom/android/settings/nfc/TagsConnectingDevices;)V

    iput-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/TagsConnectingDevices;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/TagsConnectingDevices;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/TagsConnectingDevices;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/TagsConnectingDevices;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/TagsConnectingDevices;->setSwitchStatus(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/TagsConnectingDevices;)Landroid/nfc/NfcAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/TagsConnectingDevices;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/nfc/TagsConnectingDevices;)Lcom/android/settings/widget/SwitchBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/TagsConnectingDevices;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method private makeAlertDialog()V
    .locals 3

    .prologue
    .line 154
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    .local v0, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e032d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 156
    const v1, 0x7f0e032c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 157
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/nfc/TagsConnectingDevices$2;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/TagsConnectingDevices$2;-><init>(Lcom/android/settings/nfc/TagsConnectingDevices;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 168
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/nfc/TagsConnectingDevices$3;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/TagsConnectingDevices$3;-><init>(Lcom/android/settings/nfc/TagsConnectingDevices;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 174
    new-instance v1, Lcom/android/settings/nfc/TagsConnectingDevices$4;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/TagsConnectingDevices$4;-><init>(Lcom/android/settings/nfc/TagsConnectingDevices;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 179
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 180
    return-void
.end method

.method private setSwitchStatus(ZZ)V
    .locals 1
    .param p1, "isenabled"    # Z
    .param p2, "ischecked"    # Z

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 185
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 188
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 96
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 99
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 101
    iget-object v2, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 103
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 83
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mOldActivityTitle:Ljava/lang/CharSequence;

    .line 84
    const v2, 0x7f0e032b

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_beam_state"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/settings/nfc/TagsConnectingDevices;->androidBeamState:I

    .line 89
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    const v0, 0x7f04020d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mView:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 121
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 127
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 107
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 109
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 110
    invoke-direct {p0, v2, v2}, Lcom/android/settings/nfc/TagsConnectingDevices;->setSwitchStatus(ZZ)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 112
    invoke-direct {p0, v2, v3}, Lcom/android/settings/nfc/TagsConnectingDevices;->setSwitchStatus(ZZ)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 114
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/TagsConnectingDevices;->setSwitchStatus(ZZ)V

    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v3, 0x1

    .line 138
    const-string v0, "TagsConnectingDevices"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/nfc/TagsConnectingDevices;->androidBeamState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 140
    if-eqz p2, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_beam_state"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 150
    return-void

    .line 144
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-direct {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->makeAlertDialog()V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    goto :goto_0
.end method
