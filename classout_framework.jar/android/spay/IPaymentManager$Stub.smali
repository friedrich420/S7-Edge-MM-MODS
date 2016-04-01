.class public abstract Landroid/spay/IPaymentManager$Stub;
.super Landroid/os/Binder;
.source "IPaymentManager.java"

# interfaces
.implements Landroid/spay/IPaymentManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/spay/IPaymentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/spay/IPaymentManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.spay.IPaymentManager"

.field static final TRANSACTION_getMeasurementFile:I = 0x2

.field static final TRANSACTION_installTA:I = 0x3

.field static final TRANSACTION_registerSPayFW:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.spay.IPaymentManager"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/spay/IPaymentManager;
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
    const-string v1, "android.spay.IPaymentManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/spay/IPaymentManager;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/spay/IPaymentManager;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/spay/IPaymentManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/spay/IPaymentManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 10
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_6c

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 43
    :sswitch_a
    const-string v2, "android.spay.IPaymentManager"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v4, "android.spay.IPaymentManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_33

    .line 51
    sget-object v4, Landroid/spay/PaymentTZServiceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/spay/PaymentTZServiceConfig;

    .line 56
    .local v0, "_arg0":Landroid/spay/PaymentTZServiceConfig;
    :goto_23
    invoke-virtual {p0, v0}, registerSPayFW(Landroid/spay/PaymentTZServiceConfig;)Landroid/spay/PaymentTZServiceCommnInfo;

    move-result-object v1

    .line 57
    .local v1, "_result":Landroid/spay/PaymentTZServiceCommnInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v1, :cond_35

    .line 59
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {v1, p3, v3}, Landroid/spay/PaymentTZServiceCommnInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 54
    .end local v0    # "_arg0":Landroid/spay/PaymentTZServiceConfig;
    .end local v1    # "_result":Landroid/spay/PaymentTZServiceCommnInfo;
    :cond_33
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/spay/PaymentTZServiceConfig;
    goto :goto_23

    .line 63
    .restart local v1    # "_result":Landroid/spay/PaymentTZServiceCommnInfo;
    :cond_35
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 69
    .end local v0    # "_arg0":Landroid/spay/PaymentTZServiceConfig;
    .end local v1    # "_result":Landroid/spay/PaymentTZServiceCommnInfo;
    :sswitch_39
    const-string v2, "android.spay.IPaymentManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, getMeasurementFile()[B

    move-result-object v1

    .line 71
    .local v1, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_9

    .line 77
    .end local v1    # "_result":[B
    :sswitch_49
    const-string v4, "android.spay.IPaymentManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6a

    .line 80
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 85
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_5c
    invoke-virtual {p0, v0}, installTA(Landroid/os/ParcelFileDescriptor;)Z

    move-result v1

    .line 86
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v1, :cond_66

    move v2, v3

    :cond_66
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 83
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_result":Z
    :cond_6a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_5c

    .line 39
    :sswitch_data_6c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_39
        0x3 -> :sswitch_49
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
