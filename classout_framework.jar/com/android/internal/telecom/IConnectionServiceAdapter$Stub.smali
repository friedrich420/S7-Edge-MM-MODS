.class public abstract Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;
.super Landroid/os/Binder;
.source "IConnectionServiceAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IConnectionServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IConnectionServiceAdapter"

.field static final TRANSACTION_addConferenceCall:I = 0xb

.field static final TRANSACTION_addExistingConnection:I = 0x17

.field static final TRANSACTION_handleCreateConnectionComplete:I = 0x1

.field static final TRANSACTION_onPostDialChar:I = 0xe

.field static final TRANSACTION_onPostDialWait:I = 0xd

.field static final TRANSACTION_queryRemoteConnectionServices:I = 0xf

.field static final TRANSACTION_removeCall:I = 0xc

.field static final TRANSACTION_setActive:I = 0x2

.field static final TRANSACTION_setAddress:I = 0x14

.field static final TRANSACTION_setCallerDisplayName:I = 0x15

.field static final TRANSACTION_setConferenceMergeFailed:I = 0xa

.field static final TRANSACTION_setConferenceableConnections:I = 0x16

.field static final TRANSACTION_setConnectionCapabilities:I = 0x8

.field static final TRANSACTION_setDialing:I = 0x4

.field static final TRANSACTION_setDisconnected:I = 0x5

.field static final TRANSACTION_setExtras:I = 0x18

.field static final TRANSACTION_setIsConferenced:I = 0x9

.field static final TRANSACTION_setIsVoipAudioMode:I = 0x12

.field static final TRANSACTION_setOnHold:I = 0x6

.field static final TRANSACTION_setRingbackRequested:I = 0x7

.field static final TRANSACTION_setRinging:I = 0x3

.field static final TRANSACTION_setStatusHints:I = 0x13

.field static final TRANSACTION_setVideoProvider:I = 0x10

