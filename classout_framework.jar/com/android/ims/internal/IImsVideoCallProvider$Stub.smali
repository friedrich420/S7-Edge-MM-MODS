.class public abstract Lcom/android/ims/internal/IImsVideoCallProvider$Stub;
.super Landroid/os/Binder;
.source "IImsVideoCallProvider.java"

# interfaces
.implements Lcom/android/ims/internal/IImsVideoCallProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsVideoCallProvider"

.field static final TRANSACTION_requestCallDataUsage:I = 0xa

.field static final TRANSACTION_requestCameraCapabilities:I = 0x9

.field static final TRANSACTION_sendSessionModifyRequest:I = 0x7

.field static final TRANSACTION_sendSessionModifyResponse:I = 0x8

.field static final TRANSACTION_setCallback:I = 0x1

.field static final TRANSACTION_setCamera:I = 0x2

.field static final TRANSACTION_setDeviceOrientation:I = 0x5

.field static final TRANSACTION_setDisplaySurface:I = 0x4

.field static final TRANSACTION_setPauseImage:I = 0xb

.field static final TRANSACTION_setPreviewSurface:I = 0x3

.field static final TRANSACTION_setZoom:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsVideoCallProvider;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 41
    if-nez p0, :cond_4

    .line 42
    const/4 v0, 0x0

    .line 48
    :goto_3
    return-object v0

    .line 44
    :cond_4
    const-string v1, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/ims/internal/IImsVideoCallProvider;

    if-eqz v1, :cond_13

    .line 46
    check-cast v0, Lcom/android/ims/internal/IImsVideoCallProvider;

    goto :goto_3

    .line 48
    :cond_13
    new-instance v0, Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 52
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
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
    const/4 v2, 0x1

    .line 56
    sparse-switch p1, :sswitch_data_ec

    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 60
    :sswitch_9
    const-string v3, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 65
    :sswitch_f
    const-string v3, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsVideoCallCallback;

    move-result-object v0

    .line 68
    .local v0, "_arg0":Lcom/android/ims/internal/IImsVideoCallCallback;
    invoke-virtual {p0, v0}, setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V

    goto :goto_8

    .line 73
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsVideoCallCallback;
    :sswitch_20
    const-string v3, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, setCamera(Ljava/lang/String;)V

    goto :goto_8

    .line 81
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_2d
    const-string v3, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_44

    .line 84
    sget-object v3, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 89
    .local v0, "_arg0":Landroid/view/Surface;
    :goto_40
    invoke-virtual {p0, v0}, setPreviewSurface(Landroid/view/Surface;)V

    goto :goto_8

    .line 87
    .end local v0    # "_arg0":Landroid/view/Surface;
    :cond_44
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/Surface;
    goto :goto_40

    .line 94
    .end local v0    # "_arg0":Landroid/view/Surface;
    :sswitch_46
    const-string v3, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5d

    .line 97
    sget-object v3, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 102
    .restart local v0    # "_arg0":Landroid/view/Surface;
    :goto_59
    invoke-virtual {p0, v0}, setDisplaySurface(Landroid/view/Surface;)V

    goto :goto_8

    .line 100
    .end local v0    # "_arg0":Landroid/view/Surface;
    :cond_5d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/Surface;
    goto :goto_59

    .line 107
    .end local v0    # "_arg0":Landroid/view/Surface;
    :sswitch_5f
    const-string v3, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 110
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, setDeviceOrientation(I)V

    goto :goto_8

    .line 115
    .end local v0    # "_arg0":I
    :sswitch_6c
    const-string v3, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 118
    .local v0, "_arg0":F
    invoke-virtual {p0, v0}, setZoom(F)V

    goto :goto_8

    .line 123
    .end local v0    # "_arg0":F
    :sswitch_79
    const-string v3, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9f

    .line 126
    sget-object v3, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/VideoProfile;

    .line 132
    .local v0, "_arg0":Landroid/telecom/VideoProfile;
    :goto_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a1

    .line 133
    sget-object v3, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/VideoProfile;

    .line 138
    .local v1, "_arg1":Landroid/telecom/VideoProfile;
    :goto_9a
    invoke-virtual {p0, v0, v1}, sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto/16 :goto_8

    .line 129
    .end local v0    # "_arg0":Landroid/telecom/VideoProfile;
    .end local v1    # "_arg1":Landroid/telecom/VideoProfile;
    :cond_9f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/VideoProfile;
    goto :goto_8c

    .line 136
    :cond_a1
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/telecom/VideoProfile;
    goto :goto_9a

    .line 143
    .end local v0    # "_arg0":Landroid/telecom/VideoProfile;
    .end local v1    # "_arg1":Landroid/telecom/VideoProfile;
    :sswitch_a3
    const-string v3, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_bb

    .line 146
    sget-object v3, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/VideoProfile;

    .line 151
    .restart local v0    # "_arg0":Landroid/telecom/VideoProfile;
    :goto_b6
    invoke-virtual {p0, v0}, sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    goto/16 :goto_8

    .line 149
    .end local v0    # "_arg0":Landroid/telecom/VideoProfile;
    :cond_bb
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/VideoProfile;
    goto :goto_b6

    .line 156
    .end local v0    # "_arg0":Landroid/telecom/VideoProfile;
    :sswitch_bd
    const-string v3, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, requestCameraCapabilities()V

    goto/16 :goto_8

    .line 162
    :sswitch_c7
    const-string v3, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, requestCallDataUsage()V

    goto/16 :goto_8

    .line 168
    :sswitch_d1
    const-string v3, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e9

    .line 171
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 176
    .local v0, "_arg0":Landroid/net/Uri;
    :goto_e4
    invoke-virtual {p0, v0}, setPauseImage(Landroid/net/Uri;)V

    goto/16 :goto_8

    .line 174
    .end local v0    # "_arg0":Landroid/net/Uri;
    :cond_e9
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_e4

    .line 56
    nop

    :sswitch_data_ec
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_20
        0x3 -> :sswitch_2d
        0x4 -> :sswitch_46
        0x5 -> :sswitch_5f
        0x6 -> :sswitch_6c
        0x7 -> :sswitch_79
        0x8 -> :sswitch_a3
        0x9 -> :sswitch_bd
        0xa -> :sswitch_c7
        0xb -> :sswitch_d1
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
