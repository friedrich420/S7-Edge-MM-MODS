.class public abstract Lcom/android/internal/policy/IKeyguardService$Stub;
.super Landroid/os/Binder;
.source "IKeyguardService.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IKeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.IKeyguardService"

.field static final TRANSACTION_addStateMonitorCallback:I = 0x2

.field static final TRANSACTION_changeLidState:I = 0x13

.field static final TRANSACTION_dismiss:I = 0x5

.field static final TRANSACTION_doKeyguardTimeout:I = 0x10

.field static final TRANSACTION_getScreenOrientation:I = 0x1b

.field static final TRANSACTION_keyguardDone:I = 0x4

.field static final TRANSACTION_onActivityDrawn:I = 0x15

.field static final TRANSACTION_onBootCompleted:I = 0x12

.field static final TRANSACTION_onDreamingStarted:I = 0x6

.field static final TRANSACTION_onDreamingStopped:I = 0x7

.field static final TRANSACTION_onFinishedGoingToSleep:I = 0x9

.field static final TRANSACTION_onScreenTurnedOff:I = 0xd

.field static final TRANSACTION_onScreenTurnedOn:I = 0xc

.field static final TRANSACTION_onScreenTurningOn:I = 0xb

.field static final TRANSACTION_onStartedGoingToSleep:I = 0x8

.field static final TRANSACTION_onStartedWakingUp:I = 0xa

.field static final TRANSACTION_onSystemReady:I = 0xf

.field static final TRANSACTION_removeAdaptiveEvent:I = 0x17

.field static final TRANSACTION_setAdaptiveEvent:I = 0x16

.field static final TRANSACTION_setBendedPendingIntent:I = 0x19

.field static final TRANSACTION_setBendedPendingIntentInSecure:I = 0x1a

.field static final TRANSACTION_setCurrentUser:I = 0x11

.field static final TRANSACTION_setKeyguardEnabled:I = 0xe

.field static final TRANSACTION_setOccluded:I = 0x1

.field static final TRANSACTION_startKeyguardExitAnimation:I = 0x14

.field static final TRANSACTION_updateAdaptiveEvent:I = 0x18

