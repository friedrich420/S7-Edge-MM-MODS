.class public Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;
.super Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;
.source "PersonalPageModeFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;
    }
.end annotation


# static fields
.field public static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "PersonalPageModeFingerprint"


# instance fields
.field private final PREF_ATTEMPT_DEADLINE:Ljava/lang/String;

.field private final PREF_ATTEMPT_DEADLINE_PIN:Ljava/lang/String;

.field private final PREF_ATTEMPT_DEADLINE_PWD:Ljava/lang/String;

.field private backupLockType:I

.field private mContext:Landroid/content/Context;

.field private mFingerprintDialog:Landroid/app/Dialog;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field final mH:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mContext:Landroid/content/Context;

    .line 50
    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 52
    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintDialog:Landroid/app/Dialog;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->backupLockType:I

    .line 56
    new-instance v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;

    invoke-direct {v0, p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;)V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mH:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;

    .line 58
    const-string v0, "pref_attempt_deadline"

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->PREF_ATTEMPT_DEADLINE:Ljava/lang/String;

    .line 59
    const-string v0, "pref_attempt_deadline_passwd"

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->PREF_ATTEMPT_DEADLINE_PWD:Ljava/lang/String;

    .line 60
    const-string v0, "pref_attempt_deadline_pin"

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->PREF_ATTEMPT_DEADLINE_PIN:Ljava/lang/String;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;
    .param p1, "x1"    # Lcom/samsung/android/fingerprint/FingerprintEvent;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->handleFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->handleIdentify()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;
    .param p1, "x1"    # Lcom/samsung/android/fingerprint/FingerprintEvent;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->requestFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    return-void
.end method

.method private getDeadline()J
    .locals 10

    .prologue
    const-wide/16 v0, 0x0

    const/4 v7, 0x0

    .line 243
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 244
    .local v4, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "personal_mode_lock_type"

    invoke-static {v5, v6, v7, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 245
    .local v3, "lockType":I
    const/4 v2, 0x0

    .line 246
    .local v2, "key":Ljava/lang/String;
    const/4 v5, 0x5

    if-gt v3, v5, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-wide v0

    .line 249
    :cond_1
    packed-switch v3, :pswitch_data_0

    .line 260
    const-string v5, "PersonalPageModeFingerprint"

    const-string v6, "Not Supported locktype"

    invoke-static {v5, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :goto_1
    invoke-interface {v4, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 266
    .local v0, "deadline":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x7530

    add-long/2addr v6, v8

    cmp-long v5, v0, v6

    if-lez v5, :cond_0

    .line 267
    const-string v5, "PersonalPageModeFingerprint"

    const-string v6, "Wrong deadline is detected.[Deadline initialize]"

    invoke-static {v5, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-wide/16 v0, 0x0

    .line 269
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->setDeadline(J)V

    goto :goto_0

    .line 251
    .end local v0    # "deadline":J
    :pswitch_0
    const-string v2, "pref_attempt_deadline_passwd"

    .line 252
    goto :goto_1

    .line 254
    :pswitch_1
    const-string v2, "pref_attempt_deadline"

    .line 255
    goto :goto_1

    .line 257
    :pswitch_2
    const-string v2, "pref_attempt_deadline_pin"

    .line 258
    goto :goto_1

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private handleFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 3
    .param p1, "evt"    # Lcom/samsung/android/fingerprint/FingerprintEvent;

    .prologue
    .line 149
    iget v0, p1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    packed-switch v0, :pswitch_data_0

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 151
    :pswitch_0
    const-string v0, "PersonalPageModeFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FingerprintEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget v0, p1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v0, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->verifySucess()V

    goto :goto_0

    .line 154
    :cond_1
    iget v0, p1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 155
    iget v0, p1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->destroyByDoubleVerification:Z

    .line 157
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->launchBackupKey()V

    goto :goto_0

    .line 159
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->finish()V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private handleIdentify()V
    .locals 7

    .prologue
    const/4 v5, 0x5

    const v4, 0x7f05002d

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 201
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->isSensorReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->finish()V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 209
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->backupLockType:I

    if-le v1, v5, :cond_3

    iget v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->backupLockType:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_3

    .line 210
    iget v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->backupLockType:I

    packed-switch v1, :pswitch_data_0

    .line 224
    const-string v1, "PersonalPageModeFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not supported backup locktype : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->backupLockType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    new-instance v2, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$1;-><init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;)V

    invoke-virtual {v1, p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->identifyWithDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I

    goto :goto_0

    .line 212
    :pswitch_0
    const-string v1, "button_name"

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 216
    :pswitch_1
    const-string v1, "button_name"

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05002b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 220
    :pswitch_2
    const-string v1, "button_name"

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 227
    :cond_3
    iget v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->backupLockType:I

    if-ne v1, v5, :cond_2

    .line 228
    const-string v1, "button_name"

    const v2, 0x7f05002e

    invoke-virtual {p0, v2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 210
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private initFingerprintManager()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 136
    :cond_0
    return-void
.end method

.method private launchBackupKey()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 169
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 170
    .local v0, "pwIntent":Landroid/content/Intent;
    iget v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->backupLockType:I

    packed-switch v1, :pswitch_data_0

    .line 185
    const-string v1, "PersonalPageModeFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not supported backup locktype : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->backupLockType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_0
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 189
    const-string v1, "FINGERPRINT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->startActivity(Landroid/content/Intent;)V

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->finish()V

    .line 192
    return-void

    .line 172
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 175
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 178
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 181
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 182
    const-string v1, "FINGERPRINTPWD"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private requestFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 3
    .param p1, "evt"    # Lcom/samsung/android/fingerprint/FingerprintEvent;

    .prologue
    .line 144
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mH:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;

    const/16 v2, 0x400

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 145
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 146
    return-void
.end method

.method private requestIdentify()V
    .locals 2

    .prologue
    const/16 v1, 0x401

    .line 195
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mH:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;->removeMessages(I)V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mH:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;->sendEmptyMessage(I)Z

    .line 197
    return-void
.end method

.method private setDeadline(J)V
    .locals 3
    .param p1, "deadline"    # J

    .prologue
    .line 275
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 276
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_attempt_deadline"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 277
    return-void
.end method

.method private verifySucess()V
    .locals 2

    .prologue
    .line 139
    const-string v0, "PersonalPageModeFingerprint"

    const-string v1, "veritySucess"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->requestPrivateModeOn()V

    .line 141
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    iput-object p0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "personal_backup_lock_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->backupLockType:I

    .line 107
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->initFingerprintManager()V

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->requestIdentify()V

    .line 109
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 113
    invoke-super {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->onResume()V

    .line 114
    const-string v2, "PersonalPageModeFingerprint"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->getDeadline()J

    move-result-wide v0

    .line 117
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->launchBackupKey()V

    .line 121
    :cond_0
    return-void
.end method
