.class public Lcom/android/settings/fingerprint/FingerprintEntry;
.super Landroid/app/Activity;
.source "FingerprintEntry.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static isSearchEntry:Z


# instance fields
.field private key:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mIdentifyFingerprint:Z

.field private mSFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mToken:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintEntry;->isSearchEntry:Z

    .line 369
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEntry$6;

    invoke-direct {v0}, Lcom/android/settings/fingerprint/FingerprintEntry$6;-><init>()V

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintEntry;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mToken:[B

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIdentifyFingerprint:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintEntry;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintEntry;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerprintEntry;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintEntry;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/fingerprint/FingerprintEntry;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintEntry;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIdentifyFingerprint:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/FingerprintEntry;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintEntry;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEntry;->startFragment(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/fingerprint/FingerprintEntry;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintEntry;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEntry;->showSensorErrorDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/fingerprint/FingerprintEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintEntry;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->showDatabaseFailureDialog()V

    return-void
.end method

.method private authenticateFingerprint()V
    .locals 4

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->identifyFinger()I

    move-result v0

    .line 134
    .local v0, "result":I
    const-string v1, "FpstFingerprintEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "identifyFinger result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    .line 136
    const-string v1, "FpstFingerprintEntry"

    const-string v2, "RESULT_DATABASE_FAILURE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->showDatabaseFailureDialog()V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    const/4 v1, -0x5

    if-ne v0, v1, :cond_2

    .line 139
    const-string v1, "FpstFingerprintEntry"

    const-string v2, "startFragment called "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEntry;->startFragment(Landroid/content/Context;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    goto :goto_0

    .line 143
    :cond_2
    const-string v1, "FpstFingerprintEntry"

    const-string v2, "identifyFinger called "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    goto :goto_0
.end method

.method private deleteAllFingerprints()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 151
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/16 v1, 0x3e8

    const/4 v4, -0x1

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const-string v0, "FpstFingerprintEntry"

    const-string v1, "deleteAllFingerprints Success"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x1

    .line 156
    :goto_0
    return v0

    .line 155
    :cond_0
    const-string v0, "FpstFingerprintEntry"

    const-string v1, "deleteAllFingerprints Fail"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private identifyFinger()I
    .locals 5

    .prologue
    .line 230
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 231
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "password"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 233
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mHandler:Landroid/os/Handler;

    .line 235
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mSFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/settings/fingerprint/FingerprintEntry$1;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerprintEntry$1;-><init>(Lcom/android/settings/fingerprint/FingerprintEntry;)V

    invoke-virtual {v2, v3, v4, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->identifyWithDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I

    move-result v1

    .line 287
    .local v1, "result":I
    return v1
.end method

.method private launchChooseOrConfirmLock()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 185
    const-string v2, "FpstFingerprintEntry"

    const-string v3, "launchConfirmLock "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 189
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 190
    .local v1, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    const/16 v2, 0x65

    const v3, 0x7f0e0206

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintEntry;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    const-string v2, "FpstFingerprintEntry"

    const-string v3, "ConfirmLock Fail"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    .line 197
    :cond_0
    return-void
.end method

.method private showDatabaseFailureDialog()V
    .locals 4

    .prologue
    .line 315
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e11e0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e1208    # 1.88844E38f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintEntry$4;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintEntry$4;-><init>(Lcom/android/settings/fingerprint/FingerprintEntry;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 325
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEntry$5;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEntry$5;-><init>(Lcom/android/settings/fingerprint/FingerprintEntry;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 331
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 332
    return-void
.end method

.method private showSensorErrorDialog(I)V
    .locals 4
    .param p1, "Stringid"    # I

    .prologue
    .line 291
    const v1, 0x7f0e11e2

    if-ne p1, v1, :cond_0

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    const p1, 0x7f0e11e3

    .line 296
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e11e0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintEntry$2;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintEntry$2;-><init>(Lcom/android/settings/fingerprint/FingerprintEntry;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 305
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEntry$3;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEntry$3;-><init>(Lcom/android/settings/fingerprint/FingerprintEntry;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 311
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 312
    return-void
.end method

.method private startFragment(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v3, 0x7f0e11dc

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 335
    move-object v7, p1

    .line 337
    .local v7, "cxt":Landroid/content/Context;
    if-nez v7, :cond_1

    .line 338
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 341
    .local v2, "args":Landroid/os/Bundle;
    const-string v0, ":settings:fragment_args_key"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 343
    const-string v0, "fromSearch"

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 344
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string v1, "support_samsung_account"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string v1, "support_web_signin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string v1, "set_screen_lock "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string v1, "alipay_payment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string v1, "samsung_pay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 346
    :cond_2
    sput-boolean v5, Lcom/android/settings/fingerprint/FingerprintEntry;->isSearchEntry:Z

    .line 347
    const-string v0, "FpstFingerprintEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startFragment subMenuSearch: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_3
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mToken:[B

    if-eqz v0, :cond_4

    .line 351
    const-string v0, "tokenFromLock"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mToken:[B

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 353
    :cond_4
    const-string v0, "identifyFingerprint"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mIdentifyFingerprint:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 355
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 356
    invoke-static {}, Lcom/android/settings/SettingsActivity;->getSettingsActivityContext()Landroid/content/Context;

    move-result-object v7

    .line 357
    if-eqz v7, :cond_0

    move-object v0, v7

    .line 359
    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-string v1, "com.android.settings.fingerprint.FingerprintSettings"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 361
    :cond_5
    const-string v8, "com.android.settings.fingerprint.FingerprintSettings"

    move-object v9, v2

    move-object v10, v4

    move v11, v6

    move v12, v3

    move-object v13, v4

    invoke-static/range {v7 .. v13}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 162
    const-string v0, "FpstFingerprintEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====onActivityResult : requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/16 v0, 0x65

    if-ne p1, v0, :cond_3

    .line 165
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 166
    if-eqz p3, :cond_0

    .line 167
    const-string v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mToken:[B

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEntry;->startFragment(Landroid/content/Context;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    .line 182
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    .line 177
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    goto :goto_0

    .line 180
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/res/Configuration;

    .prologue
    .line 202
    const-string v0, "FpstFingerprintEntry"

    const-string v1, "=====onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 204
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const v10, 0x7f0e11e2

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const-string v0, "FpstFingerprintEntry"

    const-string v1, "=====onCreate()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iput-object p0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    .line 88
    sput-boolean v4, Lcom/android/settings/fingerprint/FingerprintEntry;->isSearchEntry:Z

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mSFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 94
    const-string v0, "fingerprint"

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEntry;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 96
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_1

    .line 97
    const-string v0, "FpstFingerprintEntry"

    const-string v1, "onCreate mGFingerprintManager == null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-direct {p0, v10}, Lcom/android/settings/fingerprint/FingerprintEntry;->showSensorErrorDialog(I)V

    .line 130
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/16 v1, 0xb

    const/16 v3, 0xa

    new-array v3, v3, [B

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 101
    const-string v0, "FpstFingerprintEntry"

    const-string v1, "onCreate DB Corrupt"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->deleteAllFingerprints()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->showDatabaseFailureDialog()V

    goto :goto_0

    .line 105
    :cond_2
    invoke-direct {p0, v10}, Lcom/android/settings/fingerprint/FingerprintEntry;->showSensorErrorDialog(I)V

    goto :goto_0

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v6

    .line 110
    .local v6, "isHWdetected":Z
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->requestGetSensorStatus()I

    move-result v9

    .line 111
    .local v9, "status":I
    if-eqz v6, :cond_4

    const v0, 0x186c8

    if-eq v9, v0, :cond_5

    const v0, 0x186c9

    if-eq v9, v0, :cond_5

    .line 112
    :cond_4
    const-string v0, "FpstFingerprintEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate isHardwareDetected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestGetSensorStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-direct {p0, v10}, Lcom/android/settings/fingerprint/FingerprintEntry;->showSensorErrorDialog(I)V

    goto :goto_0

    .line 118
    :cond_5
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/KeyguardManager;

    .line 120
    .local v7, "keyguardMgr":Landroid/app/KeyguardManager;
    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v0

    if-nez v0, :cond_6

    .line 121
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->authenticateFingerprint()V

    goto :goto_0

    .line 123
    :cond_6
    new-instance v8, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 124
    .local v8, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const v1, 0x61000

    if-ne v0, v1, :cond_7

    .line 125
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->authenticateFingerprint()V

    goto/16 :goto_0

    .line 127
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->launchChooseOrConfirmLock()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 225
    const-string v0, "FpstFingerprintEntry"

    const-string v1, "=====onDestroy()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 227
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 208
    const-string v1, "FpstFingerprintEntry"

    const-string v2, "=====onStop()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 212
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 218
    .local v0, "keyguardMgr":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v1

    if-nez v1, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEntry;->finish()V

    .line 221
    :cond_1
    return-void
.end method