.field static final TRANSACTION_setVideoState:I = 0x11


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;
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
    const-string v1, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    if-eqz v1, :cond_13

    .line 35
    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    goto :goto_3

    .line 37
    :cond_13
    new-instance v0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_21a

    .line 325
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 49
    :sswitch_a
    const-string v5, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 54
    :sswitch_10
    const-string v5, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_39

    .line 59
    sget-object v5, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/ConnectionRequest;

    .line 65
    .local v1, "_arg1":Landroid/telecom/ConnectionRequest;
    :goto_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3b

    .line 66
    sget-object v5, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/ParcelableConnection;

    .line 71
    .local v3, "_arg2":Landroid/telecom/ParcelableConnection;
    :goto_35
    invoke-virtual {p0, v0, v1, v3}, handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V

    goto :goto_9

    .line 62
    .end local v1    # "_arg1":Landroid/telecom/ConnectionRequest;
    .end local v3    # "_arg2":Landroid/telecom/ParcelableConnection;
    :cond_39
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/telecom/ConnectionRequest;
    goto :goto_27

    .line 69
    :cond_3b
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/telecom/ParcelableConnection;
    goto :goto_35

    .line 76
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/ConnectionRequest;
    .end local v3    # "_arg2":Landroid/telecom/ParcelableConnection;
    :sswitch_3d
    const-string v5, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, setActive(Ljava/lang/String;)V

    goto :goto_9

    .line 84
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_4a
    const-string v5, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, setRinging(Ljava/lang/String;)V

    goto :goto_9

    .line 92
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_57
    const-string v5, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, setDialing(Ljava/lang/String;)V

    goto :goto_9

    .line 100
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_64
    const-string v5, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7f

    .line 105
    sget-object v5, Landroid/telecom/DisconnectCause;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/DisconnectCause;

    .line 110
    .local v1, "_arg1":Landroid/telecom/DisconnectCause;
    :goto_7b
    invoke-virtual {p0, v0, v1}, setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V

    goto :goto_9

    .line 108
    .end local v1    # "_arg1":Landroid/telecom/DisconnectCause;
    :cond_7f
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/telecom/DisconnectCause;
    goto :goto_7b

    .line 115
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/DisconnectCause;
    :sswitch_81
    const-string v5, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, setOnHold(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 123
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_8f
    const-string v5, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 127
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9f

    move v1, v4

    .line 128
    .local v1, "_arg1":Z
    :cond_9f
    invoke-virtual {p0, v0, v1}, setRingbackRequested(Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 133
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :sswitch_a4
    const-string v5, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 138
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, setConnectionCapabilities(Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 143
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_b6
    const-string v5, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 153
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_c8
    const-string v5, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, setConferenceMergeFailed(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 161
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_d6
    const-string v5, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f2

    .line 166
    sget-object v5, Landroid/telecom/ParcelableConference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/ParcelableConference;

    .line 171
    .local v1, "_arg1":Landroid/telecom/ParcelableConference;
    :goto_ed
    invoke-virtual {p0, v0, v1}, addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V

    goto/16 :goto_9

    .line 169
    .end local v1    # "_arg1":Landroid/telecom/ParcelableConference;
    :cond_f2
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/telecom/ParcelableConference;
    goto :goto_ed

    .line 176
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/ParcelableConference;
    :sswitch_f4
    const-string v5, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, removeCall(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 184
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_102
    const-string v5, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 194
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_114
    const-string v5, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v1, v5

    .line 199
    .local v1, "_arg1":C
    invoke-virtual {p0, v0, v1}, onPostDialChar(Ljava/lang/String;C)V

    goto/16 :goto_9

    .line 204
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":C
    :sswitch_127
    const-string v5, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telecom/RemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/RemoteServiceCallback;

    move-result-object v0

    .line 207
    .local v0, "_arg0":Lcom/android/internal/telecom/RemoteServiceCallback;
    invoke-virtual {p0, v0}, queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V

    goto/16 :goto_9

    .line 212
    .end local v0    # "_arg0":Lcom/android/internal/telecom/RemoteServiceCallback;
    :sswitch_139
    const-string v5, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v1

    .line 217
    .local v1, "_arg1":Lcom/android/internal/telecom/IVideoProvider;
    invoke-virtual {p0, v0, v1}, setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;)V

    goto/16 :goto_9

    .line 222
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/android/internal/telecom/IVideoProvider;
    :sswitch_14f
    const-string v5, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 226
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 227
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, setVideoState(Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 232
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_161
    const-string v5, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 236
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_171

    move v1, v4

    .line 237
    .local v1, "_arg1":Z
    :cond_171
    invoke-virtual {p0, v0, v1}, setIsVoipAudioMode(Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 242
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :sswitch_176
    const-string v5, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 246
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_192

    .line 247
    sget-object v5, Landroid/telecom/StatusHints;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/StatusHints;

    .line 252
    .local v1, "_arg1":Landroid/telecom/StatusHints;
    :goto_18d
    invoke-virtual {p0, v0, v1}, setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V

    goto/16 :goto_9

    .line 250
    .end local v1    # "_arg1":Landroid/telecom/StatusHints;
    :cond_192
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/telecom/StatusHints;
    goto :goto_18d

    .line 257
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/StatusHints;
    :sswitch_194
    const-string v5, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 261
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b4

    .line 262
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 268
    .local v1, "_arg1":Landroid/net/Uri;
    :goto_1ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 269
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v1, v3}, setAddress(Ljava/lang/String;Landroid/net/Uri;I)V

    goto/16 :goto_9

    .line 265
    .end local v1    # "_arg1":Landroid/net/Uri;
    .end local v3    # "_arg2":I
    :cond_1b4
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/net/Uri;
    goto :goto_1ab

    .line 274
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/net/Uri;
    :sswitch_1b6
    const-string v5, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 278
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 281
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v0, v1, v3}, setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 286
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :sswitch_1cc
    const-string v5, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 290
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 291
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_9

    .line 296
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_1de
    const-string v5, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 300
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1fa

    .line 301
    sget-object v5, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/ParcelableConnection;

    .line 306
    .local v1, "_arg1":Landroid/telecom/ParcelableConnection;
    :goto_1f5
    invoke-virtual {p0, v0, v1}, addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V

    goto/16 :goto_9

    .line 304
    .end local v1    # "_arg1":Landroid/telecom/ParcelableConnection;
    :cond_1fa
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/telecom/ParcelableConnection;
    goto :goto_1f5

    .line 311
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/telecom/ParcelableConnection;
    :sswitch_1fc
    const-string v5, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 315
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_218

    .line 316
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 321
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_213
    invoke-virtual {p0, v0, v1}, setExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_9

    .line 319
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_218
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_213

    .line 45
    :sswitch_data_21a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_3d
        0x3 -> :sswitch_4a
        0x4 -> :sswitch_57
        0x5 -> :sswitch_64
        0x6 -> :sswitch_81
        0x7 -> :sswitch_8f
        0x8 -> :sswitch_a4
        0x9 -> :sswitch_b6
        0xa -> :sswitch_c8
        0xb -> :sswitch_d6
        0xc -> :sswitch_f4
        0xd -> :sswitch_102
        0xe -> :sswitch_114
        0xf -> :sswitch_127
        0x10 -> :sswitch_139
        0x11 -> :sswitch_14f
        0x12 -> :sswitch_161
        0x13 -> :sswitch_176
        0x14 -> :sswitch_194
        0x15 -> :sswitch_1b6
        0x16 -> :sswitch_1cc
        0x17 -> :sswitch_1de
        0x18 -> :sswitch_1fc
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
