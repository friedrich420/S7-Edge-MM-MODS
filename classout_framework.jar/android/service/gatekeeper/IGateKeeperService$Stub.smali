.class public abstract Landroid/service/gatekeeper/IGateKeeperService$Stub;
.super Landroid/os/Binder;
.source "IGateKeeperService.java"

# interfaces
.implements Landroid/service/gatekeeper/IGateKeeperService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/gatekeeper/IGateKeeperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/gatekeeper/IGateKeeperService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.gatekeeper.IGateKeeperService"

.field static final TRANSACTION_clearSecureUserId:I = 0x5

.field static final TRANSACTION_enroll:I = 0x1

.field static final TRANSACTION_getSecureUserId:I = 0x4

.field static final TRANSACTION_verify:I = 0x2

.field static final TRANSACTION_verifyChallenge:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 32
    if-nez p0, :cond_4

    .line 33
    const/4 v0, 0x0

    .line 39
    :goto_3
    return-object v0

    .line 35
    :cond_4
    const-string v1, "android.service.gatekeeper.IGateKeeperService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/gatekeeper/IGateKeeperService;

    if-eqz v1, :cond_13

    .line 37
    check-cast v0, Landroid/service/gatekeeper/IGateKeeperService;

    goto :goto_3

    .line 39
    :cond_13
    new-instance v0, Landroid/service/gatekeeper/IGateKeeperService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/service/gatekeeper/IGateKeeperService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 43
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 47
    sparse-switch p1, :sswitch_data_b4

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    .line 51
    :sswitch_a
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    .line 52
    goto :goto_9

    .line 56
    :sswitch_11
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 60
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 62
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 64
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 65
    .local v5, "_arg3":[B
    invoke-virtual {p0, v1, v2, v4, v5}, enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v6

    .line 66
    .local v6, "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v6, :cond_37

    .line 68
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    invoke-virtual {v6, p3, v8}, Landroid/service/gatekeeper/GateKeeperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_35
    move v0, v8

    .line 74
    goto :goto_9

    .line 72
    :cond_37
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_35

    .line 78
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v4    # "_arg2":[B
    .end local v5    # "_arg3":[B
    .end local v6    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    :sswitch_3b
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 82
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 84
    .restart local v2    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 85
    .restart local v4    # "_arg2":[B
    invoke-virtual {p0, v1, v2, v4}, verify(I[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v6

    .line 86
    .restart local v6    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v6, :cond_5d

    .line 88
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {v6, p3, v8}, Landroid/service/gatekeeper/GateKeeperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5b
    move v0, v8

    .line 94
    goto :goto_9

    .line 92
    :cond_5d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5b

    .line 98
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v4    # "_arg2":[B
    .end local v6    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    :sswitch_61
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 102
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 104
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 106
    .restart local v4    # "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5    # "_arg3":[B
    move-object v0, p0

    .line 107
    invoke-virtual/range {v0 .. v5}, verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v6

    .line 108
    .restart local v6    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v6, :cond_88

    .line 110
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {v6, p3, v8}, Landroid/service/gatekeeper/GateKeeperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_86
    move v0, v8

    .line 116
    goto :goto_9

    .line 114
    :cond_88
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_86

    .line 120
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":[B
    .end local v5    # "_arg3":[B
    .end local v6    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    :sswitch_8c
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 123
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, getSecureUserId(I)J

    move-result-wide v6

    .line 124
    .local v6, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    move v0, v8

    .line 126
    goto/16 :goto_9

    .line 130
    .end local v1    # "_arg0":I
    .end local v6    # "_result":J
    :sswitch_a2
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 133
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, clearSecureUserId(I)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 135
    goto/16 :goto_9

    .line 47
    :sswitch_data_b4
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_3b
        0x3 -> :sswitch_61
        0x4 -> :sswitch_8c
        0x5 -> :sswitch_a2
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
