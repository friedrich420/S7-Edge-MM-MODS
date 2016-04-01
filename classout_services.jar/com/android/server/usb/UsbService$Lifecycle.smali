.class public Lcom/android/server/usb/UsbService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mUsbService:Lcom/android/server/usb/UsbService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 86
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .prologue
    .line 96
    const/16 v0, 0x226

    if-ne p1, v0, :cond_11

    .line 97
    const-string v0, "UsbService"

    const-string v1, "UsbService -> onBootPhase PHASE_ACTIVITY_MANAGER_READY"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, mUsbService:Lcom/android/server/usb/UsbService;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbService;->systemReady()V

    .line 103
    :cond_10
    :goto_10
    return-void

    .line 99
    :cond_11
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_10

    .line 100
    const-string v0, "UsbService"

    const-string v1, "UsbService -> onBootPhase PHASE_BOOT_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, mUsbService:Lcom/android/server/usb/UsbService;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbService;->bootCompleted()V

    goto :goto_10
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 90
    new-instance v0, Lcom/android/server/usb/UsbService;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mUsbService:Lcom/android/server/usb/UsbService;

    .line 91
    const-string/jumbo v0, "usb"

    iget-object v1, p0, mUsbService:Lcom/android/server/usb/UsbService;

    invoke-virtual {p0, v0, v1}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 92
    return-void
.end method
