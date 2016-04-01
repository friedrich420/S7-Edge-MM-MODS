.class public abstract Landroid/spay/ITAController$Stub;
.super Landroid/os/Binder;
.source "ITAController.java"

# interfaces
.implements Landroid/spay/ITAController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/spay/ITAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/spay/ITAController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.spay.ITAController"

.field static final TRANSACTION_clearDeviceCertificates:I = 0x8

.field static final TRANSACTION_copyMctoRst:I = 0x7

.field static final TRANSACTION_getCertInfo:I = 0x4

.field static final TRANSACTION_loadTA:I = 0x1

.field static final TRANSACTION_makeSystemCall:I = 0x6

.field static final TRANSACTION_processTACommand:I = 0x3

.field static final TRANSACTION_setCertInfo:I = 0x5

.field static final TRANSACTION_unloadTA:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.spay.ITAController"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/spay/ITAController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_3
    return-object v0

    .line 27
    :cond_4
    const-string v1, "android.spay.ITAController"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/spay/ITAController;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/spay/ITAController;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/spay/ITAController$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/spay/ITAController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
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
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_f2

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 43
    :sswitch_a
    const-string v0, "android.spay.ITAController"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v0, "android.spay.ITAController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3a

    .line 51
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 57
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 59
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, "_arg2":J
    move-object v0, p0

    .line 60
    invoke-virtual/range {v0 .. v5}, loadTA(Landroid/os/ParcelFileDescriptor;JJ)Z

    move-result v6

    .line 61
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v6, :cond_3c

    move v0, v7

    :goto_36
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 54
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":J
    .end local v6    # "_result":Z
    :cond_3a
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_23

    .restart local v2    # "_arg1":J
    .restart local v4    # "_arg2":J
    .restart local v6    # "_result":Z
    :cond_3c
    move v0, v8

    .line 62
    goto :goto_36

    .line 67
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":J
    .end local v6    # "_result":Z
    :sswitch_3e
    const-string v0, "android.spay.ITAController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, unloadTA()V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 74
    :sswitch_4a
    const-string v0, "android.spay.ITAController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6d

    .line 77
    sget-object v0, Landroid/spay/TACommandRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/spay/TACommandRequest;

    .line 82
    .local v1, "_arg0":Landroid/spay/TACommandRequest;
    :goto_5d
    invoke-virtual {p0, v1}, processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;

    move-result-object v6

    .line 83
    .local v6, "_result":Landroid/spay/TACommandResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v6, :cond_6f

    .line 85
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    invoke-virtual {v6, p3, v7}, Landroid/spay/TACommandResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 80
    .end local v1    # "_arg0":Landroid/spay/TACommandRequest;
    .end local v6    # "_result":Landroid/spay/TACommandResponse;
    :cond_6d
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/spay/TACommandRequest;
    goto :goto_5d

    .line 89
    .restart local v6    # "_result":Landroid/spay/TACommandResponse;
    :cond_6f
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 95
    .end local v1    # "_arg0":Landroid/spay/TACommandRequest;
    .end local v6    # "_result":Landroid/spay/TACommandResponse;
    :sswitch_73
    const-string v0, "android.spay.ITAController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, getCertInfo()Landroid/spay/CertInfo;

    move-result-object v6

    .line 97
    .local v6, "_result":Landroid/spay/CertInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v6, :cond_88

    .line 99
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    invoke-virtual {v6, p3, v7}, Landroid/spay/CertInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 103
    :cond_88
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 109
    .end local v6    # "_result":Landroid/spay/CertInfo;
    :sswitch_8d
    const-string v0, "android.spay.ITAController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_af

    .line 112
    sget-object v0, Landroid/spay/CertInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/spay/CertInfo;

    .line 117
    .local v1, "_arg0":Landroid/spay/CertInfo;
    :goto_a0
    invoke-virtual {p0, v1}, setCertInfo(Landroid/spay/CertInfo;)Z

    move-result v6

    .line 118
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v6, :cond_aa

    move v8, v7

    :cond_aa
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 115
    .end local v1    # "_arg0":Landroid/spay/CertInfo;
    .end local v6    # "_result":Z
    :cond_af
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/spay/CertInfo;
    goto :goto_a0

    .line 124
    .end local v1    # "_arg0":Landroid/spay/CertInfo;
    :sswitch_b1
    const-string v0, "android.spay.ITAController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 127
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, makeSystemCall(I)Z

    move-result v6

    .line 128
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v6, :cond_c4

    move v8, v7

    :cond_c4
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 134
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_c9
    const-string v0, "android.spay.ITAController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, copyMctoRst()Z

    move-result v6

    .line 136
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v6, :cond_d8

    move v8, v7

    :cond_d8
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 142
    .end local v6    # "_result":Z
    :sswitch_dd
    const-string v0, "android.spay.ITAController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, clearDeviceCertificates()Z

    move-result v6

    .line 144
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v6, :cond_ec

    move v8, v7

    :cond_ec
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 39
    nop

    :sswitch_data_f2
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_3e
        0x3 -> :sswitch_4a
        0x4 -> :sswitch_73
        0x5 -> :sswitch_8d
        0x6 -> :sswitch_b1
        0x7 -> :sswitch_c9
        0x8 -> :sswitch_dd
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
