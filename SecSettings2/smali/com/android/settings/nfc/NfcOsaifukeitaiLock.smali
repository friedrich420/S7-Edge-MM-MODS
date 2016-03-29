.class public Lcom/android/settings/nfc/NfcOsaifukeitaiLock;
.super Landroid/app/Fragment;
.source "NfcOsaifukeitaiLock.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private final CSC_SALES_CODE:Ljava/lang/String;

.field private final OMC_SALES_CODE:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private activitySwitchBar:Lcom/android/settings/SettingsActivity;

.field private final carrier:Ljava/lang/String;

.field private mFelicaLockResultCode:I

.field private mIntent:Landroid/content/Intent;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTextView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field public mbSwitchBar:Z

.field private myNfcOsaifukeitaiLock:Lcom/android/settings/nfc/NfcOsaifukeitaiLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mbSwitchBar:Z

    .line 67
    const-string v0, "persist.omc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->OMC_SALES_CODE:Ljava/lang/String;

    .line 68
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->CSC_SALES_CODE:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->OMC_SALES_CODE:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->OMC_SALES_CODE:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->CSC_SALES_CODE:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->carrier:Ljava/lang/String;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mFelicaLockResultCode:I

    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->OMC_SALES_CODE:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getLockState()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public getSwitchBarState()Z
    .locals 2

    .prologue
    .line 88
    const-string v0, "[NfcOsaifukeitaiLock]"

    const-string v1, "[S] getSwitchBarState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mbSwitchBar:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 94
    const-string v0, "[NfcOsaifukeitaiLock]"

    const-string v1, "[S] onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->activitySwitchBar:Lcom/android/settings/SettingsActivity;

    .line 96
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->activitySwitchBar:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 97
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 99
    const-string v0, "[NfcOsaifukeitaiLock]"

    const-string v1, "[E] onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 220
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    .line 221
    const-string v0, "[NfcOsaifukeitaiLock]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NfcOsaifukeitaiLock onActivityResult ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iput p2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mFelicaLockResultCode:I

    .line 223
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 227
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x10

    const/4 v6, -0x2

    const/4 v2, 0x0

    .line 106
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const-string v1, "[NfcOsaifukeitaiLock]"

    const-string v3, "[S] onCreate"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->activitySwitchBar:Lcom/android/settings/SettingsActivity;

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 112
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->activitySwitchBar:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 113
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c011c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 116
    .local v0, "padding":I
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v2, v2, v0, v2}, Lcom/android/settings/widget/SwitchBar;->setPaddingRelative(IIII)V

    .line 117
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 119
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 123
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mOldActivityTitle:Ljava/lang/CharSequence;

    .line 124
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v3, 0x7f0e171a

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 126
    .end local v0    # "padding":I
    :cond_0
    iget-object v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->carrier:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 140
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    const-class v3, Lcom/android/settings/nfc/NfcOsaifukeitaiLockDCM;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mIntent:Landroid/content/Intent;

    .line 143
    :goto_1
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mIntent:Landroid/content/Intent;

    const-string v2, "com.samsung.felicalock"

    const-string v3, "com.samsung.felicalock.FelicaLockActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v1, "[NfcOsaifukeitaiLock]"

    const-string v2, "[E] onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 126
    :sswitch_0
    const-string v4, "DCM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string v2, "KDI"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "SBM"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    .line 128
    :pswitch_0
    new-instance v1, Lcom/android/settings/nfc/NfcOsaifukeitaiLockDCM;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiLockDCM;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->myNfcOsaifukeitaiLock:Lcom/android/settings/nfc/NfcOsaifukeitaiLock;

    .line 129
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    const-class v3, Lcom/android/settings/nfc/NfcOsaifukeitaiLockDCM;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mIntent:Landroid/content/Intent;

    goto :goto_1

    .line 132
    :pswitch_1
    new-instance v1, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->myNfcOsaifukeitaiLock:Lcom/android/settings/nfc/NfcOsaifukeitaiLock;

    .line 133
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    const-class v3, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mIntent:Landroid/content/Intent;

    goto :goto_1

    .line 136
    :pswitch_2
    new-instance v1, Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->myNfcOsaifukeitaiLock:Lcom/android/settings/nfc/NfcOsaifukeitaiLock;

    .line 137
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    const-class v3, Lcom/android/settings/nfc/NfcOsaifukeitaiLockSBM;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mIntent:Landroid/content/Intent;

    goto :goto_1

    .line 126
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

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 151
    const v0, 0x7f040151

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mView:Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mView:Landroid/view/View;

    const v1, 0x7f0d037a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mTextView:Landroid/widget/TextView;

    .line 153
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 208
    const-string v0, "[NfcOsaifukeitaiLock]"

    const-string v1, "[S] onDestroyView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    const-string v0, "[NfcOsaifukeitaiLock]"

    const-string v1, "[S] removeOnSwitchChangeListener"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 192
    const-string v0, "[NfcOsaifukeitaiLock]"

    const-string v1, "[S] onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 195
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->myNfcOsaifukeitaiLock:Lcom/android/settings/nfc/NfcOsaifukeitaiLock;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->myNfcOsaifukeitaiLock:Lcom/android/settings/nfc/NfcOsaifukeitaiLock;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->onPause(Landroid/content/Context;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 202
    :cond_1
    const-string v0, "[NfcOsaifukeitaiLock]"

    const-string v1, "[E] onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 188
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 161
    const-string v0, "[NfcOsaifukeitaiLock]"

    const-string v1, "NfcOsaifukeitaiLock onResume & registerReceiver"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->myNfcOsaifukeitaiLock:Lcom/android/settings/nfc/NfcOsaifukeitaiLock;

    if-nez v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->myNfcOsaifukeitaiLock:Lcom/android/settings/nfc/NfcOsaifukeitaiLock;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->onResume(Landroid/content/Context;)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->myNfcOsaifukeitaiLock:Lcom/android/settings/nfc/NfcOsaifukeitaiLock;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->getLockState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0e1736

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 175
    :goto_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->myNfcOsaifukeitaiLock:Lcom/android/settings/nfc/NfcOsaifukeitaiLock;

    invoke-virtual {v1}, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->getSwitchBarState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 179
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    goto :goto_0

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0e1735

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 157
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "desiredState"    # Z

    .prologue
    .line 230
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 231
    const-string v1, "[NfcOsaifukeitaiLock]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NfcOsaifukeitaiLock onSwitchChanged mFelicaLockResultCode=( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mFelicaLockResultCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v1, "[NfcOsaifukeitaiLock]"

    const-string v2, "NFC_Lock_switch call FeliCaLock:S"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->mIntent:Landroid/content/Intent;

    const/16 v2, 0x1000

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
