.class public final Lcom/android/settings/ActiveNetworkScorerDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "ActiveNetworkScorerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mNewPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private buildDialog()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 73
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eqz v6, :cond_0

    .line 74
    const-string v5, "ActiveNetScorerDlg"

    const-string v6, "Can only set scorer for owner user."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_0
    return v4

    .line 77
    :cond_0
    iget-object v6, p0, Lcom/android/settings/ActiveNetworkScorerDialog;->mNewPackageName:Ljava/lang/String;

    invoke-static {p0, v6}, Landroid/net/NetworkScorerAppManager;->getScorer(Landroid/content/Context;Ljava/lang/String;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v1

    .line 78
    .local v1, "newScorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    if-nez v1, :cond_1

    .line 79
    const-string v5, "ActiveNetScorerDlg"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ActiveNetworkScorerDialog;->mNewPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a valid scorer."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :cond_1
    invoke-static {p0}, Landroid/net/NetworkScorerAppManager;->getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v2

    .line 84
    .local v2, "oldScorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    if-eqz v2, :cond_2

    iget-object v6, v2, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/ActiveNetworkScorerDialog;->mNewPackageName:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 85
    const-string v5, "ActiveNetScorerDlg"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ActiveNetworkScorerDialog;->mNewPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is already the active scorer."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/android/settings/ActiveNetworkScorerDialog;->setResult(I)V

    goto :goto_0

    .line 92
    :cond_2
    iget-object v0, v1, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mScorerName:Ljava/lang/CharSequence;

    .line 93
    .local v0, "newName":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/settings/ActiveNetworkScorerDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 94
    .local v3, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v6, 0x7f0e076a

    invoke-virtual {p0, v6}, Lcom/android/settings/ActiveNetworkScorerDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 95
    if-eqz v2, :cond_3

    .line 96
    const v6, 0x7f0e076b

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v4

    iget-object v4, v2, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mScorerName:Ljava/lang/CharSequence;

    aput-object v4, v7, v5

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/ActiveNetworkScorerDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 102
    :goto_1
    const v4, 0x7f0e00b8

    invoke-virtual {p0, v4}, Lcom/android/settings/ActiveNetworkScorerDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 103
    const v4, 0x7f0e00b9

    invoke-virtual {p0, v4}, Lcom/android/settings/ActiveNetworkScorerDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 104
    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 105
    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/ActiveNetworkScorerDialog;->setupAlert()V

    move v4, v5

    .line 108
    goto/16 :goto_0

    .line 99
    :cond_3
    const v6, 0x7f0e076c

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v0, v7, v4

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/ActiveNetworkScorerDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 59
    packed-switch p2, :pswitch_data_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 61
    :pswitch_0
    const-string v1, "network_score"

    invoke-virtual {p0, v1}, Lcom/android/settings/ActiveNetworkScorerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    .line 63
    .local v0, "nsm":Landroid/net/NetworkScoreManager;
    iget-object v1, p0, Lcom/android/settings/ActiveNetworkScorerDialog;->mNewPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/NetworkScoreManager;->setActiveScorer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/ActiveNetworkScorerDialog;->setResult(I)V

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/ActiveNetworkScorerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ActiveNetworkScorerDialog;->mNewPackageName:Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Lcom/android/settings/ActiveNetworkScorerDialog;->buildDialog()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/ActiveNetworkScorerDialog;->finish()V

    .line 55
    :cond_0
    return-void
.end method
