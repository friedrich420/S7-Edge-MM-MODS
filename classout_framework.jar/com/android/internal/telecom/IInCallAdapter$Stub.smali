.class public abstract Lcom/android/internal/telecom/IInCallAdapter$Stub;
.super Landroid/os/Binder;
.source "IInCallAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/IInCallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IInCallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IInCallAdapter"

.field static final TRANSACTION_answerCall:I = 0x1

.field static final TRANSACTION_conference:I = 0xd

.field static final TRANSACTION_disconnectCall:I = 0x3

.field static final TRANSACTION_holdCall:I = 0x4

.field static final TRANSACTION_mergeConference:I = 0xf

.field static final TRANSACTION_mute:I = 0x6

.field static final TRANSACTION_phoneAccountSelected:I = 0xc

.field static final TRANSACTION_playDtmfTone:I = 0x9

.field static final TRANSACTION_postDialContinue:I = 0xb

.field static final TRANSACTION_rejectCall:I = 0x2

.field static final TRANSACTION_requestRcsObserver:I = 0x7

.field static final TRANSACTION_setAudioRoute:I = 0x8

.field static final TRANSACTION_splitFromConference:I = 0xe

.field static final TRANSACTION_stopDtmfTone:I = 0xa

.field static final TRANSACTION_swapConference:I = 0x10

.field static final TRANSACTION_turnOffProximitySensor:I = 0x12

.field static final TRANSACTION_turnOnProximitySensor:I = 0x11

.field static final TRANSACTION_unholdCall:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallAdapter;
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
    const-string v1, "com.android.internal.telecom.IInCallAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telecom/IInCallAdapter;

    if-eqz v1, :cond_13

    .line 35
    check-cast v0, Lcom/android/internal/telecom/IInCallAdapter;

    goto :goto_3

    .line 37
    :cond_13
    new-instance v0, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_14c

    .line 218
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 49
    :sswitch_a
    const-string v4, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 54
    :sswitch_10
    const-string v4, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 59
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, answerCall(Ljava/lang/String;I)V

    goto :goto_9

    .line 64
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_21
    const-string v5, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_39

    move v1, v3

    .line 70
    .local v1, "_arg1":Z
    :goto_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_9

    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Ljava/lang/String;
    :cond_39
    move v1, v4

    .line 68
    goto :goto_31

    .line 76
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_3b
    const-string v4, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, disconnectCall(Ljava/lang/String;)V

    goto :goto_9

    .line 84
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_48
    const-string v4, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, holdCall(Ljava/lang/String;)V

    goto :goto_9

    .line 92
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_55
    const-string v4, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, unholdCall(Ljava/lang/String;)V

    goto :goto_9

    .line 100
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_62
    const-string v5, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_72

    move v0, v3

    .line 103
    .local v0, "_arg0":Z
    :goto_6e
    invoke-virtual {p0, v0}, mute(Z)V

    goto :goto_9

    .end local v0    # "_arg0":Z
    :cond_72
    move v0, v4

    .line 102
    goto :goto_6e

    .line 108
    :sswitch_74
    const-string v4, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 113
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, requestRcsObserver(II)V

    goto :goto_9

    .line 118
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_85
    const-string v4, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 121
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, setAudioRoute(I)V

    goto/16 :goto_9

    .line 126
    .end local v0    # "_arg0":I
    :sswitch_93
    const-string v4, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v1, v4

    .line 131
    .local v1, "_arg1":C
    invoke-virtual {p0, v0, v1}, playDtmfTone(Ljava/lang/String;C)V

    goto/16 :goto_9

    .line 136
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":C
    :sswitch_a6
    const-string v4, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, stopDtmfTone(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 144
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_b4
    const-string v5, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c9

    move v1, v3

    .line 149
    .local v1, "_arg1":Z
    :goto_c4
    invoke-virtual {p0, v0, v1}, postDialContinue(Ljava/lang/String;Z)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    :cond_c9
    move v1, v4

    .line 148
    goto :goto_c4

    .line 154
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_cb
    const-string v5, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_ee

    .line 159
    sget-object v5, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 165
    .local v1, "_arg1":Landroid/telecom/PhoneAccountHandle;
    :goto_e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f0

    move v2, v3

    .line 166
    .local v2, "_arg2":Z
    :goto_e9
    invoke-virtual {p0, v0, v1, v2}, phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    goto/16 :goto_9

    .line 162
    .end local v1    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    .end local v2    # "_arg2":Z
    :cond_ee
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    goto :goto_e2

    :cond_f0
    move v2, v4

    .line 165
    goto :goto_e9

    .line 171
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    :sswitch_f2
    const-string v4, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, conference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 181
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_104
    const-string v4, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 184
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, splitFromConference(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 189
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_112
    const-string v4, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, mergeConference(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 197
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_120
    const-string v4, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 200
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, swapConference(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 205
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_12e
    const-string v4, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, turnOnProximitySensor()V

    goto/16 :goto_9

    .line 211
    :sswitch_138
    const-string v5, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_149

    move v0, v3

    .line 214
    .local v0, "_arg0":Z
    :goto_144
    invoke-virtual {p0, v0}, turnOffProximitySensor(Z)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_149
    move v0, v4

    .line 213
    goto :goto_144

    .line 45
    nop

    :sswitch_data_14c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_21
        0x3 -> :sswitch_3b
        0x4 -> :sswitch_48
        0x5 -> :sswitch_55
        0x6 -> :sswitch_62
        0x7 -> :sswitch_74
        0x8 -> :sswitch_85
        0x9 -> :sswitch_93
        0xa -> :sswitch_a6
        0xb -> :sswitch_b4
        0xc -> :sswitch_cb
        0xd -> :sswitch_f2
        0xe -> :sswitch_104
        0xf -> :sswitch_112
        0x10 -> :sswitch_120
        0x11 -> :sswitch_12e
        0x12 -> :sswitch_138
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
