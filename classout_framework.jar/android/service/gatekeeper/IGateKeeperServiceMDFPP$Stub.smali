.class public abstract Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub;
.super Landroid/os/Binder;
.source "IGateKeeperServiceMDFPP.java"

# interfaces
.implements Landroid/service/gatekeeper/IGateKeeperService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/gatekeeper/IGateKeeperServiceMDFPP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.gatekeeper.IGateKeeperService"

.field static final TRANSACTION_clearSecureUserId:I = 0x5

.field static final TRANSACTION_dummy:I = 0x65

.field static final TRANSACTION_enroll:I = 0x1

.field static final TRANSACTION_getSecureUserId:I = 0x4

.field static final TRANSACTION_verify:I = 0x2

.field static final TRANSACTION_verifyChallenge:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 46
    if-nez p0, :cond_4

    .line 47
    const/4 v0, 0x0

    .line 53
    :goto_3
    return-object v0

    .line 49
    :cond_4
    const-string v1, "android.service.gatekeeper.IGateKeeperService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/gatekeeper/IGateKeeperService;

    if-eqz v1, :cond_13

    .line 51
    check-cast v0, Landroid/service/gatekeeper/IGateKeeperService;

    goto :goto_3

    .line 53
    :cond_13
    new-instance v0, Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 59
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

    .line 66
    sparse-switch p1, :sswitch_data_b4

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    .line 68
    :sswitch_a
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    .line 69
    goto :goto_9

    .line 72
    :sswitch_11
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 76
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 78
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 80
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 81
    .local v5, "_arg3":[B
    invoke-virtual {p0, v1, v2, v4, v5}, enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v6

    .line 83
    .local v6, "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v6, :cond_37

    .line 85
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    invoke-virtual {v6, p3, v8}, Landroid/service/gatekeeper/GateKeeperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_35
    move v0, v8

    .line 91
    goto :goto_9

    .line 89
    :cond_37
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_35

    .line 94
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v4    # "_arg2":[B
    .end local v5    # "_arg3":[B
    .end local v6    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    :sswitch_3b
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 98
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 100
    .restart local v2    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 101
    .restart local v4    # "_arg2":[B
    invoke-virtual {p0, v1, v2, v4}, verify(I[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v6

    .line 103
    .restart local v6    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v6, :cond_5d

    .line 105
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {v6, p3, v8}, Landroid/service/gatekeeper/GateKeeperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5b
    move v0, v8

    .line 111
    goto :goto_9

    .line 109
    :cond_5d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5b

    .line 114
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v4    # "_arg2":[B
    .end local v6    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    :sswitch_61
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 118
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 120
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 122
    .restart local v4    # "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5    # "_arg3":[B
    move-object v0, p0

    .line 123
    invoke-virtual/range {v0 .. v5}, verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v6

    .line 125
    .restart local v6    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v6, :cond_88

    .line 127
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    invoke-virtual {v6, p3, v8}, Landroid/service/gatekeeper/GateKeeperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_86
    move v0, v8

    .line 133
    goto :goto_9

    .line 131
    :cond_88
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_86

    .line 136
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":[B
    .end local v5    # "_arg3":[B
    .end local v6    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    :sswitch_8c
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 139
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, getSecureUserId(I)J

    move-result-wide v6

    .line 140
    .local v6, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    move v0, v8

    .line 142
    goto/16 :goto_9

    .line 145
    .end local v1    # "_arg0":I
    .end local v6    # "_result":J
    :sswitch_a2
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 148
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, clearSecureUserId(I)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 150
    goto/16 :goto_9

    .line 66
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
