.class public abstract Lcom/android/internal/telecom/IInCallService$Stub;
.super Landroid/os/Binder;
.source "IInCallService.java"

# interfaces
.implements Lcom/android/internal/telecom/IInCallService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IInCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IInCallService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IInCallService"

.field static final TRANSACTION_addCall:I = 0x2

.field static final TRANSACTION_bringToForeground:I = 0x8

.field static final TRANSACTION_onCallAudioStateChanged:I = 0x6

.field static final TRANSACTION_onCanAddCallChanged:I = 0x9

.field static final TRANSACTION_onChangeInContent:I = 0x7

.field static final TRANSACTION_setInCallAdapter:I = 0x1

.field static final TRANSACTION_setPostDial:I = 0x4

.field static final TRANSACTION_setPostDialWait:I = 0x5

.field static final TRANSACTION_updateCall:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 30
    if-nez p0, :cond_4

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_3
    return-object v0

    .line 33
    :cond_4
    const-string v1, "com.android.internal.telecom.IInCallService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telecom/IInCallService;

    if-eqz v1, :cond_13

    .line 35
    check-cast v0, Lcom/android/internal/telecom/IInCallService;

    goto :goto_3

    .line 37
    :cond_13
    new-instance v0, Lcom/android/internal/telecom/IInCallService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telecom/IInCallService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 41
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
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_c0

    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_9
    return v2

    .line 49
    :sswitch_a
    const-string v3, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 54
    :sswitch_10
    const-string v3, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallAdapter;

    move-result-object v0

    .line 57
    .local v0, "_arg0":Lcom/android/internal/telecom/IInCallAdapter;
    invoke-virtual {p0, v0}, setInCallAdapter(Lcom/android/internal/telecom/IInCallAdapter;)V

    goto :goto_9

    .line 62
    .end local v0    # "_arg0":Lcom/android/internal/telecom/IInCallAdapter;
    :sswitch_21
    const-string v3, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_38

    .line 65
    sget-object v3, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/ParcelableCall;

    .line 70
    .local v0, "_arg0":Landroid/telecom/ParcelableCall;
    :goto_34
    invoke-virtual {p0, v0}, addCall(Landroid/telecom/ParcelableCall;)V

    goto :goto_9

    .line 68
    .end local v0    # "_arg0":Landroid/telecom/ParcelableCall;
    :cond_38
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/ParcelableCall;
    goto :goto_34

    .line 75
    .end local v0    # "_arg0":Landroid/telecom/ParcelableCall;
    :sswitch_3a
    const-string v3, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_51

    .line 78
    sget-object v3, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/ParcelableCall;

    .line 83
    .restart local v0    # "_arg0":Landroid/telecom/ParcelableCall;
    :goto_4d
    invoke-virtual {p0, v0}, updateCall(Landroid/telecom/ParcelableCall;)V

    goto :goto_9

    .line 81
    .end local v0    # "_arg0":Landroid/telecom/ParcelableCall;
    :cond_51
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/ParcelableCall;
    goto :goto_4d

    .line 88
    .end local v0    # "_arg0":Landroid/telecom/ParcelableCall;
    :sswitch_53
    const-string v3, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, setPostDial(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 98
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_64
    const-string v3, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, setPostDialWait(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 108
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_75
    const-string v3, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8d

    .line 111
    sget-object v3, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/CallAudioState;

    .line 116
    .local v0, "_arg0":Landroid/telecom/CallAudioState;
    :goto_88
    invoke-virtual {p0, v0}, onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    goto/16 :goto_9

    .line 114
    .end local v0    # "_arg0":Landroid/telecom/CallAudioState;
    :cond_8d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/CallAudioState;
    goto :goto_88

    .line 121
    .end local v0    # "_arg0":Landroid/telecom/CallAudioState;
    :sswitch_8f
    const-string v3, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, onChangeInContent(I)V

    goto/16 :goto_9

    .line 129
    .end local v0    # "_arg0":I
    :sswitch_9d
    const-string v3, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a9

    move v0, v2

    .line 132
    .local v0, "_arg0":Z
    :cond_a9
    invoke-virtual {p0, v0}, bringToForeground(Z)V

    goto/16 :goto_9

    .line 137
    .end local v0    # "_arg0":Z
    :sswitch_ae
    const-string v3, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_ba

    move v0, v2

    .line 140
    .restart local v0    # "_arg0":Z
    :cond_ba
    invoke-virtual {p0, v0}, onCanAddCallChanged(Z)V

    goto/16 :goto_9

    .line 45
    nop

    :sswitch_data_c0
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_21
        0x3 -> :sswitch_3a
        0x4 -> :sswitch_53
        0x5 -> :sswitch_64
        0x6 -> :sswitch_75
        0x7 -> :sswitch_8f
        0x8 -> :sswitch_9d
        0x9 -> :sswitch_ae
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
