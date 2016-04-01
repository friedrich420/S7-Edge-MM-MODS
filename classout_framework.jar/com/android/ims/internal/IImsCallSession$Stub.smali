.class public abstract Lcom/android/ims/internal/IImsCallSession$Stub;
.super Landroid/os/Binder;
.source "IImsCallSession.java"

# interfaces
.implements Lcom/android/ims/internal/IImsCallSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsCallSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsCallSession"

.field static final TRANSACTION_accept:I = 0xd

.field static final TRANSACTION_close:I = 0x1

.field static final TRANSACTION_extendToConference:I = 0x14

.field static final TRANSACTION_getCallId:I = 0x2

.field static final TRANSACTION_getCallProfile:I = 0x3

.field static final TRANSACTION_getLocalCallProfile:I = 0x4

.field static final TRANSACTION_getProperty:I = 0x6

.field static final TRANSACTION_getRemoteCallProfile:I = 0x5

.field static final TRANSACTION_getState:I = 0x7

.field static final TRANSACTION_getVideoCallProvider:I = 0x1b

.field static final TRANSACTION_hold:I = 0x10

.field static final TRANSACTION_inviteParticipants:I = 0x15

.field static final TRANSACTION_isInCall:I = 0x8

.field static final TRANSACTION_isMultiparty:I = 0x1c

.field static final TRANSACTION_merge:I = 0x12

.field static final TRANSACTION_reject:I = 0xe

.field static final TRANSACTION_removeParticipants:I = 0x16

.field static final TRANSACTION_resume:I = 0x11

.field static final TRANSACTION_sendDtmf:I = 0x17

.field static final TRANSACTION_sendUssd:I = 0x1a

.field static final TRANSACTION_setListener:I = 0x9

.field static final TRANSACTION_setMute:I = 0xa

.field static final TRANSACTION_start:I = 0xb

.field static final TRANSACTION_startConference:I = 0xc

.field static final TRANSACTION_startDtmf:I = 0x18

.field static final TRANSACTION_stopDtmf:I = 0x19

.field static final TRANSACTION_terminate:I = 0xf

