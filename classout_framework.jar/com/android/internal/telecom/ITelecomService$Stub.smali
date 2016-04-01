.class public abstract Lcom/android/internal/telecom/ITelecomService$Stub;
.super Landroid/os/Binder;
.source "ITelecomService.java"

# interfaces
.implements Lcom/android/internal/telecom/ITelecomService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ITelecomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ITelecomService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.ITelecomService"

.field static final TRANSACTION_acceptRingingCall:I = 0x1c

.field static final TRANSACTION_addNewIncomingCall:I = 0x23

.field static final TRANSACTION_addNewUnknownCall:I = 0x24

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0x1d

.field static final TRANSACTION_clearAccounts:I = 0x10

.field static final TRANSACTION_enablePhoneAccount:I = 0x26

.field static final TRANSACTION_endCall:I = 0x1b

.field static final TRANSACTION_getAdnUriForPhoneAccount:I = 0x20

.field static final TRANSACTION_getAllPhoneAccountHandles:I = 0xb

.field static final TRANSACTION_getAllPhoneAccounts:I = 0xa

.field static final TRANSACTION_getAllPhoneAccountsCount:I = 0x9

.field static final TRANSACTION_getCallCapablePhoneAccounts:I = 0x5

.field static final TRANSACTION_getCallState:I = 0x1a

.field static final TRANSACTION_getCurrentTtyMode:I = 0x22

.field static final TRANSACTION_getDefaultDialerPackage:I = 0x15

.field static final TRANSACTION_getDefaultOutgoingPhoneAccount:I = 0x2

.field static final TRANSACTION_getDefaultPhoneApp:I = 0x14

.field static final TRANSACTION_getLine1Number:I = 0x13

.field static final TRANSACTION_getPhoneAccount:I = 0x8

.field static final TRANSACTION_getPhoneAccountsForPackage:I = 0x7

.field static final TRANSACTION_getPhoneAccountsSupportingScheme:I = 0x6

.field static final TRANSACTION_getSimCallManager:I = 0xc

.field static final TRANSACTION_getSimCallManagerForUser:I = 0xd

.field static final TRANSACTION_getSystemDialerPackage:I = 0x16

.field static final TRANSACTION_getUserSelectedOutgoingPhoneAccount:I = 0x3

.field static final TRANSACTION_getVoiceMailNumber:I = 0x12

.field static final TRANSACTION_handlePinMmi:I = 0x1e

.field static final TRANSACTION_handlePinMmiForPhoneAccount:I = 0x1f

.field static final TRANSACTION_isInCall:I = 0x18

.field static final TRANSACTION_isRinging:I = 0x19

.field static final TRANSACTION_isTtySupported:I = 0x21

.field static final TRANSACTION_isVoiceMailNumber:I = 0x11

.field static final TRANSACTION_placeCall:I = 0x25

.field static final TRANSACTION_registerPhoneAccount:I = 0xe

.field static final TRANSACTION_setDefaultDialer:I = 0x27

.field static final TRANSACTION_setUserSelectedOutgoingPhoneAccount:I = 0x4

.field static final TRANSACTION_showInCallScreen:I = 0x1

.field static final TRANSACTION_silenceRinger:I = 0x17

