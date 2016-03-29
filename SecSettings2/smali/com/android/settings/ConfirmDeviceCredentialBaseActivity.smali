.class public abstract Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;
.super Lcom/android/settings/SettingsActivity;
.source "ConfirmDeviceCredentialBaseActivity.java"


# instance fields
.field private mDark:Z

.field private final mEnterAnimationCompleteTimeoutRunnable:Ljava/lang/Runnable;

.field private mEnterAnimationPending:Z

.field private mFirstTimeVisible:Z

.field private final mHandler:Landroid/os/Handler;

.field private mRestoring:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mHandler:Landroid/os/Handler;

    .line 106
    new-instance v0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$1;-><init>(Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationCompleteTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 40
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    .line 42
    .local v0, "deviceLocked":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "com.android.settings.ConfirmCredentials.showWhenLocked"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v5, 0x80000

    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "com.android.settings.ConfirmCredentials.title"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 53
    :cond_1
    if-eqz p1, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mRestoring:Z

    .line 54
    return-void

    :cond_2
    move v2, v4

    .line 53
    goto :goto_0
.end method

.method public onEnterAnimationComplete()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onEnterAnimationComplete()V

    .line 87
    iget-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationCompleteTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->startEnterAnimation()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    .line 92
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 58
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->finish()V

    .line 60
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onResume()V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mRestoring:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mDark:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->prepareEnterAnimation()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    .line 72
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationCompleteTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    :cond_0
    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public startEnterAnimation()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method
