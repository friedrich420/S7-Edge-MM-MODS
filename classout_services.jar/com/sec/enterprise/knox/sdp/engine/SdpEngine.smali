.class public Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;
.super Ljava/lang/Object;
.source "SdpEngine.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SdpEngine"

.field private static _instance:Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mSdpService:Lcom/sec/sdp/ISdpManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, _instance:Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const-string/jumbo v0, "sdp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v0

    iput-object v0, p0, mSdpService:Lcom/sec/sdp/ISdpManagerService;

    .line 125
    return-void
.end method

.method private static enforcePermission()V
    .registers 5
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
    const-string/jumbo v3, "sdp"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v2

    .line 466
    .local v2, "service":Lcom/sec/sdp/ISdpManagerService;
    if-eqz v2, :cond_24

    .line 468
    const/4 v3, 0x0

    :try_start_10
    invoke-interface {v2, v3}, Lcom/sec/sdp/ISdpManagerService;->isLicensed(Ljava/lang/String;)I

    move-result v1

    .line 469
    if-eqz v1, :cond_24

    .line 470
    new-instance v3, Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;

    invoke-direct {v3}, Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;-><init>()V

    throw v3
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_1c

    .line 471
    :catch_1c
    move-exception v0

    .line 472
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "SdpEngine"

    const-string v4, "Failed to talk with sdp service..."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_24
    return-void
.end method

.method public static getInstance()Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {}, enforcePermission()V

    .line 54
    sget-object v0, _instance:Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    if-nez v0, :cond_e

    .line 55
    new-instance v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    invoke-direct {v0}, <init>()V

    sput-object v0, _instance:Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    .line 57
    :cond_e
    sget-object v0, _instance:Lcom/sec/enterprise/knox/sdp/engine/SdpEngine;

    return-object v0
.end method


