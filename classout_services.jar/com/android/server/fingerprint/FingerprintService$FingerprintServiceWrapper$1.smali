.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field final synthetic val$attr:Landroid/os/Bundle;

.field final synthetic val$cryptoClone:[B

.field final synthetic val$effectiveGroupId:I

.field final synthetic val$flags:I

.field final synthetic val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field final synthetic val$restricted:Z

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLandroid/os/Bundle;)V
    .registers 9

    .prologue
    .line 1462
    iput-object p1, p0, this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iput-object p2, p0, val$token:Landroid/os/IBinder;

    iput-object p3, p0, val$cryptoClone:[B

    iput p4, p0, val$effectiveGroupId:I

    iput-object p5, p0, val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iput p6, p0, val$flags:I

    iput-boolean p7, p0, val$restricted:Z

    iput-object p8, p0, val$attr:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1465
    iget-object v0, p0, this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, p0, val$token:Landroid/os/IBinder;

    iget-object v2, p0, val$cryptoClone:[B

    iget v3, p0, val$effectiveGroupId:I

    iget-object v4, p0, val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget v5, p0, val$flags:I

    iget-boolean v6, p0, val$restricted:Z

    iget-object v7, p0, val$attr:Landroid/os/Bundle;

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/fingerprint/FingerprintService;->startEnrollment(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLandroid/os/Bundle;)V

    .line 1466
    return-void
.end method
