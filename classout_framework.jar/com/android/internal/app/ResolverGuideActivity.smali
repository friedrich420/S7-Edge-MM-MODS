.class public Lcom/android/internal/app/ResolverGuideActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ResolverGuideActivity.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final EXTRA_SAFE_FORWARD:Ljava/lang/String; = "extra_safe_forward"

.field private static final TAG:Ljava/lang/String; = "ResolverGuideActivity"


# instance fields
.field private mSafeForwardingMode:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ResolverGuideActivity;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverGuideActivity;

    .prologue
    .line 51
    invoke-direct {p0}, makeMyIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .registers 6

    .prologue
    .line 58
    invoke-virtual {p0}, getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 59
    .local v1, "originalIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 61
    .local v2, "safeForwarding":Z
    if-nez v1, :cond_9

    .line 62
    const/4 v0, 0x0

    .line 70
    :goto_8
    return-object v0

    .line 65
    :cond_9
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v1, v3, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 66
    .local v0, "myIntent":Landroid/content/Intent;
    const-string v3, "extra_safe_forward"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, mSafeForwardingMode:Z

    .line 68
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const v4, -0x800001

    and-int/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_8
.end method


# virtual methods
.method protected handlePendingIntent()Z
    .registers 2

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 164
    sget-object v1, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v1}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 165
    invoke-virtual {p0}, handlePendingIntent()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 177
    :goto_e
    return-void

    .line 172
    :cond_f
    invoke-direct {p0}, makeMyIntent()Landroid/content/Intent;

    move-result-object v0

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_18

    .line 174
    invoke-virtual {p0, v0}, safelyStartActivity(Landroid/content/Intent;)V

    .line 176
    :cond_18
    invoke-virtual {p0}, dismiss()V

    goto :goto_e
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 80
    const v3, 0x10302d2

    invoke-virtual {p0, v3}, setTheme(I)V

    .line 81
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 87
    .local v1, "appUserId":I
    invoke-static {v1}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 88
    const-string v3, "ResolverGuideActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KEA is selected. Just start activity. UserId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0}, makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    .line 90
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_35

    .line 91
    invoke-virtual {p0, v2}, safelyStartActivity(Landroid/content/Intent;)V

    .line 93
    :cond_35
    invoke-virtual {p0}, finish()V

    .line 133
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_38
    return-void

    .line 97
    :cond_39
    iget-object v0, p0, mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 98
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10409f0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 99
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040369

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 101
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_6a

    .line 102
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10409f5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 106
    :cond_6a
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 107
    new-instance v3, Lcom/android/internal/app/ResolverGuideActivity$1;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ResolverGuideActivity$1;-><init>(Lcom/android/internal/app/ResolverGuideActivity;)V

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 127
    iput-boolean v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    .line 128
    invoke-virtual {p0, v5}, setFinishOnTouchOutside(Z)V

    .line 129
    invoke-virtual {p0}, setupAlert()V

    goto :goto_38
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 137
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 139
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 144
    invoke-virtual {p0}, getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_19

    .line 152
    invoke-virtual {p0}, isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_19

    .line 153
    invoke-virtual {p0}, finish()V

    .line 156
    :cond_19
    return-void
.end method

.method public safelyStartActivity(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 190
    iget-boolean v3, p0, mSafeForwardingMode:Z

    if-nez v3, :cond_9

    .line 191
    invoke-virtual {p0, p1, v4}, startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 209
    :goto_8
    return-void

    .line 196
    :cond_9
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, -0x2710

    :try_start_d
    invoke-virtual {p0, p1, v3, v4, v5}, startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_8

    .line 197
    :catch_11
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_12
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p0}, getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1d} :catch_45

    move-result-object v2

    .line 205
    .local v2, "launchedFromPackage":Ljava/lang/String;
    :goto_1e
    const-string v3, "ResolverGuideActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to launch  package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", while running in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 202
    .end local v2    # "launchedFromPackage":Ljava/lang/String;
    :catch_45
    move-exception v1

    .line 203
    .local v1, "e2":Landroid/os/RemoteException;
    const-string v2, "??"

    .restart local v2    # "launchedFromPackage":Ljava/lang/String;
    goto :goto_1e
.end method