.field static final TRANSACTION_verifyUnlock:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "com.android.internal.policy.IKeyguardService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/policy/IKeyguardService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/android/internal/policy/IKeyguardService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
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

    .line 38
    sparse-switch p1, :sswitch_data_220

    .line 309
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 42
    :sswitch_a
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v8, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_24

    move v0, v6

    .line 51
    .local v0, "_arg0":Z
    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 52
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, setOccluded(ZI)V

    goto :goto_9

    .end local v0    # "_arg0":Z
    .end local v2    # "_arg1":I
    :cond_24
    move v0, v7

    .line 49
    goto :goto_1c

    .line 57
    :sswitch_26
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardStateCallback;

    move-result-object v0

    .line 60
    .local v0, "_arg0":Lcom/android/internal/policy/IKeyguardStateCallback;
    invoke-virtual {p0, v0}, addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    goto :goto_9

    .line 65
    .end local v0    # "_arg0":Lcom/android/internal/policy/IKeyguardStateCallback;
    :sswitch_37
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardExitCallback;

    move-result-object v0

    .line 68
    .local v0, "_arg0":Lcom/android/internal/policy/IKeyguardExitCallback;
    invoke-virtual {p0, v0}, verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    goto :goto_9

    .line 73
    .end local v0    # "_arg0":Lcom/android/internal/policy/IKeyguardExitCallback;
    :sswitch_48
    const-string v8, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5f

    move v0, v6

    .line 77
    .local v0, "_arg0":Z
    :goto_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_61

    move v2, v6

    .line 78
    .local v2, "_arg1":Z
    :goto_5b
    invoke-virtual {p0, v0, v2}, keyguardDone(ZZ)V

    goto :goto_9

    .end local v0    # "_arg0":Z
    .end local v2    # "_arg1":Z
    :cond_5f
    move v0, v7

    .line 75
    goto :goto_54

    .restart local v0    # "_arg0":Z
    :cond_61
    move v2, v7

    .line 77
    goto :goto_5b

    .line 83
    .end local v0    # "_arg0":Z
    :sswitch_63
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, dismiss()V

    goto :goto_9

    .line 89
    :sswitch_6c
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, onDreamingStarted()V

    goto :goto_9

    .line 95
    :sswitch_75
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, onDreamingStopped()V

    goto :goto_9

    .line 101
    :sswitch_7e
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, onStartedGoingToSleep(I)V

    goto/16 :goto_9

    .line 109
    .end local v0    # "_arg0":I
    :sswitch_8c
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, onFinishedGoingToSleep(I)V

    goto/16 :goto_9

    .line 117
    .end local v0    # "_arg0":I
    :sswitch_9a
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, onStartedWakingUp()V

    goto/16 :goto_9

    .line 123
    :sswitch_a4
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDrawnCallback;

    move-result-object v0

    .line 126
    .local v0, "_arg0":Lcom/android/internal/policy/IKeyguardDrawnCallback;
    invoke-virtual {p0, v0}, onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    goto/16 :goto_9

    .line 131
    .end local v0    # "_arg0":Lcom/android/internal/policy/IKeyguardDrawnCallback;
    :sswitch_b6
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, onScreenTurnedOn()V

    goto/16 :goto_9

    .line 137
    :sswitch_c0
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, onScreenTurnedOff()V

    goto/16 :goto_9

    .line 143
    :sswitch_ca
    const-string v8, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_db

    move v0, v6

    .line 146
    .local v0, "_arg0":Z
    :goto_d6
    invoke-virtual {p0, v0}, setKeyguardEnabled(Z)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_db
    move v0, v7

    .line 145
    goto :goto_d6

    .line 151
    :sswitch_dd
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, onSystemReady()V

    goto/16 :goto_9

    .line 157
    :sswitch_e7
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_ff

    .line 160
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 165
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_fa
    invoke-virtual {p0, v0}, doKeyguardTimeout(Landroid/os/Bundle;)V

    goto/16 :goto_9

    .line 163
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_ff
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_fa

    .line 170
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_101
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 173
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, setCurrentUser(I)V

    goto/16 :goto_9

    .line 178
    .end local v0    # "_arg0":I
    :sswitch_10f
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, onBootCompleted()V

    goto/16 :goto_9

    .line 184
    :sswitch_119
    const-string v8, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_12a

    move v0, v6

    .line 187
    .local v0, "_arg0":Z
    :goto_125
    invoke-virtual {p0, v0}, changeLidState(Z)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_12a
    move v0, v7

    .line 186
    goto :goto_125

    .line 192
    :sswitch_12c
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 196
    .local v0, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 197
    .local v2, "_arg1":J
    invoke-virtual {p0, v0, v1, v2, v3}, startKeyguardExitAnimation(JJ)V

    goto/16 :goto_9

    .line 202
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":J
    :sswitch_13e
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, onActivityDrawn()V

    goto/16 :goto_9

    .line 208
    :sswitch_148
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_172

    .line 213
    sget-object v7, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 219
    .local v2, "_arg1":Landroid/widget/RemoteViews;
    :goto_15f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_174

    .line 220
    sget-object v7, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    .line 225
    .local v4, "_arg2":Landroid/widget/RemoteViews;
    :goto_16d
    invoke-virtual {p0, v0, v2, v4}, setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    goto/16 :goto_9

    .line 216
    .end local v2    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":Landroid/widget/RemoteViews;
    :cond_172
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/widget/RemoteViews;
    goto :goto_15f

    .line 223
    :cond_174
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/widget/RemoteViews;
    goto :goto_16d

    .line 230
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":Landroid/widget/RemoteViews;
    :sswitch_176
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 233
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, removeAdaptiveEvent(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 238
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_184
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 242
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1ae

    .line 243
    sget-object v7, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 249
    .restart local v2    # "_arg1":Landroid/widget/RemoteViews;
    :goto_19b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1b0

    .line 250
    sget-object v7, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    .line 255
    .restart local v4    # "_arg2":Landroid/widget/RemoteViews;
    :goto_1a9
    invoke-virtual {p0, v0, v2, v4}, updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    goto/16 :goto_9

    .line 246
    .end local v2    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":Landroid/widget/RemoteViews;
    :cond_1ae
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/widget/RemoteViews;
    goto :goto_19b

    .line 253
    :cond_1b0
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/widget/RemoteViews;
    goto :goto_1a9

    .line 260
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":Landroid/widget/RemoteViews;
    :sswitch_1b2
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1d8

    .line 263
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 269
    .local v0, "_arg0":Landroid/app/PendingIntent;
    :goto_1c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1da

    .line 270
    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 275
    .local v2, "_arg1":Landroid/content/Intent;
    :goto_1d3
    invoke-virtual {p0, v0, v2}, setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 266
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v2    # "_arg1":Landroid/content/Intent;
    :cond_1d8
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_1c5

    .line 273
    :cond_1da
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/Intent;
    goto :goto_1d3

    .line 280
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v2    # "_arg1":Landroid/content/Intent;
    :sswitch_1dc
    const-string v7, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_202

    .line 283
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 289
    .restart local v0    # "_arg0":Landroid/app/PendingIntent;
    :goto_1ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_204

    .line 290
    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 295
    .restart local v2    # "_arg1":Landroid/content/Intent;
    :goto_1fd
    invoke-virtual {p0, v0, v2}, setBendedPendingIntentInSecure(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 286
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v2    # "_arg1":Landroid/content/Intent;
    :cond_202
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_1ef

    .line 293
    :cond_204
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/Intent;
    goto :goto_1fd

    .line 300
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v2    # "_arg1":Landroid/content/Intent;
    :sswitch_206
    const-string v8, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_21e

    move v0, v6

    .line 303
    .local v0, "_arg0":Z
    :goto_212
    invoke-virtual {p0, v0}, getScreenOrientation(Z)I

    move-result v5

    .line 304
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v5    # "_result":I
    :cond_21e
    move v0, v7

    .line 302
    goto :goto_212

    .line 38
    :sswitch_data_220
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_26
        0x3 -> :sswitch_37
        0x4 -> :sswitch_48
        0x5 -> :sswitch_63
        0x6 -> :sswitch_6c
        0x7 -> :sswitch_75
        0x8 -> :sswitch_7e
        0x9 -> :sswitch_8c
        0xa -> :sswitch_9a
        0xb -> :sswitch_a4
        0xc -> :sswitch_b6
        0xd -> :sswitch_c0
        0xe -> :sswitch_ca
        0xf -> :sswitch_dd
        0x10 -> :sswitch_e7
        0x11 -> :sswitch_101
        0x12 -> :sswitch_10f
        0x13 -> :sswitch_119
        0x14 -> :sswitch_12c
        0x15 -> :sswitch_13e
        0x16 -> :sswitch_148
        0x17 -> :sswitch_176
        0x18 -> :sswitch_184
        0x19 -> :sswitch_1b2
        0x1a -> :sswitch_1dc
        0x1b -> :sswitch_206
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