.field static final TRANSACTION_update:I = 0x13


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_3
    return-object v0

    .line 31
    :cond_4
    const-string v1, "com.android.ims.internal.IImsCallSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/ims/internal/IImsCallSession;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Lcom/android/ims/internal/IImsCallSession;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Lcom/android/ims/internal/IImsCallSession$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/ims/internal/IImsCallSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_27c

    .line 353
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 47
    :sswitch_a
    const-string v3, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 52
    :sswitch_10
    const-string v3, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, close()V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 59
    :sswitch_1c
    const-string v3, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, getCallId()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 67
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_2c
    const-string v5, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    .line 69
    .local v2, "_result":Lcom/android/ims/ImsCallProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v2, :cond_41

    .line 71
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    invoke-virtual {v2, p3, v4}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 75
    :cond_41
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 81
    .end local v2    # "_result":Lcom/android/ims/ImsCallProfile;
    :sswitch_45
    const-string v5, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, getLocalCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    .line 83
    .restart local v2    # "_result":Lcom/android/ims/ImsCallProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v2, :cond_5a

    .line 85
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    invoke-virtual {v2, p3, v4}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 89
    :cond_5a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 95
    .end local v2    # "_result":Lcom/android/ims/ImsCallProfile;
    :sswitch_5e
    const-string v5, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    .line 97
    .restart local v2    # "_result":Lcom/android/ims/ImsCallProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v2, :cond_73

    .line 99
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    invoke-virtual {v2, p3, v4}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 103
    :cond_73
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 109
    .end local v2    # "_result":Lcom/android/ims/ImsCallProfile;
    :sswitch_77
    const-string v3, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 119
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_8c
    const-string v3, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, getState()I

    move-result v2

    .line 121
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 127
    .end local v2    # "_result":I
    :sswitch_9d
    const-string v5, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, isInCall()Z

    move-result v2

    .line 129
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v2, :cond_ac

    move v3, v4

    :cond_ac
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 135
    .end local v2    # "_result":Z
    :sswitch_b1
    const-string v3, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v0

    .line 138
    .local v0, "_arg0":Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-virtual {p0, v0}, setListener(Lcom/android/ims/internal/IImsCallSessionListener;)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 144
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsCallSessionListener;
    :sswitch_c6
    const-string v5, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_da

    move v0, v4

    .line 147
    .local v0, "_arg0":Z
    :goto_d2
    invoke-virtual {p0, v0}, setMute(Z)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_da
    move v0, v3

    .line 146
    goto :goto_d2

    .line 153
    :sswitch_dc
    const-string v3, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_fb

    .line 158
    sget-object v3, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsCallProfile;

    .line 163
    .local v1, "_arg1":Lcom/android/ims/ImsCallProfile;
    :goto_f3
    invoke-virtual {p0, v0, v1}, start(Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 161
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :cond_fb
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_f3

    .line 169
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_fd
    const-string v3, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11c

    .line 174
    sget-object v3, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsCallProfile;

    .line 179
    .restart local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :goto_114
    invoke-virtual {p0, v0, v1}, startConference([Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 177
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :cond_11c
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_114

    .line 185
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_11e
    const-string v3, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 189
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13d

    .line 190
    sget-object v3, Lcom/android/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsStreamMediaProfile;

    .line 195
    .local v1, "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    :goto_135
    invoke-virtual {p0, v0, v1}, accept(ILcom/android/ims/ImsStreamMediaProfile;)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 193
    .end local v1    # "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    :cond_13d
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    goto :goto_135

    .line 201
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    :sswitch_13f
    const-string v3, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 204
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, reject(I)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 210
    .end local v0    # "_arg0":I
    :sswitch_150
    const-string v3, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 213
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, terminate(I)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 219
    .end local v0    # "_arg0":I
    :sswitch_161
    const-string v3, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_17c

    .line 222
    sget-object v3, Lcom/android/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/ImsStreamMediaProfile;

    .line 227
    .local v0, "_arg0":Lcom/android/ims/ImsStreamMediaProfile;
    :goto_174
    invoke-virtual {p0, v0}, hold(Lcom/android/ims/ImsStreamMediaProfile;)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 225
    .end local v0    # "_arg0":Lcom/android/ims/ImsStreamMediaProfile;
    :cond_17c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/android/ims/ImsStreamMediaProfile;
    goto :goto_174

    .line 233
    .end local v0    # "_arg0":Lcom/android/ims/ImsStreamMediaProfile;
    :sswitch_17e
    const-string v3, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_199

    .line 236
    sget-object v3, Lcom/android/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/ImsStreamMediaProfile;

    .line 241
    .restart local v0    # "_arg0":Lcom/android/ims/ImsStreamMediaProfile;
    :goto_191
    invoke-virtual {p0, v0}, resume(Lcom/android/ims/ImsStreamMediaProfile;)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 239
    .end local v0    # "_arg0":Lcom/android/ims/ImsStreamMediaProfile;
    :cond_199
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/android/ims/ImsStreamMediaProfile;
    goto :goto_191

    .line 247
    .end local v0    # "_arg0":Lcom/android/ims/ImsStreamMediaProfile;
    :sswitch_19b
    const-string v3, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, merge()V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 254
    :sswitch_1a8
    const-string v3, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 258
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1c7

    .line 259
    sget-object v3, Lcom/android/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsStreamMediaProfile;

    .line 264
    .restart local v1    # "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    :goto_1bf
    invoke-virtual {p0, v0, v1}, update(ILcom/android/ims/ImsStreamMediaProfile;)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 262
    .end local v1    # "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    :cond_1c7
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    goto :goto_1bf

    .line 270
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    :sswitch_1c9
    const-string v3, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v0}, extendToConference([Ljava/lang/String;)V

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 279
    .end local v0    # "_arg0":[Ljava/lang/String;
    :sswitch_1da
    const-string v3, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 282
    .restart local v0    # "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v0}, inviteParticipants([Ljava/lang/String;)V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 288
    .end local v0    # "_arg0":[Ljava/lang/String;
    :sswitch_1eb
    const-string v3, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 291
    .restart local v0    # "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v0}, removeParticipants([Ljava/lang/String;)V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 297
    .end local v0    # "_arg0":[Ljava/lang/String;
    :sswitch_1fc
    const-string v3, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v0, v3

    .line 301
    .local v0, "_arg0":C
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_21c

    .line 302
    sget-object v3, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 307
    .local v1, "_arg1":Landroid/os/Message;
    :goto_214
    invoke-virtual {p0, v0, v1}, sendDtmf(CLandroid/os/Message;)V

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 305
    .end local v1    # "_arg1":Landroid/os/Message;
    :cond_21c
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Message;
    goto :goto_214

    .line 313
    .end local v0    # "_arg0":C
    .end local v1    # "_arg1":Landroid/os/Message;
    :sswitch_21e
    const-string v3, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v0, v3

    .line 316
    .restart local v0    # "_arg0":C
    invoke-virtual {p0, v0}, startDtmf(C)V

    .line 317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 322
    .end local v0    # "_arg0":C
    :sswitch_230
    const-string v3, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, stopDtmf()V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 329
    :sswitch_23d
    const-string v3, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, sendUssd(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 338
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_24e
    const-string v3, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v2

    .line 340
    .local v2, "_result":Lcom/android/ims/internal/IImsVideoCallProvider;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    if-eqz v2, :cond_265

    invoke-interface {v2}, Lcom/android/ims/internal/IImsVideoCallProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_260
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_9

    :cond_265
    const/4 v3, 0x0

    goto :goto_260

    .line 346
    .end local v2    # "_result":Lcom/android/ims/internal/IImsVideoCallProvider;
    :sswitch_267
    const-string v5, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, isMultiparty()Z

    move-result v2

    .line 348
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    if-eqz v2, :cond_276

    move v3, v4

    :cond_276
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 43
    nop

    :sswitch_data_27c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_45
        0x5 -> :sswitch_5e
        0x6 -> :sswitch_77
        0x7 -> :sswitch_8c
        0x8 -> :sswitch_9d
        0x9 -> :sswitch_b1
        0xa -> :sswitch_c6
        0xb -> :sswitch_dc
        0xc -> :sswitch_fd
        0xd -> :sswitch_11e
        0xe -> :sswitch_13f
        0xf -> :sswitch_150
        0x10 -> :sswitch_161
        0x11 -> :sswitch_17e
        0x12 -> :sswitch_19b
        0x13 -> :sswitch_1a8
        0x14 -> :sswitch_1c9
        0x15 -> :sswitch_1da
        0x16 -> :sswitch_1eb
        0x17 -> :sswitch_1fc
        0x18 -> :sswitch_21e
        0x19 -> :sswitch_230
        0x1a -> :sswitch_23d
        0x1b -> :sswitch_24e
        0x1c -> :sswitch_267
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
