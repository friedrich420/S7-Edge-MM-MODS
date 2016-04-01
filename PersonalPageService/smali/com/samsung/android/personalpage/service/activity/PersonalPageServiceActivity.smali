.class public Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;
.super Landroid/app/Activity;
.source "PersonalPageServiceActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PersonalPageServiceActivity"


# instance fields
.field protected destroyByDoubleVerification:Z

.field protected isBackupKey:Z

.field private isDefault:I

.field private isFocusChanged:Z

.field protected isM2P:Z

.field protected isVerifySuccess:Z

.field protected isWhiteTheme:Z

.field protected levelPrivatemode:I

.field private mIsBoundService:Z

.field protected mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private rotateState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mIsBoundService:Z

    .line 50
    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isVerifySuccess:Z

    .line 51
    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isM2P:Z

    .line 52
    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isBackupKey:Z

    .line 53
    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->destroyByDoubleVerification:Z

    .line 56
    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isWhiteTheme:Z

    .line 57
    iput v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->levelPrivatemode:I

    .line 59
    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isFocusChanged:Z

    .line 60
    iput v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isDefault:I

    .line 61
    new-instance v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity$1;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;)V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private DisableSystemKey()V
    .locals 2

    .prologue
    .line 221
    const/16 v0, 0xbb

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->requestSystemKeyEvent(IZ)Z

    .line 222
    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "request"    # Z

    .prologue
    .line 204
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 207
    .local v1, "windowmanager":Landroid/view/IWindowManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 211
    :goto_0
    return v2

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "PersonalPageServiceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSystemKeyEvent - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected doBindService()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 79
    iput-boolean v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mIsBoundService:Z

    .line 80
    return-void
.end method

.method protected doUnbindService()V
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mIsBoundService:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mIsBoundService:Z

    .line 87
    :cond_0
    return-void
.end method

.method protected getScreenOrientation()I
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method protected hideVirtualKeypad()V
    .locals 4

    .prologue
    .line 192
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 194
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 195
    .local v1, "v":Landroid/view/View;
    if-nez v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method protected isPortrait()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getScreenOrientation()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSupportPatternBackupPin()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x400

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 104
    .local v2, "win":Landroid/view/Window;
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.secretmode_service"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->levelPrivatemode:I

    .line 105
    iget-object v5, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-static {}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getIsWhiteTheme()Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isWhiteTheme:Z

    .line 106
    iget-boolean v5, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isWhiteTheme:Z

    if-eqz v5, :cond_0

    .line 107
    const v5, 0x7f060006

    invoke-super {p0, v5}, Landroid/app/Activity;->setTheme(I)V

    .line 108
    invoke-virtual {p0, v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->requestWindowFeature(I)Z

    .line 109
    invoke-virtual {v2, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 113
    :goto_0
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 114
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 115
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x480000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->doBindService()V

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "M2P"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isM2P:Z

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "isFingerReset":Z
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "finger_reset_change"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    move v0, v3

    .line 122
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "FINGERPRINT"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_2
    iput-boolean v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isBackupKey:Z

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getScreenOrientation()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->rotateState:I

    .line 125
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->DisableSystemKey()V

    .line 126
    iput v4, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isDefault:I

    .line 127
    return-void

    .line 111
    .end local v0    # "isFingerReset":Z
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    const v5, 0x7f060005

    invoke-super {p0, v5}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    .restart local v0    # "isFingerReset":Z
    .restart local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    move v0, v4

    .line 120
    goto :goto_1

    :cond_2
    move v3, v4

    .line 122
    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 142
    const-string v1, "PersonalPageServiceActivity"

    const-string v3, "==onDestroy=="

    invoke-static {v1, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-boolean v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isM2P:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isVerifySuccess:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v1, :cond_1

    .line 145
    iget v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->rotateState:I

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getScreenOrientation()I

    move-result v3

    if-eq v1, v3, :cond_0

    instance-of v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;

    if-eqz v1, :cond_4

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->destroyByDoubleVerification:Z

    if-nez v1, :cond_4

    .line 146
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->cancelVerifyByUser()Z

    .line 152
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v1, :cond_2

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "personal_mode_enabled"

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->isPrivateStorageAtLeastMounted()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_1
    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 157
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->doUnbindService()V

    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 160
    iget-boolean v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isVerifySuccess:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isM2P:Z

    if-nez v1, :cond_3

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.personalpage.action.START_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.personalpage.service"

    const-string v2, "com.samsung.android.personalpage.service.PersonalPageService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 165
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    return-void

    .line 148
    :cond_4
    const-string v1, "PersonalPageServiceActivity"

    const-string v3, "onDestroy_Skip_cancelVerfiyUser"

    invoke-static {v1, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v1, v2

    .line 153
    goto :goto_1
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 186
    const-string v0, "PersonalPageServiceActivity"

    const-string v1, "==onStop=="

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 189
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 169
    const-string v0, "PersonalPageServiceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowFocusChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iput-boolean p1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isFocusChanged:Z

    .line 171
    instance-of v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_enabled"

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->isPrivateStorageAtLeastMounted()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 176
    :cond_0
    if-nez p1, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->hideVirtualKeypad()V

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->finish()V

    .line 181
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 182
    return-void

    :cond_2
    move v0, v1

    .line 173
    goto :goto_0
.end method

.method protected requestPrivateModeOn()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isVerifySuccess:Z

    .line 92
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->onFinishUserVerification()V

    .line 97
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->hideVirtualKeypad()V

    .line 98
    return-void

    .line 95
    :cond_0
    const-string v0, "PersonalPageServiceActivity"

    const-string v1, "PersonalPageService is null"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected sendBroadcastForPrivateFinger()V
    .locals 3

    .prologue
    .line 215
    const-string v1, "PersonalPageServiceActivity"

    const-string v2, "sendBroadcastForPrivateFinger"

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.PRIVATE_MODE_FINGER_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, "mIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 218
    return-void
.end method
