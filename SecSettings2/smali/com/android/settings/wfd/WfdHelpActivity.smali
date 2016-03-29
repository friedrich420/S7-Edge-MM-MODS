.class public Lcom/android/settings/wfd/WfdHelpActivity;
.super Landroid/app/Activity;
.source "WfdHelpActivity.java"


# instance fields
.field private mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mIsReadOnlyChecked:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWriteTagMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 58
    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mIsReadOnlyChecked:Z

    .line 64
    new-instance v0, Lcom/android/settings/wfd/WfdHelpActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdHelpActivity$1;-><init>(Lcom/android/settings/wfd/WfdHelpActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 71
    new-instance v0, Lcom/android/settings/wfd/WfdHelpActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdHelpActivity$2;-><init>(Lcom/android/settings/wfd/WfdHelpActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/wfd/WfdHelpActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wfd/WfdHelpActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mIsReadOnlyChecked:Z

    return p1
.end method

.method private makeNdefMessage(Ljava/lang/String;)Landroid/nfc/NdefMessage;
    .locals 5
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 300
    const-string v2, "WfdHelpActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "make Ndef message - addr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 302
    .local v0, "addrBytes":[B
    const-string v2, "com.android.settings.wfd"

    const-string v3, "addr"

    invoke-static {v2, v3, v0}, Landroid/nfc/NdefRecord;->createExternal(Ljava/lang/String;Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 303
    .local v1, "addrRecord":Landroid/nfc/NdefRecord;
    new-instance v2, Landroid/nfc/NdefMessage;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v2
.end method

.method private startWfdPickerDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "show_dialog_once"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    const-string v1, "tag_write_if_success"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdHelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 159
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 191
    const-string v0, "WfdHelpActivity"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->finish()V

    .line 193
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 198
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 82
    const-string v7, "WfdHelpActivity"

    const-string v8, "onCreate"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/Window;->requestFeature(I)Z

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v5, "intentFilter":Landroid/content/IntentFilter;
    const-string v7, "com.samsung.wfd.ALL_CLEAR"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v7, "android.nfc.extra.TAG"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v7, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v5}, Lcom/android/settings/wfd/WfdHelpActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "intentAction":Ljava/lang/String;
    const-string v7, "WfdHelpActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "received action is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v7, "com.samsung.wfd.DP_HELP"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 97
    const-string v7, "WfdHelpActivity"

    const-string v8, "ACTION_DP_HELP"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iput-boolean v11, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 99
    const v7, 0x7f0e10dd

    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 100
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->startWfdPickerDialog()V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->finish()V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const-string v7, "com.samsung.wfd.WRITE_NFC"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 104
    const-string v7, "WfdHelpActivity"

    const-string v8, "ACTION_WRITE_TAG"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iput-boolean v10, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 107
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 108
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0e10d2

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 109
    const v7, 0x7f0e0827

    new-instance v8, Lcom/android/settings/wfd/WfdHelpActivity$3;

    invoke-direct {v8, p0}, Lcom/android/settings/wfd/WfdHelpActivity$3;-><init>(Lcom/android/settings/wfd/WfdHelpActivity;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 116
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f040236

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v3, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 117
    .local v2, "dialoglayout":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 119
    const v7, 0x7f0d053f

    invoke-virtual {p0, v7}, Lcom/android/settings/wfd/WfdHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 120
    .local v6, "isReadOnly":Landroid/widget/CheckBox;
    if-eqz v6, :cond_2

    .line 121
    iget-object v7, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 124
    :cond_2
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 125
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v7, Lcom/android/settings/wfd/WfdHelpActivity$4;

    invoke-direct {v7, p0, v0}, Lcom/android/settings/wfd/WfdHelpActivity$4;-><init>(Lcom/android/settings/wfd/WfdHelpActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 133
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 184
    const-string v0, "WfdHelpActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 186
    iget-object v0, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdHelpActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 187
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 202
    const-string v6, "WfdHelpActivity"

    const-string v7, "onNewIntent"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v6, "WfdHelpActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWriteTagMode ==> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-boolean v6, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    if-eqz v6, :cond_3

    .line 206
    const-string v6, "WfdHelpActivity"

    const-string v7, "mWriteTagMode!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "connectAddr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 209
    .local v2, "mDisplayManager":Landroid/hardware/display/DisplayManager;
    const-string v6, "display"

    invoke-virtual {p0, v6}, Lcom/android/settings/wfd/WfdHelpActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mDisplayManager":Landroid/hardware/display/DisplayManager;
    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 211
    .restart local v2    # "mDisplayManager":Landroid/hardware/display/DisplayManager;
    if-eqz v2, :cond_0

    .line 212
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v4

    .line 214
    .local v4, "wifiDisplayStatusTemp":Landroid/hardware/display/WifiDisplayStatus;
    if-eqz v4, :cond_0

    .line 215
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v5

    .line 216
    .local v5, "wifiDisplayTemp":Landroid/hardware/display/WifiDisplay;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    .line 219
    .end local v4    # "wifiDisplayStatusTemp":Landroid/hardware/display/WifiDisplayStatus;
    .end local v5    # "wifiDisplayTemp":Landroid/hardware/display/WifiDisplay;
    :cond_0
    if-eqz v0, :cond_1

    .line 220
    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdHelpActivity;->makeNdefMessage(Ljava/lang/String;)Landroid/nfc/NdefMessage;

    move-result-object v3

    .line 221
    .local v3, "message":Landroid/nfc/NdefMessage;
    const-string v6, "android.nfc.extra.TAG"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/nfc/Tag;

    .line 223
    .local v1, "detectedTag":Landroid/nfc/Tag;
    invoke-virtual {p0, v3, v1}, Lcom/android/settings/wfd/WfdHelpActivity;->writeTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 224
    const v6, 0x7f0e10df

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 229
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->finish()V

    .line 235
    .end local v0    # "connectAddr":Ljava/lang/String;
    .end local v1    # "detectedTag":Landroid/nfc/Tag;
    .end local v2    # "mDisplayManager":Landroid/hardware/display/DisplayManager;
    .end local v3    # "message":Landroid/nfc/NdefMessage;
    :cond_1
    :goto_1
    return-void

    .line 227
    .restart local v0    # "connectAddr":Ljava/lang/String;
    .restart local v1    # "detectedTag":Landroid/nfc/Tag;
    .restart local v2    # "mDisplayManager":Landroid/hardware/display/DisplayManager;
    .restart local v3    # "message":Landroid/nfc/NdefMessage;
    :cond_2
    const v6, 0x7f0e10e0

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 233
    .end local v0    # "connectAddr":Ljava/lang/String;
    .end local v1    # "detectedTag":Landroid/nfc/Tag;
    .end local v2    # "mDisplayManager":Landroid/hardware/display/DisplayManager;
    .end local v3    # "message":Landroid/nfc/NdefMessage;
    :cond_3
    const-string v6, "WfdHelpActivity"

    const-string v7, "Activity received other intent from NDEF_DISCOVER"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 175
    const-string v1, "WfdHelpActivity"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 178
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    .line 180
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 163
    const-string v2, "WfdHelpActivity"

    const-string v4, "onResume"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 166
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x20000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 168
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    move-object v2, v3

    .line 169
    check-cast v2, [[Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v3, v2}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 170
    :cond_0
    return-void
.end method

.method writeTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z
    .locals 8
    .param p1, "message"    # Landroid/nfc/NdefMessage;
    .param p2, "tag"    # Landroid/nfc/Tag;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 238
    const-string v6, "WfdHelpActivity"

    const-string v7, "writeTag"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v6

    array-length v3, v6

    .line 240
    .local v3, "size":I
    const/4 v1, 0x0

    .line 241
    .local v1, "format":Landroid/nfc/tech/NdefFormatable;
    const/4 v2, 0x0

    .line 243
    .local v2, "ndef":Landroid/nfc/tech/Ndef;
    :try_start_0
    invoke-static {p2}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v2

    .line 244
    if-eqz v2, :cond_5

    .line 245
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->connect()V

    .line 247
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result v6

    if-nez v6, :cond_1

    .line 248
    const-string v5, "WfdHelpActivity"

    const-string v6, "Tag is read-only."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->close()V

    .line 296
    :cond_0
    :goto_0
    return v4

    .line 253
    :cond_1
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v6

    if-ge v6, v3, :cond_3

    .line 254
    const-string v5, "WfdHelpActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tag capacity is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes, message is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "WfdHelpActivity"

    const-string v6, "Failed to write tag"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Landroid/nfc/tech/NdefFormatable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 292
    :cond_2
    :goto_2
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 293
    :catch_1
    move-exception v0

    .line 294
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "WfdHelpActivity"

    const-string v6, "Failed to close ndef"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_3
    invoke-virtual {v2, p1}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    .line 262
    iget-boolean v6, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mIsReadOnlyChecked:Z

    if-eqz v6, :cond_4

    .line 263
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->makeReadOnly()Z

    .line 265
    :cond_4
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->close()V

    .line 266
    const-string v6, "WfdHelpActivity"

    const-string v7, "Wrote message to pre-formatted tag."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.wfd.ALL_CLEAR"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/android/settings/wfd/WfdHelpActivity;->sendBroadcast(Landroid/content/Intent;)V

    move v4, v5

    .line 268
    goto :goto_0

    .line 270
    :cond_5
    invoke-static {p2}, Landroid/nfc/tech/NdefFormatable;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NdefFormatable;

    move-result-object v1

    .line 271
    if-eqz v1, :cond_6

    .line 272
    invoke-virtual {v1}, Landroid/nfc/tech/NdefFormatable;->connect()V

    .line 273
    invoke-virtual {v1, p1}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;)V

    .line 274
    invoke-virtual {v1}, Landroid/nfc/tech/NdefFormatable;->close()V

    .line 275
    const-string v6, "WfdHelpActivity"

    const-string v7, "Formatted tag and wrote message"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 276
    goto/16 :goto_0

    .line 278
    :cond_6
    const-string v5, "WfdHelpActivity"

    const-string v6, "Tag doesn\'t support NDEF."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/nfc/FormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 283
    :catch_2
    move-exception v0

    .line 284
    .local v0, "e":Landroid/nfc/FormatException;
    const-string v5, "WfdHelpActivity"

    const-string v6, "Failed to write tag because of FormatException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 288
    .end local v0    # "e":Landroid/nfc/FormatException;
    :catch_3
    move-exception v0

    .line 289
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "WfdHelpActivity"

    const-string v6, "Failed to close format"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
