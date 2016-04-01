.class Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGateKeeperServiceMDFPP.java"

# interfaces
.implements Landroid/service/gatekeeper/IGateKeeperService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, mRemote:Landroid/os/IBinder;

    .line 162
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public clearSecureUserId(I)V
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 349
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 351
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget-object v2, p0, mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 355
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_21

    .line 357
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 360
    return-void

    .line 357
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;
    .registers 11
    .param p1, "uid"    # I
    .param p2, "currentPasswordHandle"    # [B
    .param p3, "currentPassword"    # [B
    .param p4, "desiredPassword"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 196
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 199
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 202
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 203
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 204
    iget-object v3, p0, mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 206
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_38

    .line 207
    sget-object v3, Landroid/service/gatekeeper/GateKeeperResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/gatekeeper/GateKeeperResponse;
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_3a

    .line 213
    .local v2, "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    :goto_31
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 216
    return-object v2

    .line 210
    .end local v2    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_38
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    goto :goto_31

    .line 213
    .end local v2    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    :catchall_3a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    return-object v0
.end method

.method public getSecureUserId(I)J
    .registers 9
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 322
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 325
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    iget-object v4, p0, mRemote:Landroid/os/IBinder;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 329
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 330
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_25

    move-result-wide v2

    .line 332
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 335
    return-wide v2

    .line 332
    .end local v2    # "_result":J
    :catchall_25
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public verify(I[B[B)Landroid/service/gatekeeper/GateKeeperResponse;
    .registers 12
    .param p1, "uid"    # I
    .param p2, "enrolledPasswordHandle"    # [B
    .param p3, "providedPassword"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 236
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 238
    .local v2, "_reply":Landroid/os/Parcel;
    const/4 v1, 0x0

    .line 239
    .local v1, "_pos":I
    if-nez p3, :cond_4e

    .line 241
    .local v4, "length":I
    :goto_c
    :try_start_c
    const-string v5, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 244
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 245
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 246
    iget-object v5, p0, mRemote:Landroid/os/IBinder;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-interface {v5, v6, v0, v2, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 247
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 248
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_50

    .line 249
    sget-object v5, Landroid/service/gatekeeper/GateKeeperResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/gatekeeper/GateKeeperResponse;
    :try_end_36
    .catchall {:try_start_c .. :try_end_36} :catchall_52

    .line 255
    .local v3, "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    :goto_36
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 256
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 257
    new-array v5, v4, [B

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 260
    iget-object v5, p0, mRemote:Landroid/os/IBinder;

    const-string v6, "android.service.gatekeeper.IGateKeeperService"

    const/16 v7, 0x65

    invoke-static {v5, v6, v7, v4}, Lcom/samsung/android/security/MemoryWipeUtils;->clear(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 262
    return-object v3

    .line 239
    .end local v3    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v4    # "length":I
    :cond_4e
    array-length v4, p3

    goto :goto_c

    .line 252
    .restart local v4    # "length":I
    :cond_50
    const/4 v3, 0x0

    .restart local v3    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    goto :goto_36

    .line 255
    .end local v3    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    :catchall_52
    move-exception v5

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 256
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 257
    new-array v6, v4, [B

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;
    .registers 12
    .param p1, "uid"    # I
    .param p2, "challenge"    # J
    .param p4, "enrolledPasswordHandle"    # [B
    .param p5, "providedPassword"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 287
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 290
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 293
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 294
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 295
    iget-object v3, p0, mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 298
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_38

    .line 299
    sget-object v3, Landroid/service/gatekeeper/GateKeeperResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/gatekeeper/GateKeeperResponse;
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_3a

    .line 305
    .local v2, "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    :goto_31
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 308
    return-object v2

    .line 302
    .end local v2    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_38
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    goto :goto_31

    .line 305
    .end local v2    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    :catchall_3a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