.field static final TRANSACTION_unregisterPhoneAccount:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;
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
    const-string v1, "com.android.internal.telecom.ITelecomService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telecom/ITelecomService;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Lcom/android/internal/telecom/ITelecomService;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Lcom/android/internal/telecom/ITelecomService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telecom/ITelecomService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_45a

    .line 564
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 47
    :sswitch_a
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 52
    :sswitch_10
    const-string v8, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_27

    move v0, v6

    .line 56
    .local v0, "_arg0":Z
    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, showInCallScreen(ZLjava/lang/String;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    :cond_27
    move v0, v7

    .line 54
    goto :goto_1c

    .line 63
    :sswitch_29
    const-string v8, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, getDefaultOutgoingPhoneAccount(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 69
    .local v3, "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v3, :cond_46

    .line 71
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    invoke-virtual {v3, p3, v6}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 75
    :cond_46
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 81
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Landroid/telecom/PhoneAccountHandle;
    :sswitch_4a
    const-string v8, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 83
    .restart local v3    # "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v3, :cond_5f

    .line 85
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    invoke-virtual {v3, p3, v6}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 89
    :cond_5f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 95
    .end local v3    # "_result":Landroid/telecom/PhoneAccountHandle;
    :sswitch_63
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7d

    .line 98
    sget-object v7, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 103
    .local v0, "_arg0":Landroid/telecom/PhoneAccountHandle;
    :goto_76
    invoke-virtual {p0, v0}, setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 101
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :cond_7d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_76

    .line 109
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :sswitch_7f
    const-string v8, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_9b

    move v0, v6

    .line 113
    .local v0, "_arg0":Z
    :goto_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, getCallCapablePhoneAccounts(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 115
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_9b
    move v0, v7

    .line 111
    goto :goto_8b

    .line 121
    :sswitch_9d
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 126
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, getPhoneAccountsSupportingScheme(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 127
    .restart local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 133
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :sswitch_b6
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, getPhoneAccountsForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 137
    .restart local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 143
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :sswitch_cb
    const-string v8, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_ef

    .line 146
    sget-object v8, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 151
    .local v0, "_arg0":Landroid/telecom/PhoneAccountHandle;
    :goto_de
    invoke-virtual {p0, v0}, getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v3

    .line 152
    .local v3, "_result":Landroid/telecom/PhoneAccount;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v3, :cond_f1

    .line 154
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    invoke-virtual {v3, p3, v6}, Landroid/telecom/PhoneAccount;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 149
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_result":Landroid/telecom/PhoneAccount;
    :cond_ef
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_de

    .line 158
    .restart local v3    # "_result":Landroid/telecom/PhoneAccount;
    :cond_f1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 164
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_result":Landroid/telecom/PhoneAccount;
    :sswitch_f6
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, getAllPhoneAccountsCount()I

    move-result v3

    .line 166
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 172
    .end local v3    # "_result":I
    :sswitch_107
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, getAllPhoneAccounts()Ljava/util/List;

    move-result-object v4

    .line 174
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccount;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 180
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccount;>;"
    :sswitch_118
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, getAllPhoneAccountHandles()Ljava/util/List;

    move-result-object v5

    .line 182
    .restart local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 188
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :sswitch_129
    const-string v8, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 190
    .local v3, "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v3, :cond_13f

    .line 192
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    invoke-virtual {v3, p3, v6}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 196
    :cond_13f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 202
    .end local v3    # "_result":Landroid/telecom/PhoneAccountHandle;
    :sswitch_144
    const-string v8, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 205
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, getSimCallManagerForUser(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 206
    .restart local v3    # "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    if-eqz v3, :cond_15e

    .line 208
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    invoke-virtual {v3, p3, v6}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 212
    :cond_15e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 218
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Landroid/telecom/PhoneAccountHandle;
    :sswitch_163
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_17e

    .line 221
    sget-object v7, Landroid/telecom/PhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    .line 226
    .local v0, "_arg0":Landroid/telecom/PhoneAccount;
    :goto_176
    invoke-virtual {p0, v0}, registerPhoneAccount(Landroid/telecom/PhoneAccount;)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 224
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccount;
    :cond_17e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/PhoneAccount;
    goto :goto_176

    .line 232
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccount;
    :sswitch_180
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_19b

    .line 235
    sget-object v7, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 240
    .local v0, "_arg0":Landroid/telecom/PhoneAccountHandle;
    :goto_193
    invoke-virtual {p0, v0}, unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 238
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :cond_19b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_193

    .line 246
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :sswitch_19d
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, clearAccounts(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 255
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_1ae
    const-string v8, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1d8

    .line 258
    sget-object v8, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 264
    .local v0, "_arg0":Landroid/telecom/PhoneAccountHandle;
    :goto_1c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 266
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 268
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    if-eqz v3, :cond_1d3

    move v7, v6

    :cond_1d3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 261
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :cond_1d8
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_1c1

    .line 274
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :sswitch_1da
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1fd

    .line 277
    sget-object v7, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 283
    .restart local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :goto_1ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 284
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, getVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 280
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :cond_1fd
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_1ed

    .line 291
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :sswitch_1ff
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_222

    .line 294
    sget-object v7, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 300
    .restart local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :goto_212
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 301
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, getLine1Number(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 302
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 297
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :cond_222
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_212

    .line 308
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :sswitch_224
    const-string v8, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, getDefaultPhoneApp()Landroid/content/ComponentName;

    move-result-object v3

    .line 310
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    if-eqz v3, :cond_23a

    .line 312
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    invoke-virtual {v3, p3, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 316
    :cond_23a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 322
    .end local v3    # "_result":Landroid/content/ComponentName;
    :sswitch_23f
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 330
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_250
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, getSystemDialerPackage()Ljava/lang/String;

    move-result-object v3

    .line 332
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 338
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_261
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, silenceRinger(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 347
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_272
    const-string v8, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 350
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, isInCall(Ljava/lang/String;)Z

    move-result v3

    .line 351
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    if-eqz v3, :cond_285

    move v7, v6

    :cond_285
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 357
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_28a
    const-string v8, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 360
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, isRinging(Ljava/lang/String;)Z

    move-result v3

    .line 361
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    if-eqz v3, :cond_29d

    move v7, v6

    :cond_29d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 367
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_2a2
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, getCallState()I

    move-result v3

    .line 369
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 375
    .end local v3    # "_result":I
    :sswitch_2b3
    const-string v8, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, endCall()Z

    move-result v3

    .line 377
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    if-eqz v3, :cond_2c2

    move v7, v6

    :cond_2c2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 383
    .end local v3    # "_result":Z
    :sswitch_2c7
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, acceptRingingCall()V

    .line 385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 390
    :sswitch_2d4
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 393
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, cancelMissedCallsNotification(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 399
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_2e5
    const-string v8, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 403
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 404
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, handlePinMmi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 405
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    if-eqz v3, :cond_2fc

    move v7, v6

    :cond_2fc
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 411
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_301
    const-string v8, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_32b

    .line 414
    sget-object v8, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 420
    .local v0, "_arg0":Landroid/telecom/PhoneAccountHandle;
    :goto_314
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 422
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 423
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, handlePinMmiForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 424
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    if-eqz v3, :cond_326

    move v7, v6

    :cond_326
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 417
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :cond_32b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_314

    .line 430
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :sswitch_32d
    const-string v8, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_355

    .line 433
    sget-object v8, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 439
    .restart local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :goto_340
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 440
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 441
    .local v3, "_result":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    if-eqz v3, :cond_357

    .line 443
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    invoke-virtual {v3, p3, v6}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 436
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Landroid/net/Uri;
    :cond_355
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_340

    .line 447
    .restart local v1    # "_arg1":Ljava/lang/String;
    .restart local v3    # "_result":Landroid/net/Uri;
    :cond_357
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 453
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Landroid/net/Uri;
    :sswitch_35c
    const-string v8, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, isTtySupported(Ljava/lang/String;)Z

    move-result v3

    .line 457
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    if-eqz v3, :cond_36f

    move v7, v6

    :cond_36f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 463
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_374
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 466
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, getCurrentTtyMode(Ljava/lang/String;)I

    move-result v3

    .line 467
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 473
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_389
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3b2

    .line 476
    sget-object v7, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 482
    .local v0, "_arg0":Landroid/telecom/PhoneAccountHandle;
    :goto_39c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3b4

    .line 483
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 488
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_3aa
    invoke-virtual {p0, v0, v1}, addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    .line 489
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 479
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_3b2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_39c

    .line 486
    :cond_3b4
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_3aa

    .line 494
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_3b6
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3df

    .line 497
    sget-object v7, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 503
    .restart local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :goto_3c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3e1

    .line 504
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 509
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_3d7
    invoke-virtual {p0, v0, v1}, addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    .line 510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 500
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_3df
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_3c9

    .line 507
    :cond_3e1
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_3d7

    .line 515
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_3e3
    const-string v7, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_410

    .line 518
    sget-object v7, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 524
    .local v0, "_arg0":Landroid/net/Uri;
    :goto_3f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_412

    .line 525
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 531
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_404
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 532
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, placeCall(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 533
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 521
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":Ljava/lang/String;
    :cond_410
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_3f6

    .line 528
    :cond_412
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_404

    .line 538
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_414
    const-string v8, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_43d

    .line 541
    sget-object v8, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 547
    .local v0, "_arg0":Landroid/telecom/PhoneAccountHandle;
    :goto_427
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_43f

    move v1, v6

    .line 548
    .local v1, "_arg1":Z
    :goto_42e
    invoke-virtual {p0, v0, v1}, enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)Z

    move-result v3

    .line 549
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    if-eqz v3, :cond_438

    move v7, v6

    :cond_438
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 544
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_43d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_427

    :cond_43f
    move v1, v7

    .line 547
    goto :goto_42e

    .line 555
    .end local v0    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :sswitch_441
    const-string v8, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, setDefaultDialer(Ljava/lang/String;)Z

    move-result v3

    .line 559
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    if-eqz v3, :cond_454

    move v7, v6

    :cond_454
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 43
    nop

    :sswitch_data_45a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_29
        0x3 -> :sswitch_4a
        0x4 -> :sswitch_63
        0x5 -> :sswitch_7f
        0x6 -> :sswitch_9d
        0x7 -> :sswitch_b6
        0x8 -> :sswitch_cb
        0x9 -> :sswitch_f6
        0xa -> :sswitch_107
        0xb -> :sswitch_118
        0xc -> :sswitch_129
        0xd -> :sswitch_144
        0xe -> :sswitch_163
        0xf -> :sswitch_180
        0x10 -> :sswitch_19d
        0x11 -> :sswitch_1ae
        0x12 -> :sswitch_1da
        0x13 -> :sswitch_1ff
        0x14 -> :sswitch_224
        0x15 -> :sswitch_23f
        0x16 -> :sswitch_250
        0x17 -> :sswitch_261
        0x18 -> :sswitch_272
        0x19 -> :sswitch_28a
        0x1a -> :sswitch_2a2
        0x1b -> :sswitch_2b3
        0x1c -> :sswitch_2c7
        0x1d -> :sswitch_2d4
        0x1e -> :sswitch_2e5
        0x1f -> :sswitch_301
        0x20 -> :sswitch_32d
        0x21 -> :sswitch_35c
        0x22 -> :sswitch_374
        0x23 -> :sswitch_389
        0x24 -> :sswitch_3b6
        0x25 -> :sswitch_3e3
        0x26 -> :sswitch_414
        0x27 -> :sswitch_441
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
