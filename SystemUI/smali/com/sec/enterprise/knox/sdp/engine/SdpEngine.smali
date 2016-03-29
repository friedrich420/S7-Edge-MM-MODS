.class public Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;
.super Ljava/lang/Object;
.source "SdpEngine.java"


# static fields
.field private static _instance:Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;


# instance fields
.field private mSdpService:Lcom/sec/sdp/ISdpManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->_instance:Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const-string v0, "sdp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    .line 125
    return-void
.end method

.method private static enforcePermission()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;
        }
    .end annotation

    .prologue
    .line 463
    const/16 v1, -0x63

    .line 464
    .local v1, "res":I
    const-string v3, "sdp"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v2

    .line 466
    .local v2, "service":Lcom/sec/sdp/ISdpManagerService;
    if-eqz v2, :cond_0

    .line 468
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, v3}, Lcom/sec/sdp/ISdpManagerService;->isLicensed(Ljava/lang/String;)I

    move-result v1

    .line 469
    if-eqz v1, :cond_0

    .line 470
    new-instance v3, Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;

    invoke-direct {v3}, Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;-><init>()V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "SdpEngine"

    const-string v4, "Failed to talk with sdp service..."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->enforcePermission()V

    .line 54
    sget-object v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->_instance:Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->_instance:Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    .line 57
    :cond_0
    sget-object v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->_instance:Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    return-object v0
.end method


# virtual methods
.method public lock(Ljava/lang/String;)V
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;
        }
    .end annotation

    .prologue
    .line 217
    const/16 v1, -0xf

    .line 218
    .local v1, "res":I
    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_0

    .line 220
    :try_start_0
    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1}, Lcom/sec/sdp/ISdpManagerService;->lock(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 225
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 226
    const-string v2, "SdpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lock failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    sparse-switch v1, :sswitch_data_0

    .line 241
    :cond_1
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SdpEngine"

    const-string v3, "Failed to call lock"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 234
    .end local v0    # "re":Landroid/os/RemoteException;
    :sswitch_0
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;-><init>()V

    throw v2

    .line 236
    :sswitch_1
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v2

    .line 238
    :sswitch_2
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2

    .line 227
    nop

    :sswitch_data_0
    .sparse-switch
        -0x63 -> :sswitch_0
        -0xf -> :sswitch_0
        -0xe -> :sswitch_0
        -0xc -> :sswitch_0
        -0xb -> :sswitch_0
        -0xa -> :sswitch_0
        -0x8 -> :sswitch_2
        -0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public unlock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;
        }
    .end annotation

    .prologue
    .line 177
    const/16 v1, -0xf

    .line 178
    .local v1, "res":I
    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_0

    .line 180
    :try_start_0
    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;->mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/sdp/ISdpManagerService;->unlock(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 185
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 186
    const-string v2, "SdpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unlock failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sparse-switch v1, :sswitch_data_0

    .line 206
    :cond_1
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SdpEngine"

    const-string v3, "Failed to call unlock"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 195
    .end local v0    # "re":Landroid/os/RemoteException;
    :sswitch_0
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;-><init>()V

    throw v2

    .line 197
    :sswitch_1
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v2

    .line 199
    :sswitch_2
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;-><init>()V

    throw v2

    .line 203
    :sswitch_3
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2

    .line 187
    nop

    :sswitch_data_0
    .sparse-switch
        -0x63 -> :sswitch_0
        -0xf -> :sswitch_0
        -0xe -> :sswitch_0
        -0xc -> :sswitch_0
        -0xb -> :sswitch_0
        -0xa -> :sswitch_0
        -0x8 -> :sswitch_3
        -0x7 -> :sswitch_1
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_0
    .end sparse-switch
.end method
