.class Lcom/ipsec/client/IIPsecService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIPsecService.java"

# interfaces
.implements Lcom/ipsec/client/IIPsecService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipsec/client/IIPsecService$Stub;
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
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p1, p0, mRemote:Landroid/os/IBinder;

    .line 303
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public checkConnection(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8
    .param p1, "connection"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 605
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 606
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 609
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 610
    if-eqz p1, :cond_37

    .line 611
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 617
    :goto_17
    iget-object v3, p0, mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 618
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 619
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_44

    .line 620
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_3c

    .line 627
    .local v2, "_result":Landroid/os/Bundle;
    :goto_30
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 630
    return-object v2

    .line 615
    .end local v2    # "_result":Landroid/os/Bundle;
    :cond_37
    const/4 v3, 0x0

    :try_start_38
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_17

    .line 627
    :catchall_3c
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 623
    :cond_44
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/os/Bundle;
    goto :goto_30
.end method

.method public clearLog(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8
    .param p1, "paramBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 413
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 414
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 417
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 418
    if-eqz p1, :cond_36

    .line 419
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 425
    :goto_17
    iget-object v3, p0, mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 426
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 427
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_43

    .line 428
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_3b

    .line 435
    .local v2, "_result":Landroid/os/Bundle;
    :goto_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 438
    return-object v2

    .line 423
    .end local v2    # "_result":Landroid/os/Bundle;
    :cond_36
    const/4 v3, 0x0

    :try_start_37
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_17

    .line 435
    :catchall_3b
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 431
    :cond_43
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/os/Bundle;
    goto :goto_2f
.end method

.method public connect(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8
    .param p1, "connection"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 446
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 449
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 450
    if-eqz p1, :cond_36

    .line 451
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 457
    :goto_17
    iget-object v3, p0, mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 458
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 459
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_43

    .line 460
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_3b

    .line 467
    .local v2, "_result":Landroid/os/Bundle;
    :goto_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 470
    return-object v2

    .line 455
    .end local v2    # "_result":Landroid/os/Bundle;
    :cond_36
    const/4 v3, 0x0

    :try_start_37
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_17

    .line 467
    :catchall_3b
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 463
    :cond_43
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/os/Bundle;
    goto :goto_2f
.end method

.method public connectionQuery(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8
    .param p1, "connection"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 542
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 545
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 546
    if-eqz p1, :cond_37

    .line 547
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 553
    :goto_17
    iget-object v3, p0, mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 554
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 555
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_44

    .line 556
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_3c

    .line 563
    .local v2, "_result":Landroid/os/Bundle;
    :goto_30
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 566
    return-object v2

    .line 551
    .end local v2    # "_result":Landroid/os/Bundle;
    :cond_37
    const/4 v3, 0x0

    :try_start_38
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_17

    .line 563
    :catchall_3c
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 559
    :cond_44
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/os/Bundle;
    goto :goto_30
.end method

.method public connectionState(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8
    .param p1, "connection"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 573
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 574
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 577
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 578
    if-eqz p1, :cond_37

    .line 579
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 585
    :goto_17
    iget-object v3, p0, mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 586
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 587
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_44

    .line 588
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_3c

    .line 595
    .local v2, "_result":Landroid/os/Bundle;
    :goto_30
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 598
    return-object v2

    .line 583
    .end local v2    # "_result":Landroid/os/Bundle;
    :cond_37
    const/4 v3, 0x0

    :try_start_38
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_17

    .line 595
    :catchall_3c
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 591
    :cond_44
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/os/Bundle;
    goto :goto_30
.end method

.method public disconnect(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8
    .param p1, "connection"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 477
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 478
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 481
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 482
    if-eqz p1, :cond_36

    .line 483
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 489
    :goto_17
    iget-object v3, p0, mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 490
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 491
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_43

    .line 492
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_3b

    .line 499
    .local v2, "_result":Landroid/os/Bundle;
    :goto_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 502
    return-object v2

    .line 487
    .end local v2    # "_result":Landroid/os/Bundle;
    :cond_36
    const/4 v3, 0x0

    :try_start_37
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_17

    .line 499
    :catchall_3b
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 495
    :cond_43
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/os/Bundle;
    goto :goto_2f
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 310
    const-string v0, "com.ipsec.client.IIPsecService"

    return-object v0
.end method

.method public getLog(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8
    .param p1, "paramBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 382
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 385
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 386
    if-eqz p1, :cond_36

    .line 387
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 393
    :goto_17
    iget-object v3, p0, mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 394
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 395
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_43

    .line 396
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_3b

    .line 403
    .local v2, "_result":Landroid/os/Bundle;
    :goto_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 406
    return-object v2

    .line 391
    .end local v2    # "_result":Landroid/os/Bundle;
    :cond_36
    const/4 v3, 0x0

    :try_start_37
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_17

    .line 403
    :catchall_3b
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 399
    :cond_43
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/os/Bundle;
    goto :goto_2f
.end method

.method public isConnected(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8
    .param p1, "connection"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 510
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 513
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 514
    if-eqz p1, :cond_36

    .line 515
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 521
    :goto_17
    iget-object v3, p0, mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 522
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 523
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_43

    .line 524
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_3b

    .line 531
    .local v2, "_result":Landroid/os/Bundle;
    :goto_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 534
    return-object v2

    .line 519
    .end local v2    # "_result":Landroid/os/Bundle;
    :cond_36
    const/4 v3, 0x0

    :try_start_37
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_17

    .line 531
    :catchall_3b
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 527
    :cond_43
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/os/Bundle;
    goto :goto_2f
.end method

.method public registerCallback(Lcom/ipsec/client/IIPsecServiceCallback;)V
    .registers 7
    .param p1, "cb"    # Lcom/ipsec/client/IIPsecServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 669
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 670
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 672
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.ipsec.client.IIPsecService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 673
    if-eqz p1, :cond_28

    invoke-interface {p1}, Lcom/ipsec/client/IIPsecServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 674
    iget-object v2, p0, mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 675
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2a

    .line 678
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 681
    return-void

    .line 673
    :cond_28
    const/4 v2, 0x0

    goto :goto_13

    .line 678
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setQueryData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8
    .param p1, "paramBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 637
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 638
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 641
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 642
    if-eqz p1, :cond_37

    .line 643
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 649
    :goto_17
    iget-object v3, p0, mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 650
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 651
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_44

    .line 652
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_3c

    .line 659
    .local v2, "_result":Landroid/os/Bundle;
    :goto_30
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 662
    return-object v2

    .line 647
    .end local v2    # "_result":Landroid/os/Bundle;
    :cond_37
    const/4 v3, 0x0

    :try_start_38
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_17

    .line 659
    :catchall_3c
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 655
    :cond_44
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/os/Bundle;
    goto :goto_30
.end method

.method public startService(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8
    .param p1, "startParams"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 318
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 321
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 322
    if-eqz p1, :cond_36

    .line 323
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 329
    :goto_17
    iget-object v3, p0, mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 330
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 331
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_43

    .line 332
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_3b

    .line 339
    .local v2, "_result":Landroid/os/Bundle;
    :goto_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 342
    return-object v2

    .line 327
    .end local v2    # "_result":Landroid/os/Bundle;
    :cond_36
    const/4 v3, 0x0

    :try_start_37
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_17

    .line 339
    :catchall_3b
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 335
    :cond_43
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/os/Bundle;
    goto :goto_2f
.end method

.method public stopService(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8
    .param p1, "stopParams"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 349
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 350
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 353
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 354
    if-eqz p1, :cond_36

    .line 355
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 361
    :goto_17
    iget-object v3, p0, mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 362
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 363
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_43

    .line 364
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_3b

    .line 371
    .local v2, "_result":Landroid/os/Bundle;
    :goto_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 374
    return-object v2

    .line 359
    .end local v2    # "_result":Landroid/os/Bundle;
    :cond_36
    const/4 v3, 0x0

    :try_start_37
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_17

    .line 371
    :catchall_3b
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 367
    :cond_43
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/os/Bundle;
    goto :goto_2f
.end method

.method public unregisterCallback(Lcom/ipsec/client/IIPsecServiceCallback;)V
    .registers 7
    .param p1, "cb"    # Lcom/ipsec/client/IIPsecServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 687
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 688
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 690
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.ipsec.client.IIPsecService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 691
    if-eqz p1, :cond_28

    invoke-interface {p1}, Lcom/ipsec/client/IIPsecServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 692
    iget-object v2, p0, mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 693
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2a

    .line 696
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 699
    return-void

    .line 691
    :cond_28
    const/4 v2, 0x0

    goto :goto_13

    .line 696
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
