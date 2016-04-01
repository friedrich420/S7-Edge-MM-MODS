.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;
.super Ljava/lang/Object;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FingerprintServiceLockoutResetMonitor"
.end annotation


# instance fields
.field private final mCallback:Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;

.field private final mRemoveCallbackRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method public constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;)V
    .registers 4
    .param p2, "callback"    # Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;

    .prologue
    .line 1326
    iput-object p1, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1343
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor$1;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V

    iput-object v0, p0, mRemoveCallbackRunnable:Ljava/lang/Runnable;

    .line 1327
    iput-object p2, p0, mCallback:Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;

    .line 1328
    return-void
.end method


# virtual methods
.method public sendLockoutReset()V
    .registers 5

    .prologue
    .line 1331
    iget-object v1, p0, mCallback:Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;

    if-eqz v1, :cond_f

    .line 1333
    :try_start_4
    iget-object v1, p0, mCallback:Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;

    iget-object v2, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$1400(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;->onLockoutReset(J)V
    :try_end_f
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_f} :catch_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_22

    .line 1341
    :cond_f
    :goto_f
    return-void

    .line 1334
    :catch_10
    move-exception v0

    .line 1335
    .local v0, "e":Landroid/os/DeadObjectException;
    const-string v1, "FingerprintService"

    const-string v2, "Death object while invoking onLockoutReset: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1336
    iget-object v1, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, v1, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, mRemoveCallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f

    .line 1337
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catch_22
    move-exception v0

    .line 1338
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to invoke onLockoutReset: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method
