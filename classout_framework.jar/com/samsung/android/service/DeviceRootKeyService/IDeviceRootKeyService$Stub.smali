.class public abstract Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub;
.super Landroid/os/Binder;
.source "IDeviceRootKeyService.java"

# interfaces
.implements Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.service.DeviceRootKeyService.IDeviceRootKeyService"

.field static final TRANSACTION_createServiceKeySession:I = 0x3

.field static final TRANSACTION_getDeviceRootKeyUID:I = 0x2

.field static final TRANSACTION_isExistDeviceRootKey:I = 0x1

.field static final TRANSACTION_releaseServiceKeySession:I = 0x4

.field static final TRANSACTION_setDeviceRootKey:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.samsung.android.service.DeviceRootKeyService.IDeviceRootKeyService"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_3
    return-object v0

    .line 30
    :cond_4
    const-string v1, "com.samsung.android.service.DeviceRootKeyService.IDeviceRootKeyService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
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
    const/4 v5, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_88

    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_8
    return v5

    .line 46
    :sswitch_9
    const-string v4, "com.samsung.android.service.DeviceRootKeyService.IDeviceRootKeyService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 51
    :sswitch_f
    const-string v4, "com.samsung.android.service.DeviceRootKeyService.IDeviceRootKeyService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, isExistDeviceRootKey(I)Z

    move-result v3

    .line 55
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v3, :cond_26

    move v4, v5

    :goto_22
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_26
    const/4 v4, 0x0

    goto :goto_22

    .line 61
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_28
    const-string v4, "com.samsung.android.service.DeviceRootKeyService.IDeviceRootKeyService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, getDeviceRootKeyUID(I)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 71
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_3c
    const-string v4, "com.samsung.android.service.DeviceRootKeyService.IDeviceRootKeyService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 77
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_62

    .line 78
    sget-object v4, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    .line 83
    .local v2, "_arg2":Lcom/samsung/android/service/DeviceRootKeyService/Tlv;
    :goto_57
    invoke-virtual {p0, v0, v1, v2}, createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v3

    .line 84
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_8

    .line 81
    .end local v2    # "_arg2":Lcom/samsung/android/service/DeviceRootKeyService/Tlv;
    .end local v3    # "_result":[B
    :cond_62
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/samsung/android/service/DeviceRootKeyService/Tlv;
    goto :goto_57

    .line 90
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/samsung/android/service/DeviceRootKeyService/Tlv;
    :sswitch_64
    const-string v4, "com.samsung.android.service.DeviceRootKeyService.IDeviceRootKeyService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, releaseServiceKeySession()I

    move-result v3

    .line 92
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 98
    .end local v3    # "_result":I
    :sswitch_74
    const-string v4, "com.samsung.android.service.DeviceRootKeyService.IDeviceRootKeyService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 101
    .local v0, "_arg0":[B
    invoke-virtual {p0, v0}, setDeviceRootKey([B)I

    move-result v3

    .line 102
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 42
    :sswitch_data_88
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_28
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_64
        0x5 -> :sswitch_74
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