# virtual methods
.method public addEngine(Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "param"    # Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "resetToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineExistsException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpNotSupportedException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidResetTokenException;
        }
    .end annotation

    .prologue
    .line 81
    const/16 v1, -0xf

    .line 82
    .local v1, "res":I
    iget-object v2, p0, mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_c

    .line 84
    :try_start_6
    iget-object v2, p0, mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1, p2, p3}, Lcom/sec/sdp/ISdpManagerService;->addEngine(Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_2a

    move-result v1

    .line 89
    :cond_c
    :goto_c
    if-eqz v1, :cond_29

    .line 90
    const-string v2, "SdpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addEngine failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sparse-switch v1, :sswitch_data_58

    .line 111
    :cond_29
    return-void

    .line 85
    :catch_2a
    move-exception v0

    .line 86
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SdpEngine"

    const-string v3, "Failed to call addEngine"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 98
    .end local v0    # "re":Landroid/os/RemoteException;
    :sswitch_33
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;-><init>()V

    throw v2

    .line 100
    :sswitch_39
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineExistsException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineExistsException;-><init>()V

    throw v2

    .line 102
    :sswitch_3f
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2

    .line 104
    :sswitch_45
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpNotSupportedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpNotSupportedException;-><init>()V

    throw v2

    .line 106
    :sswitch_4b
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;-><init>()V

    throw v2

    .line 108
    :sswitch_51
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidResetTokenException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidResetTokenException;-><init>()V

    throw v2

    .line 91
    nop

    :sswitch_data_58
    .sparse-switch
        -0x63 -> :sswitch_33
        -0xf -> :sswitch_33
        -0xe -> :sswitch_33
        -0xc -> :sswitch_33
        -0xb -> :sswitch_33
        -0xa -> :sswitch_33
        -0x8 -> :sswitch_3f
        -0x6 -> :sswitch_39
        -0x3 -> :sswitch_45
        -0x2 -> :sswitch_4b
        -0x1 -> :sswitch_51
    .end sparse-switch
.end method

.method public allow(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;
        }
    .end annotation

    .prologue
    .line 406
    const/16 v1, -0xf

    .line 407
    .local v1, "res":I
    iget-object v2, p0, mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_c

    .line 409
    :try_start_6
    iget-object v2, p0, mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/sdp/ISdpManagerService;->allow(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_2f

    move-result v1

    .line 414
    :cond_c
    :goto_c
    if-eqz v1, :cond_44

    .line 415
    const-string v2, "SdpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allow failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    packed-switch v1, :pswitch_data_46

    .line 422
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;-><init>()V

    throw v2

    .line 410
    :catch_2f
    move-exception v0

    .line 411
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SdpEngine"

    const-string v3, "Failed to call allow"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 418
    .end local v0    # "re":Landroid/os/RemoteException;
    :pswitch_38
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2

    .line 420
    :pswitch_3e
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v2

    .line 425
    :cond_44
    return-void

    .line 416
    nop

    :pswitch_data_46
    .packed-switch -0x8
        :pswitch_38
        :pswitch_3e
    .end packed-switch
.end method

.method public disallow(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;
        }
    .end annotation

    .prologue
    .line 441
    const/16 v1, -0xf

    .line 442
    .local v1, "res":I
    iget-object v2, p0, mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_c

    .line 444
    :try_start_6
    iget-object v2, p0, mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/sdp/ISdpManagerService;->disallow(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_30

    move-result v1

    .line 449
    :cond_c
    :goto_c
    if-eqz v1, :cond_45

    .line 450
    const-string v2, "SdpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "disallow failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    packed-switch v1, :pswitch_data_46

    .line 457
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;-><init>()V

    throw v2

    .line 445
    :catch_30
    move-exception v0

    .line 446
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SdpEngine"

    const-string v3, "Failed to call disallow"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 453
    .end local v0    # "re":Landroid/os/RemoteException;
    :pswitch_39
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2

    .line 455
    :pswitch_3f
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v2

    .line 460
    :cond_45
    return-void

    .line 451
    :pswitch_data_46
    .packed-switch -0x8
        :pswitch_39
        :pswitch_3f
    .end packed-switch
.end method

.method public exists(Ljava/lang/String;)Z
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 381
    const/4 v1, -0x7

    .line 382
    .local v1, "res":I
    iget-object v2, p0, mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_b

    .line 384
    :try_start_5
    iget-object v2, p0, mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1}, Lcom/sec/sdp/ISdpManagerService;->exists(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_10

    move-result v1

    .line 389
    :cond_b
    :goto_b
    const/4 v2, -0x6

    if-ne v1, v2, :cond_19

    const/4 v2, 0x1

    :goto_f
    return v2

    .line 385
    :catch_10
    move-exception v0

    .line 386
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SdpEngine"

    const-string v3, "Failed to call exists"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 389
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_19
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public lock(Ljava/lang/String;)V
    .registers 7
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
    iget-object v2, p0, mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_c

    .line 220
    :try_start_6
    iget-object v2, p0, mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1}, Lcom/sec/sdp/ISdpManagerService;->lock(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_2b

    move-result v1

    .line 225
    :cond_c
    :goto_c
    if-eqz v1, :cond_2a

    .line 226
    const-string v2, "SdpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lock failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    sparse-switch v1, :sswitch_data_46

    .line 241
    :cond_2a
    return-void

    .line 221
    :catch_2b
    move-exception v0

    .line 222
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SdpEngine"

    const-string v3, "Failed to call lock"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 234
    .end local v0    # "re":Landroid/os/RemoteException;
    :sswitch_34
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;-><init>()V

    throw v2

    .line 236
    :sswitch_3a
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v2

    .line 238
    :sswitch_40
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2

    .line 227
    :sswitch_data_46
    .sparse-switch
        -0x63 -> :sswitch_34
        -0xf -> :sswitch_34
        -0xe -> :sswitch_34
        -0xc -> :sswitch_34
        -0xb -> :sswitch_34
        -0xa -> :sswitch_34
        -0x8 -> :sswitch_40
        -0x7 -> :sswitch_3a
    .end sparse-switch
.end method

.method public migrate(Ljava/lang/String;)V
    .registers 7
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;
        }
    .end annotation

    .prologue
    .line 350
    const/16 v1, -0xf

    .line 351
    .local v1, "res":I
    iget-object v2, p0, mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_c

    .line 353
    :try_start_6
    iget-object v2, p0, mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1}, Lcom/sec/sdp/ISdpManagerService;->migrate(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_2b

    move-result v1

    .line 358
    :cond_c
    :goto_c
    if-eqz v1, :cond_2a

    .line 359
    const-string v2, "SdpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "migrate failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sparse-switch v1, :sswitch_data_46

    .line 374
    :cond_2a
    return-void

    .line 354
    :catch_2b
    move-exception v0

    .line 355
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SdpEngine"

    const-string v3, "Failed to call migrate"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 367
    .end local v0    # "re":Landroid/os/RemoteException;
    :sswitch_34
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;-><init>()V

    throw v2

    .line 369
    :sswitch_3a
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v2

    .line 371
    :sswitch_40
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2

    .line 360
    :sswitch_data_46
    .sparse-switch
        -0x63 -> :sswitch_34
        -0xf -> :sswitch_34
        -0xe -> :sswitch_34
        -0xc -> :sswitch_34
        -0xb -> :sswitch_34
        -0xa -> :sswitch_34
        -0x8 -> :sswitch_40
        -0x7 -> :sswitch_3a
    .end sparse-switch
.end method

.method public removeEngine(Ljava/lang/String;)V
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;
        }
    .end annotation

    .prologue
    .line 136
    const/16 v1, -0xf

    .line 137
    .local v1, "res":I
    iget-object v2, p0, mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_c

    .line 139
    :try_start_6
    iget-object v2, p0, mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1}, Lcom/sec/sdp/ISdpManagerService;->removeEngine(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_2b

    move-result v1

    .line 144
    :cond_c
    :goto_c
    if-eqz v1, :cond_2a

    .line 145
    const-string v2, "SdpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeEngine failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sparse-switch v1, :sswitch_data_46

    .line 160
    :cond_2a
    return-void

    .line 140
    :catch_2b
    move-exception v0

    .line 141
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SdpEngine"

    const-string v3, "Failed to call removeEngine"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 153
    .end local v0    # "re":Landroid/os/RemoteException;
    :sswitch_34
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;-><init>()V

    throw v2

    .line 155
    :sswitch_3a
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v2

    .line 157
    :sswitch_40
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2

    .line 146
    :sswitch_data_46
    .sparse-switch
        -0x63 -> :sswitch_34
        -0xf -> :sswitch_34
        -0xe -> :sswitch_34
        -0xc -> :sswitch_34
        -0xb -> :sswitch_34
        -0xa -> :sswitch_34
        -0x8 -> :sswitch_40
        -0x7 -> :sswitch_3a
    .end sparse-switch
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "resetToken"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidResetTokenException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;
        }
    .end annotation

    .prologue
    .line 307
    const/16 v1, -0xf

    .line 308
    .local v1, "res":I
    iget-object v2, p0, mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_c

    .line 310
    :try_start_6
    iget-object v2, p0, mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1, p2, p3}, Lcom/sec/sdp/ISdpManagerService;->resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_2b

    move-result v1

    .line 315
    :cond_c
    :goto_c
    if-eqz v1, :cond_2a

    .line 316
    const-string v2, "SdpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetPassword failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    sparse-switch v1, :sswitch_data_52

    .line 335
    :cond_2a
    return-void

    .line 311
    :catch_2b
    move-exception v0

    .line 312
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SdpEngine"

    const-string v3, "Failed to call resetPassword"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 324
    .end local v0    # "re":Landroid/os/RemoteException;
    :sswitch_34
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;-><init>()V

    throw v2

    .line 326
    :sswitch_3a
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v2

    .line 328
    :sswitch_40
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;-><init>()V

    throw v2

    .line 330
    :sswitch_46
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidResetTokenException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidResetTokenException;-><init>()V

    throw v2

    .line 332
    :sswitch_4c
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2

    .line 317
    :sswitch_data_52
    .sparse-switch
        -0x63 -> :sswitch_34
        -0xf -> :sswitch_34
        -0xe -> :sswitch_34
        -0xc -> :sswitch_34
        -0xb -> :sswitch_34
        -0xa -> :sswitch_34
        -0x8 -> :sswitch_4c
        -0x7 -> :sswitch_3a
        -0x2 -> :sswitch_40
        -0x1 -> :sswitch_46
    .end sparse-switch
