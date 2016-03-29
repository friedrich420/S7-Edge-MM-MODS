.class public Lcom/android/settings/ResetNetworkConfirm;
.super Lcom/android/settings/InstrumentedFragment;
.source "ResetNetworkConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ResetNetworkConfirm$RestoreApnProcessHandler;,
        Lcom/android/settings/ResetNetworkConfirm$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field private static final DEFAULTAPN_URI:Landroid/net/Uri;


# instance fields
.field private DisableListner:Z

.field private isATTReset:Z

.field private isFirstResume:Z

.field private isWiFiEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNetworkResetReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoveProgress:Ljava/lang/Runnable;

.field private mRestoreApnProcessHandler:Lcom/android/settings/ResetNetworkConfirm$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings/ResetNetworkConfirm$RestoreApnUiHandler;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mSubId:I

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ResetNetworkConfirm;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    .line 92
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ResetNetworkConfirm;->isATTReset:Z

    .line 115
    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ResetNetworkConfirm$1;-><init>(Lcom/android/settings/ResetNetworkConfirm;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mNetworkResetReceiver:Landroid/content/BroadcastReceiver;

    .line 147
    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ResetNetworkConfirm$2;-><init>(Lcom/android/settings/ResetNetworkConfirm;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 390
    return-void
.end method

.method private StartPassword()V
    .locals 4

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "phone_password":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 333
    const v1, 0x7f0e132c

    invoke-virtual {p0, v1}, Lcom/android/settings/ResetNetworkConfirm;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e132e

    invoke-virtual {p0, v2}, Lcom/android/settings/ResetNetworkConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/settings/ResetNetworkConfirm;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 336
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ResetNetworkConfirm;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ResetNetworkConfirm;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/ResetNetworkConfirm;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ResetNetworkConfirm;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/ResetNetworkConfirm;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ResetNetworkConfirm;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/settings/ResetNetworkConfirm;->isFirstResume:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/ResetNetworkConfirm;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ResetNetworkConfirm;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/ResetNetworkConfirm;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ResetNetworkConfirm;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/settings/ResetNetworkConfirm;->isFirstResume:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/ResetNetworkConfirm;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ResetNetworkConfirm;

    .prologue
    .line 75
    iget v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    return v0
.end method

.method static synthetic access$1300()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/settings/ResetNetworkConfirm;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ResetNetworkConfirm;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ResetNetworkConfirm;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/settings/ResetNetworkConfirm;->isWiFiEnabled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/ResetNetworkConfirm;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ResetNetworkConfirm;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/settings/ResetNetworkConfirm;->isWiFiEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/ResetNetworkConfirm;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ResetNetworkConfirm;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mRemoveProgress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/ResetNetworkConfirm;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ResetNetworkConfirm;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/ResetNetworkConfirm;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ResetNetworkConfirm;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/settings/ResetNetworkConfirm;->DisableListner:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/ResetNetworkConfirm;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ResetNetworkConfirm;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/settings/ResetNetworkConfirm;->isATTReset:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/ResetNetworkConfirm;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ResetNetworkConfirm;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/ResetNetworkConfirm;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ResetNetworkConfirm;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->StartPassword()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/ResetNetworkConfirm;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ResetNetworkConfirm;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->resetNetwork()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0d045b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    return-void
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;

    .line 325
    :goto_0
    return-object v0

    .line 319
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;

    .line 320
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 321
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 322
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0e0fc3

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 323
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e073c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method private queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "requestCode"    # I

    .prologue
    .line 339
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 340
    .local v0, "pickIntent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const-string v1, ".title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const-string v1, ".subject"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string v1, ".password"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    invoke-virtual {p0, v0, p4}, Lcom/android/settings/ResetNetworkConfirm;->startActivityForResult(Landroid/content/Intent;I)V

    .line 345
    return-void
.end method

.method private resetNetwork()V
    .locals 6

    .prologue
    .line 229
    iget-boolean v2, p0, Lcom/android/settings/ResetNetworkConfirm;->DisableListner:Z

    if-eqz v2, :cond_0

    .line 315
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ResetNetworkConfirm;->mContext:Landroid/content/Context;

    .line 233
    iget-boolean v2, p0, Lcom/android/settings/ResetNetworkConfirm;->isATTReset:Z

    if-eqz v2, :cond_1

    .line 234
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/ResetNetworkConfirm;->DisableListner:Z

    .line 235
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/ResetNetworkConfirm;->isWiFiEnabled:Z

    .line 236
    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->getProgressDialog()Landroid/app/ProgressDialog;

    .line 237
    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 238
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/settings/ResetNetworkConfirm;->mHandler:Landroid/os/Handler;

    .line 239
    new-instance v2, Lcom/android/settings/ResetNetworkConfirm$3;

    invoke-direct {v2, p0}, Lcom/android/settings/ResetNetworkConfirm$3;-><init>(Lcom/android/settings/ResetNetworkConfirm;)V

    iput-object v2, p0, Lcom/android/settings/ResetNetworkConfirm;->mRemoveProgress:Ljava/lang/Runnable;

    .line 253
    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/ResetNetworkConfirm;->mRemoveProgress:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 256
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.SETTINGS_RESET_WIFI"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 261
    .local v1, "mNfcAdapter":Landroid/nfc/NfcAdapter;
    :try_start_0
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->networkReset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->restoreDefaultApn()Z

    .line 268
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mNfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_1
    new-instance v2, Lcom/android/settings/ResetNetworkConfirm$4;

    invoke-direct {v2, p0}, Lcom/android/settings/ResetNetworkConfirm$4;-><init>(Lcom/android/settings/ResetNetworkConfirm;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 262
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "mNfcAdapter":Landroid/nfc/NfcAdapter;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private restoreDefaultApn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 362
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mRestoreApnUiHandler:Lcom/android/settings/ResetNetworkConfirm$RestoreApnUiHandler;

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$RestoreApnUiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ResetNetworkConfirm$RestoreApnUiHandler;-><init>(Lcom/android/settings/ResetNetworkConfirm;Lcom/android/settings/ResetNetworkConfirm$1;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mRestoreApnUiHandler:Lcom/android/settings/ResetNetworkConfirm$RestoreApnUiHandler;

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mRestoreApnProcessHandler:Lcom/android/settings/ResetNetworkConfirm$RestoreApnProcessHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 368
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 370
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 371
    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$RestoreApnProcessHandler;

    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm;->mRestoreApnUiHandler:Lcom/android/settings/ResetNetworkConfirm$RestoreApnUiHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/ResetNetworkConfirm$RestoreApnProcessHandler;-><init>(Lcom/android/settings/ResetNetworkConfirm;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mRestoreApnProcessHandler:Lcom/android/settings/ResetNetworkConfirm$RestoreApnProcessHandler;

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mRestoreApnProcessHandler:Lcom/android/settings/ResetNetworkConfirm$RestoreApnProcessHandler;

    invoke-virtual {v0, v3}, Lcom/android/settings/ResetNetworkConfirm$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 377
    return v3
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 224
    const/16 v0, 0x54

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 350
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 352
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 353
    iget-boolean v0, p0, Lcom/android/settings/ResetNetworkConfirm;->isATTReset:Z

    if-eqz v0, :cond_0

    .line 354
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 355
    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->resetNetwork()V

    .line 359
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 197
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 198
    const-string v1, "subscription"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    .line 202
    :cond_0
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 203
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_network_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const v0, 0x7f040145

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    .line 187
    :cond_0
    const v0, 0x7f0401b6

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    .line 188
    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->establishFinalConfirmationState()V

    .line 189
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onPause()V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mNetworkResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 220
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 207
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onResume()V

    .line 209
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 210
    .local v0, "mNetworkResetIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm;->mNetworkResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 212
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/ResetNetworkConfirm;->isFirstResume:Z

    .line 213
    return-void
.end method
