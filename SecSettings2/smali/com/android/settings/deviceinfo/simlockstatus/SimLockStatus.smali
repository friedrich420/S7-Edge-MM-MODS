.class public Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;
.super Lcom/android/settings/InstrumentedPreferenceActivity;
.source "SimLockStatus.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mChangeUserName1:Landroid/widget/LinearLayout;

.field mChangeUserName1Listener:Landroid/view/View$OnClickListener;

.field private mChangeUserName2:Landroid/widget/LinearLayout;

.field mChangeUserName2Listener:Landroid/view/View$OnClickListener;

.field private mChangeUserName3:Landroid/widget/LinearLayout;

.field mChangeUserName3Listener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNormalTest:Landroid/widget/LinearLayout;

.field mNormalTestListener:Landroid/view/View$OnClickListener;

.field private mRebootDialog:Landroid/app/AlertDialog;

.field private mRes:Landroid/content/res/Resources;

.field private mSamsungRilConnector:Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

.field private mSimCode:Ljava/lang/String;

.field private mSimLockPolicyBuffer:Ljava/nio/ByteBuffer;

.field private mSimState:Ljava/lang/String;

.field private mTestDialog:Landroid/app/AlertDialog;

.field private mUnknown:Ljava/lang/String;

.field private mUpdateBtn:Landroid/widget/Button;

