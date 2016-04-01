.class public final Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
.super Ljava/lang/Object;
.source "DeviceRootKeyServiceManager.java"


# static fields
.field public static final ERR_SERVICE_ERROR:I = -0x2710

.field public static final KEY_TYPE_EC:I = 0x4

.field public static final KEY_TYPE_RSA:I = 0x1

.field public static final KEY_TYPE_SYMM:I = 0x2

.field public static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DeviceRootKeyServiceManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 166
    const-string v0, "DeviceRootKeyService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    move-result-object v0

    iput-object v0, p0, mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    .line 167
    const-string v0, "DeviceRootKeyServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " connects to DeviceRootKeyService."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method


# virtual methods
.method public createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B
    .registers 9
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "keyType"    # I
    .param p3, "tlv"    # Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    .prologue
    const/4 v2, 0x0

    .line 258
    const-string v3, "DeviceRootKeyServiceManager"

    const-string v4, "createServiceKeySession() is called."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :try_start_8
    iget-object v3, p0, mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_d} :catch_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_1b

    move-result-object v2

    .line 273
    :goto_e
    return-object v2

    .line 264
    :catch_f
    move-exception v1

    .line 266
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "DeviceRootKeyServiceManager"

    const-string v4, "Failed to connect service."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_e

    .line 270
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1b
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method public getDeviceRootKeyUID(I)Ljava/lang/String;
    .registers 7
    .param p1, "drkType"    # I

    .prologue
    const/4 v2, 0x0

    .line 226
    const-string v3, "DeviceRootKeyServiceManager"

    const-string v4, "getDeviceRootKeyUID() is called."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :try_start_8
    iget-object v3, p0, mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->getDeviceRootKeyUID(I)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_d} :catch_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_1b

    move-result-object v2

    .line 241
    :goto_e
    return-object v2

    .line 232
    :catch_f
    move-exception v1

    .line 234
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "DeviceRootKeyServiceManager"

    const-string v4, "Failed to connect service."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_e

    .line 238
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1b
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method public isAliveDeviceRootKeyService()Z
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    if-eqz v0, :cond_6

    .line 179
    const/4 v0, 0x1

    .line 181
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isExistDeviceRootKey(I)Z
    .registers 7
    .param p1, "drkType"    # I

    .prologue
    const/4 v2, 0x0

    .line 196
    const-string v3, "DeviceRootKeyServiceManager"

    const-string v4, "isExistDeviceRootKey() is called."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :try_start_8
    iget-object v3, p0, mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->isExistDeviceRootKey(I)Z
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_d} :catch_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_1b

    move-result v2

    .line 211
    :goto_e
    return v2

    .line 202
    :catch_f
    move-exception v1

    .line 204
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "DeviceRootKeyServiceManager"

    const-string v4, "Failed to connect service."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_e

    .line 208
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1b
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method public releaseServiceKeySession()I
    .registers 6

    .prologue
    const/16 v2, -0x2710

    .line 289
    const-string v3, "DeviceRootKeyServiceManager"

    const-string/jumbo v4, "releaseServiceKeySession() is called."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :try_start_a
    iget-object v3, p0, mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v3}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->releaseServiceKeySession()I
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_f} :catch_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_1d

    move-result v2

    .line 304
    :goto_10
    return v2

    .line 295
    :catch_11
    move-exception v1

    .line 297
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "DeviceRootKeyServiceManager"

    const-string v4, "Failed to connect service."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_10

    .line 301
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1d
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method

.method public setDeviceRootKey([B)I
    .registers 7
    .param p1, "keyBlob"    # [B

    .prologue
    const/16 v2, -0x2710

    .line 319
    const-string v3, "DeviceRootKeyServiceManager"

    const-string/jumbo v4, "setDeviceRootKey() is called."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :try_start_a
    iget-object v3, p0, mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->setDeviceRootKey([B)I
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_f} :catch_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_1d

    move-result v2

    .line 334
    :goto_10
    return v2

    .line 325
    :catch_11
    move-exception v1

    .line 327
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "DeviceRootKeyServiceManager"

    const-string v4, "Failed to connect service."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_10

    .line 331
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1d
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method
