.class public Lcom/android/settings/KnoxFingerprintNotice;
.super Lcom/android/settings/SettingsActivity;
.source "KnoxFingerprintNotice.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mFingerprintHelpText:Landroid/widget/TextView;

.field private mFingerprintText:Landroid/widget/TextView;

.field private mHeading:Landroid/widget/TextView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordText:Landroid/widget/TextView;

.field private mRequested:I

.field private mStartBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    .line 27
    const-string v0, "KnoxFingerprintNotice"

    iput-object v0, p0, Lcom/android/settings/KnoxFingerprintNotice;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/KnoxFingerprintNotice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/KnoxFingerprintNotice;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/settings/KnoxFingerprintNotice;->sendIntentToKnoxKeyguard(I)V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/settings/KnoxFingerprintNotice;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # I

    .prologue
    .line 61
    invoke-static {p0}, Lcom/android/settings/KnoxFingerprintNotice;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 62
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "knox_notice"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    return-object v0
.end method

.method private sendIntentToKnoxKeyguard(I)V
    .locals 4
    .param p1, "resultCode"    # I

    .prologue
    .line 156
    const-string v1, "KnoxFingerprintNotice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIntentToKnoxKeyguard : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.knox.kss.PASSWORD_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "knoxIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.knox.kss"

    const-string v3, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 159
    const-string v1, "resetResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 161
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/KnoxFingerprintNotice;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 162
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 51
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 52
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f0e026f

    const v8, 0x7f0e026c

    const/4 v5, 0x1

    const v7, 0x7f0e026e

    const/4 v6, 0x0

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/KnoxFingerprintNotice;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 85
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "knox_notice"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/KnoxFingerprintNotice;->mRequested:I

    .line 86
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/KnoxFingerprintNotice;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 87
    const v2, 0x7f040117

    invoke-virtual {p0, v2}, Lcom/android/settings/KnoxFingerprintNotice;->setContentView(I)V

    .line 89
    const v2, 0x7f0d00f8

    invoke-virtual {p0, v2}, Lcom/android/settings/KnoxFingerprintNotice;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/KnoxFingerprintNotice;->mHeading:Landroid/widget/TextView;

    .line 90
    const v2, 0x7f0d030b

    invoke-virtual {p0, v2}, Lcom/android/settings/KnoxFingerprintNotice;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/KnoxFingerprintNotice;->mFingerprintText:Landroid/widget/TextView;

    .line 91
    const v2, 0x7f0d030c

    invoke-virtual {p0, v2}, Lcom/android/settings/KnoxFingerprintNotice;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/KnoxFingerprintNotice;->mFingerprintHelpText:Landroid/widget/TextView;

    .line 92
    const v2, 0x7f0d030e

    invoke-virtual {p0, v2}, Lcom/android/settings/KnoxFingerprintNotice;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/KnoxFingerprintNotice;->mPasswordText:Landroid/widget/TextView;

    .line 93
    iget-object v2, p0, Lcom/android/settings/KnoxFingerprintNotice;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    iget-object v2, p0, Lcom/android/settings/KnoxFingerprintNotice;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 95
    .local v0, "deviceQuality":I
    const-string v2, "KnoxFingerprintNotice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceQuality:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/high16 v2, 0x10000

    if-gt v0, v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/android/settings/KnoxFingerprintNotice;->mFingerprintHelpText:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const v5, 0x7f0e11d8

    invoke-virtual {p0, v5}, Lcom/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .end local v0    # "deviceQuality":I
    :goto_0
    const-string v2, "KnoxFingerprintNotice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/KnoxFingerprintNotice;->mRequested:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget v2, p0, Lcom/android/settings/KnoxFingerprintNotice;->mRequested:I

    packed-switch v2, :pswitch_data_0

    .line 137
    const-string v2, "KnoxFingerprintNotice"

    const-string v3, "invalid request valued"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_1
    :pswitch_0
    const v2, 0x7f0d030f

    invoke-virtual {p0, v2}, Lcom/android/settings/KnoxFingerprintNotice;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/KnoxFingerprintNotice;->mStartBtn:Landroid/widget/Button;

    .line 142
    iget-object v2, p0, Lcom/android/settings/KnoxFingerprintNotice;->mStartBtn:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/KnoxFingerprintNotice$1;

    invoke-direct {v3, p0}, Lcom/android/settings/KnoxFingerprintNotice$1;-><init>(Lcom/android/settings/KnoxFingerprintNotice;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    return-void

    .line 99
    .restart local v0    # "deviceQuality":I
    :cond_0
    const/high16 v2, 0x40000

    if-ge v0, v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/android/settings/KnoxFingerprintNotice;->mFingerprintHelpText:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const v5, 0x7f0e11db

    invoke-virtual {p0, v5}, Lcom/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/android/settings/KnoxFingerprintNotice;->mFingerprintHelpText:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const v5, 0x7f0e11d9

    invoke-virtual {p0, v5}, Lcom/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 107
    .end local v0    # "deviceQuality":I
    :cond_2
    iget-object v2, p0, Lcom/android/settings/KnoxFingerprintNotice;->mFingerprintHelpText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 114
    :pswitch_1
    const-string v2, "KnoxFingerprintNotice"

    const-string v3, "wrong request valued"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 119
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/KnoxFingerprintNotice;->mHeading:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 122
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/KnoxFingerprintNotice;->mHeading:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v2, p0, Lcom/android/settings/KnoxFingerprintNotice;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {p0, v8}, Lcom/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 126
    :pswitch_4
    iget-object v2, p0, Lcom/android/settings/KnoxFingerprintNotice;->mHeading:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v2, p0, Lcom/android/settings/KnoxFingerprintNotice;->mFingerprintText:Landroid/widget/TextView;

    const v3, 0x7f0e026a

    invoke-virtual {p0, v3}, Lcom/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v2, p0, Lcom/android/settings/KnoxFingerprintNotice;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {p0, v8}, Lcom/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 131
    :pswitch_5
    iget-object v2, p0, Lcom/android/settings/KnoxFingerprintNotice;->mHeading:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v2, p0, Lcom/android/settings/KnoxFingerprintNotice;->mFingerprintText:Landroid/widget/TextView;

    const v3, 0x7f0e026a

    invoke-virtual {p0, v3}, Lcom/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v2, p0, Lcom/android/settings/KnoxFingerprintNotice;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {p0, v8}, Lcom/android/settings/KnoxFingerprintNotice;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v2, p0, Lcom/android/settings/KnoxFingerprintNotice;->mFingerprintHelpText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 167
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onDestroy()V

    .line 168
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 68
    if-eq p1, v2, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 69
    :cond_0
    if-ne p1, v2, :cond_1

    .line 70
    invoke-virtual {p0, v1}, Lcom/android/settings/KnoxFingerprintNotice;->setResult(I)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/KnoxFingerprintNotice;->finish()V

    .line 72
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    .line 75
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/KnoxFingerprintNotice;->sendIntentToKnoxKeyguard(I)V

    .line 78
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
