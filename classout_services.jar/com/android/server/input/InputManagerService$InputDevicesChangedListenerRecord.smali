.class final Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDevicesChangedListenerRecord"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/input/IInputDevicesChangedListener;

.field private final mPid:I

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputDevicesChangedListener;)V
    .registers 4
    .param p2, "pid"    # I
    .param p3, "listener"    # Landroid/hardware/input/IInputDevicesChangedListener;

    .prologue
    .line 3374
    iput-object p1, p0, this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3375
    iput p2, p0, mPid:I

    .line 3376
    iput-object p3, p0, mListener:Landroid/hardware/input/IInputDevicesChangedListener;

    .line 3377
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 3384
    iget-object v0, p0, this$0:Lcom/android/server/input/InputManagerService;

    iget v1, p0, mPid:I

    # invokes: Lcom/android/server/input/InputManagerService;->onInputDevicesChangedListenerDied(I)V
    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->access$2000(Lcom/android/server/input/InputManagerService;I)V

    .line 3385
    return-void
.end method

.method public notifyInputDevicesChanged([I)V
    .registers 6
    .param p1, "info"    # [I

    .prologue
    .line 3389
    :try_start_0
    iget-object v1, p0, mListener:Landroid/hardware/input/IInputDevicesChangedListener;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputDevicesChangedListener;->onInputDevicesChanged([I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 3395
    :goto_5
    return-void

    .line 3390
    :catch_6
    move-exception v0

    .line 3391
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to notify process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " that input devices changed, assuming it died."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3393
    invoke-virtual {p0}, binderDied()V

    goto :goto_5
.end method