.field private mUpdateDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 435
    new-instance v0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$9;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$9;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/InstrumentedPreferenceActivity;-><init>()V

    .line 116
    new-instance v0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$1;-><init>(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mHandler:Landroid/os/Handler;

    .line 332
    new-instance v0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$5;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$5;-><init>(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mNormalTestListener:Landroid/view/View$OnClickListener;

    .line 342
    new-instance v0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$6;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$6;-><init>(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mChangeUserName1Listener:Landroid/view/View$OnClickListener;

    .line 353
    new-instance v0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$7;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$7;-><init>(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mChangeUserName2Listener:Landroid/view/View$OnClickListener;

    .line 364
    new-instance v0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$8;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$8;-><init>(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mChangeUserName3Listener:Landroid/view/View$OnClickListener;

    .line 410
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->updateSimStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimLockPolicyBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimLockPolicyBuffer:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->rebootDevice()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mTestDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->startMainSIMLock()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mUpdateDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getSimStateString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 398
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e1635

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "simState":Ljava/lang/String;
    const-string v1, "ABSENT"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    const-string v0, "-"

    .line 407
    :cond_0
    :goto_0
    return-object v0

    .line 401
    :cond_1
    const-string v1, "READY"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 402
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e1634

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 403
    :cond_2
    const-string v1, "UNKNOWN"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0e00be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isUpdateAvailable()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 390
    iget-object v3, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 391
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 392
    .local v0, "simState":I
    const-string v3, "SimLockStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    if-eq v0, v2, :cond_0

    const-string v3, "READY"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private rebootDevice()V
    .locals 4

    .prologue
    .line 243
    const-string v1, "SimLockStatus"

    const-string v2, "Device reboot!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 245
    .local v0, "rebootHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$2;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$2;-><init>(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 257
    return-void
.end method

.method private startMainSIMLock()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 211
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;-><init>(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V

    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 213
    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->showDialog(I)V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->showDialog(I)V

    goto :goto_0
.end method

.method private updateSimStatus()V
    .locals 3

    .prologue
    .line 376
    invoke-static {}, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->getSimLockStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimState:Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSamsungRilConnector:Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->getOperationName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimCode:Ljava/lang/String;

    .line 378
    const-string v0, "SimLockStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSimStatus() => mSimState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSimCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v0, "ABSENT"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimCode:Ljava/lang/String;

    .line 383
    :cond_0
    const-string v0, "sim_state_status"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->getSimStateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 384
    const-string v0, "sim_state_code"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mUpdateBtn:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->isUpdateAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 387
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 130
    const/16 v0, 0x28

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 201
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "SimLockStatus"

    const-string v1, "SimCardStatus onClick eng"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->showDialog(I)V

    .line 208
    :goto_0
    return-void

    .line 205
    :cond_0
    const-string v0, "SimLockStatus"

    const-string v1, "SimCardStatus onClick user"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->startMainSIMLock()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    iput-object p0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    .line 137
    const-string v0, "SimLockStatus"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->finish()V

    .line 143
    :cond_0
    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->addPreferencesFromResource(I)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mRes:Landroid/content/res/Resources;

    .line 146
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0e00be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mUnknown:Ljava/lang/String;

    .line 148
    const v0, 0x7f0401e3

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->setContentView(I)V

    .line 150
    const v0, 0x7f0d04ad

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mUpdateBtn:Landroid/widget/Button;

    .line 151
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mUpdateBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->getInstance(Landroid/content/Context;)Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSamsungRilConnector:Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    .line 154
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSamsungRilConnector:Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-virtual {v0, p0}, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->setOnRilJobListener(Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSamsungRilConnector:Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->connect()V

    .line 157
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .param p1, "dialogId"    # I

    .prologue
    const v9, 0x7f0e163d

    const v8, 0x7f0e0389

    const v7, 0x104000a

    const/4 v5, 0x0

    .line 261
    packed-switch p1, :pswitch_data_0

    move-object v4, v5

    .line 328
    :goto_0
    return-object v4

    .line 263
    :pswitch_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x7f0e10b5

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_0

    .line 270
    :pswitch_1
    new-instance v4, Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mUpdateDialog:Landroid/app/ProgressDialog;

    .line 271
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mUpdateDialog:Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mUpdateDialog:Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0e163a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mUpdateDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 276
    :pswitch_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x7f0e1637

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x7f0e1639

    new-instance v7, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$3;

    invoke-direct {v7, p0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$3;-><init>(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x7f0e1638

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_0

    .line 291
    :pswitch_3
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x7f0e1636

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_0

    .line 298
    :pswitch_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 299
    .local v2, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0e163b

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 300
    const v4, 0x7f0e163c

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 301
    new-instance v4, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$4;

    invoke-direct {v4, p0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$4;-><init>(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V

    invoke-virtual {v2, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 307
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mRebootDialog:Landroid/app/AlertDialog;

    .line 308
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mRebootDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 310
    .end local v2    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 311
    .local v1, "layoutInflator":Landroid/view/LayoutInflater;
    const v4, 0x7f040114

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 312
    .local v0, "alertDialogLayout":Landroid/view/View;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 313
    .local v3, "mTestAlertDialog":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0d0305

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mNormalTest:Landroid/widget/LinearLayout;

    .line 314
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mNormalTest:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mNormalTestListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    const v4, 0x7f0d0306

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mChangeUserName1:Landroid/widget/LinearLayout;

    .line 316
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mChangeUserName1:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mChangeUserName1Listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    const v4, 0x7f0d0307

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mChangeUserName2:Landroid/widget/LinearLayout;

    .line 318
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mChangeUserName2:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mChangeUserName2Listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    const v4, 0x7f0d0308

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mChangeUserName3:Landroid/widget/LinearLayout;

    .line 320
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mChangeUserName3:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mChangeUserName3Listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 322
    const v4, 0x7f0e1631

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 323
    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 324
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mTestDialog:Landroid/app/AlertDialog;

    .line 325
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mTestDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Lcom/android/settings/InstrumentedPreferenceActivity;->onDestroy()V

    .line 194
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSamsungRilConnector:Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSamsungRilConnector:Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->disconnect()V

    .line 197
    :cond_0
    return-void
.end method

.method public onGetBlobFinished(Ljava/lang/String;)V
    .locals 2
    .param p1, "operationName"    # Ljava/lang/String;

    .prologue
    .line 231
    const-string v0, "SimLockStatus"

    const-string v1, "onGetBlobRequestFinished()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 240
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 170
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 176
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 172
    :pswitch_0
    const-string v0, "SimLockStatus"

    const-string v1, "onOptionsItemSelected() up button pressed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->finish()V

    .line 174
    const/4 v0, 0x1

    goto :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Lcom/android/settings/InstrumentedPreferenceActivity;->onPause()V

    .line 182
    const-string v0, "SimLockStatus"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mRebootDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mRebootDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->rebootDevice()V

    .line 187
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Lcom/android/settings/InstrumentedPreferenceActivity;->onResume()V

    .line 162
    const-string v0, "SimLockStatus"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->updateSimStatus()V

    .line 165
    return-void
.end method

.method public onSetBlobFinished(Z)V
    .locals 3
    .param p1, "bSucceed"    # Z

    .prologue
    .line 221
    const-string v0, "SimLockStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetBlobRequestFinished() => bSucceed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    if-eqz p1, :cond_0

    .line 223
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->showDialog(I)V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->showDialog(I)V

    goto :goto_0
.end method
