.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->authenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field final synthetic val$attr:Landroid/os/Bundle;

.field final synthetic val$effectiveGroupId:I

.field final synthetic val$flags:I

.field final synthetic val$opId:J

.field final synthetic val$opPackageName:Ljava/lang/String;

.field final synthetic val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field final synthetic val$restricted:Z

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;JLandroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;)V
    .registers 11

    .prologue
    .line 1527
    iput-object p1, p0, this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iput-wide p2, p0, val$opId:J

    iput-object p4, p0, val$token:Landroid/os/IBinder;

    iput p5, p0, val$effectiveGroupId:I

    iput-object p6, p0, val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iput p7, p0, val$flags:I

    iput-boolean p8, p0, val$restricted:Z

    iput-object p9, p0, val$opPackageName:Ljava/lang/String;

    iput-object p10, p0, val$attr:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 1530
    iget-object v0, p0, this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$200(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_token"

    iget-wide v4, p0, val$opId:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    :goto_14
    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1531
    iget-object v0, p0, this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, p0, val$token:Landroid/os/IBinder;

    iget-wide v2, p0, val$opId:J

    iget v4, p0, val$effectiveGroupId:I

    iget-object v5, p0, val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget v6, p0, val$flags:I

    iget-boolean v7, p0, val$restricted:Z

    iget-object v8, p0, val$opPackageName:Ljava/lang/String;

    iget-object v9, p0, val$attr:Landroid/os/Bundle;

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/fingerprint/FingerprintService;->startAuthentication(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;)V

    .line 1533
    return-void

    .line 1530
    :cond_2f
    const/4 v0, 0x0

    goto :goto_14
.end method
