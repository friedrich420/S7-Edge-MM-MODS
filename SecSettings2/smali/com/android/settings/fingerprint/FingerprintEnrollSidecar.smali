.class public Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;
.super Landroid/app/Fragment;
.source "FingerprintEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;
    }
.end annotation


# instance fields
.field private mDone:Z

.field private mEnrolling:Z

.field private mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private mEnrollmentCancel:Landroid/os/CancellationSignal;

.field private mEnrollmentRemaining:I

.field private mEnrollmentSteps:I

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private mToken:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentRemaining:I

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .line 137
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$2;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentRemaining:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mDone:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mListener:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()V

    return-void
.end method

.method private cancelEnrollment()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    .line 89
    :cond_0
    return-void
.end method

.method private startEnrollment()V
    .locals 5

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    .line 76
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mToken:[B

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/fingerprint/FingerprintManager;->enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    .line 80
    return-void
.end method


# virtual methods
.method public getEnrollmentRemaining()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentRemaining:I

    return v0
.end method

.method public getEnrollmentSteps()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 53
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mToken:[B

    .line 55
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->setRetainInstance(Z)V

    .line 48
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 60
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    if-nez v0, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->startEnrollment()V

    .line 63
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()V

    .line 71
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mListener:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;

    .line 93
    return-void
.end method
