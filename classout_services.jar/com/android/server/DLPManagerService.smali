.class public Lcom/android/server/DLPManagerService;
.super Landroid/content/IDLPManager$Stub;
.source "DLPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DLPManagerService$DLPHandler;
    }
.end annotation


# static fields
.field private static final MSG_SYSTEM_READY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DLPManagerService"

.field private static sContext:Landroid/content/Context;


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private mDLPHandler:Lcom/android/server/DLPManagerService$DLPHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36
    const/4 v1, 0x0

    sput-object v1, sContext:Landroid/content/Context;

    .line 42
    :try_start_3
    const-string/jumbo v1, "dlp_sdk"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_9} :catch_a

    .line 46
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    :goto_9
    return-void

    .line 43
    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_a
    move-exception v0

    .line 44
    .restart local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Landroid/content/IDLPManager$Stub;-><init>()V

    .line 33
    iput-object v0, p0, mDLPHandler:Lcom/android/server/DLPManagerService$DLPHandler;

    .line 34
    iput-object v0, p0, handlerThread:Landroid/os/HandlerThread;

    .line 50
    sput-object p1, sContext:Landroid/content/Context;

    .line 51
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DLPManagerService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, handlerThread:Landroid/os/HandlerThread;

    .line 53
    iget-object v0, p0, handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    new-instance v0, Lcom/android/server/DLPManagerService$DLPHandler;

    iget-object v1, p0, handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/DLPManagerService$DLPHandler;-><init>(Lcom/android/server/DLPManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, mDLPHandler:Lcom/android/server/DLPManagerService$DLPHandler;

    .line 55
    return-void
.end method

.method public static native Native_Dlp_LockDLP(I)I
.end method

.method public static native Native_Dlp_SetDLPExpiry(II)I
.end method

.method public static native Native_Dlp_UnlockDLP(I)I
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {p0}, checkCallerPermissionFor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .registers 1

    .prologue
    .line 29
    sget-object v0, sContext:Landroid/content/Context;

    return-object v0
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 6
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v1, "DLPManagerService"

    .line 59
    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_57

    .line 60
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "e":Ljava/lang/SecurityException;
    throw v0

    .line 65
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_57
    const/4 v2, 0x0

    return v2
.end method

.method private isSupportedDevice()Z
    .registers 2

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public lockDLP(I)Z
    .registers 8
    .param p1, "personaId"    # I

    .prologue
    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, "res":Z
    const-string v3, "DLPManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DLP : To handle DLP_lockDLP : for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :try_start_19
    invoke-static {p1}, Native_Dlp_LockDLP(I)I

    move-result v3

    if-nez v3, :cond_27

    .line 205
    const-string v3, "DLPManagerService"

    const-string v4, "Error to handle DLP_lockDLP"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_26} :catch_29
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_19 .. :try_end_26} :catch_32

    .line 214
    :goto_26
    return v1

    .line 207
    :cond_27
    const/4 v1, 0x1

    goto :goto_26

    .line 209
    :catch_29
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DLPManagerService"

    const-string v4, "Error- Exception in Lock DLP"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 211
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_32
    move-exception v2

    .line 212
    .local v2, "ule":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_26
.end method

.method public setDLPExpiry(II)Z
    .registers 9
    .param p1, "personaId"    # I
    .param p2, "expiry"    # I

    .prologue
    .line 150
    const/4 v1, 0x0

    .line 151
    .local v1, "res":Z
    const-string v3, "DLPManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DLP : To handle DLP_SetDLPExpiry : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :try_start_23
    invoke-static {p1, p2}, Native_Dlp_SetDLPExpiry(II)I

    move-result v3

    if-nez v3, :cond_42

    .line 155
    const-string v3, "DLPManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error to handle DLP_SetDLPExpiry : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_41} :catch_44
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_23 .. :try_end_41} :catch_4d

    .line 164
    :goto_41
    return v1

    .line 157
    :cond_42
    const/4 v1, 0x1

    goto :goto_41

    .line 159
    :catch_44
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DLPManagerService"

    const-string v4, "Error- Exception in setting expiry time"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 161
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4d
    move-exception v2

    .line 162
    .local v2, "ule":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_41
.end method

.method public systemReady()V
    .registers 4

    .prologue
    .line 70
    invoke-direct {p0}, isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_f

    .line 71
    const-string v1, "DLPManagerService"

    const-string/jumbo v2, "systemReady DLP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_e
    return-void

    .line 75
    :cond_f
    const-string v1, "DLPManagerService"

    const-string v2, "DLPManagerService ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string/jumbo v1, "systemReady"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 77
    const-string v1, "DLPManagerService"

    const-string/jumbo v2, "sending message MSG_SYSTEM_READY to handler."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v1, p0, mDLPHandler:Lcom/android/server/DLPManagerService$DLPHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/DLPManagerService$DLPHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 79
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mDLPHandler:Lcom/android/server/DLPManagerService$DLPHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/DLPManagerService$DLPHandler;->sendMessage(Landroid/os/Message;)Z

    .line 81
    const-string v1, "DLPManagerService"

    const-string/jumbo v2, "systemReady done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public unlockDLP(I)Z
    .registers 8
    .param p1, "personaId"    # I

    .prologue
    .line 175
    const/4 v1, 0x0

    .line 176
    .local v1, "res":Z
    const-string v3, "DLPManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DLP : To handle DLP_unlockDLP : for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :try_start_19
    invoke-static {p1}, Native_Dlp_UnlockDLP(I)I

    move-result v3

    if-nez v3, :cond_27

    .line 180
    const-string v3, "DLPManagerService"

    const-string v4, "Error to handle SDP_unlockDLP"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_26} :catch_29
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_19 .. :try_end_26} :catch_32

    .line 189
    :goto_26
    return v1

    .line 182
    :cond_27
    const/4 v1, 0x1

    goto :goto_26

    .line 184
    :catch_29
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DLPManagerService"

    const-string v4, "Error- Exception in Unlock DLP"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 186
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_32
    move-exception v2

    .line 187
    .local v2, "ule":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_26
.end method