.end method

.method public setPassword(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpEngineLockedException;,
            Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;
        }
    .end annotation

    .prologue
    .line 260
    const/16 v1, -0xf

    .line 261
    .local v1, "res":I
    iget-object v2, p0, mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_c

    .line 263
    :try_start_6
    iget-object v2, p0, mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/sdp/ISdpManagerService;->setPassword(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_2b

    move-result v1

    .line 268
    :cond_c
    :goto_c
    if-eqz v1, :cond_2a

    .line 269
    const-string v2, "SdpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPassword failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sparse-switch v1, :sswitch_data_52

    .line 289
    :cond_2a
    return-void

    .line 264
    :catch_2b
    move-exception v0

    .line 265
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SdpEngine"

    const-string v3, "Failed to call setPassword"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 278
    .end local v0    # "re":Landroid/os/RemoteException;
    :sswitch_34
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;-><init>()V

    throw v2

    .line 280
    :sswitch_3a
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v2

    .line 282
    :sswitch_40
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineLockedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineLockedException;-><init>()V

    throw v2

    .line 284
    :sswitch_46
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;-><init>()V

    throw v2

    .line 286
    :sswitch_4c
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2

    .line 270
    :sswitch_data_52
    .sparse-switch
        -0x63 -> :sswitch_34
        -0xf -> :sswitch_34
        -0xe -> :sswitch_34
        -0xc -> :sswitch_34
        -0xb -> :sswitch_34
        -0xa -> :sswitch_34
        -0x8 -> :sswitch_4c
        -0x7 -> :sswitch_3a
        -0x5 -> :sswitch_40
        -0x2 -> :sswitch_46
        -0x1 -> :sswitch_34
    .end sparse-switch
.end method

.method public unlock(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
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
    iget-object v2, p0, mSdpService:Lcom/sec/sdp/ISdpManagerService;

    if-eqz v2, :cond_c

    .line 180
    :try_start_6
    iget-object v2, p0, mSdpService:Lcom/sec/sdp/ISdpManagerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/sdp/ISdpManagerService;->unlock(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_2b

    move-result v1

    .line 185
    :cond_c
    :goto_c
    if-eqz v1, :cond_2a

    .line 186
    const-string v2, "SdpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unlock failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sparse-switch v1, :sswitch_data_4c

    .line 206
    :cond_2a
    return-void

    .line 181
    :catch_2b
    move-exception v0

    .line 182
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SdpEngine"

    const-string v3, "Failed to call unlock"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 195
    .end local v0    # "re":Landroid/os/RemoteException;
    :sswitch_34
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInternalException;-><init>()V

    throw v2

    .line 197
    :sswitch_3a
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;-><init>()V

    throw v2

    .line 199
    :sswitch_40
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpInvalidPasswordException;-><init>()V

    throw v2

    .line 203
    :sswitch_46
    new-instance v2, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;

    invoke-direct {v2}, Lcom/sec/enterprise/knox/sdp/exception/SdpAccessDeniedException;-><init>()V

    throw v2

    .line 187
    :sswitch_data_4c
    .sparse-switch
        -0x63 -> :sswitch_34
        -0xf -> :sswitch_34
        -0xe -> :sswitch_34
        -0xc -> :sswitch_34
        -0xb -> :sswitch_34
        -0xa -> :sswitch_34
        -0x8 -> :sswitch_46
        -0x7 -> :sswitch_3a
        -0x2 -> :sswitch_40
        -0x1 -> :sswitch_34
    .end sparse-switch
.end method
