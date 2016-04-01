.class public abstract Lcom/android/internal/statusbar/IStatusBar$Stub;
.super Landroid/os/Binder;
.source "IStatusBar.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBar"

.field static final TRANSACTION_animateCollapsePanels:I = 0x6

.field static final TRANSACTION_animateExpandNotificationsPanel:I = 0x4

.field static final TRANSACTION_animateExpandSettingsPanel:I = 0x5

.field static final TRANSACTION_appTransitionCancelled:I = 0x15

.field static final TRANSACTION_appTransitionPending:I = 0x14

.field static final TRANSACTION_appTransitionStarting:I = 0x16

.field static final TRANSACTION_applyEDMPolicy:I = 0x1a

.field static final TRANSACTION_buzzBeepBlinked:I = 0xb

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x12

.field static final TRANSACTION_disable:I = 0x3

.field static final TRANSACTION_enableSignals:I = 0x1f

.field static final TRANSACTION_hideRecentApps:I = 0xf

.field static final TRANSACTION_notificationLightOff:I = 0xc

.field static final TRANSACTION_notificationLightPulse:I = 0xd

.field static final TRANSACTION_notifyRecentPanelVisiblity:I = 0x1e

.field static final TRANSACTION_onCameraLaunchGestureDetected:I = 0x19

.field static final TRANSACTION_preloadRecentApps:I = 0x11

.field static final TRANSACTION_removeIcon:I = 0x2

.field static final TRANSACTION_setCallBackground:I = 0x1c

.field static final TRANSACTION_setIcon:I = 0x1

.field static final TRANSACTION_setImeWindowStatus:I = 0x9

.field static final TRANSACTION_setMultiWindowBg:I = 0x1d

.field static final TRANSACTION_setSystemUiVisibility:I = 0x7

.field static final TRANSACTION_setWindowState:I = 0xa

.field static final TRANSACTION_showAssistDisclosure:I = 0x17

.field static final TRANSACTION_showRecentApps:I = 0xe

.field static final TRANSACTION_showScreenPinningRequest:I = 0x13

.field static final TRANSACTION_startAssist:I = 0x18

.field static final TRANSACTION_toggleNotificationPanel:I = 0x1b

.field static final TRANSACTION_toggleRecentApps:I = 0x10

.field static final TRANSACTION_topAppWindowChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
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
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_1ee

    .line 299
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 43
    :sswitch_a
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2b

    .line 53
    sget-object v7, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 58
    .local v2, "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :goto_27
    invoke-virtual {p0, v0, v2}, setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    goto :goto_9

    .line 56
    .end local v2    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_2b
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    goto :goto_27

    .line 63
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :sswitch_2d
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, removeIcon(I)V

    goto :goto_9

    .line 71
    .end local v0    # "_arg0":I
    :sswitch_3a
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 76
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, disable(II)V

    goto :goto_9

    .line 81
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_4b
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, animateExpandNotificationsPanel()V

    goto :goto_9

    .line 87
    :sswitch_54
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, animateExpandSettingsPanel()V

    goto :goto_9

    .line 93
    :sswitch_5d
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, animateCollapsePanels()V

    goto :goto_9

    .line 99
    :sswitch_66
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 104
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, setSystemUiVisibility(II)V

    goto :goto_9

    .line 109
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_77
    const-string v8, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_87

    move v0, v6

    .line 112
    .local v0, "_arg0":Z
    :goto_83
    invoke-virtual {p0, v0}, topAppWindowChanged(Z)V

    goto :goto_9

    .end local v0    # "_arg0":Z
    :cond_87
    move v0, v7

    .line 111
    goto :goto_83

    .line 117
    :sswitch_89
    const-string v8, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 121
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 123
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 125
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_a6

    move v5, v6

    .line 126
    .local v5, "_arg3":Z
    :goto_a1
    invoke-virtual {p0, v0, v2, v4, v5}, setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    goto/16 :goto_9

    .end local v5    # "_arg3":Z
    :cond_a6
    move v5, v7

    .line 125
    goto :goto_a1

    .line 131
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v4    # "_arg2":I
    :sswitch_a8
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 135
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 136
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, setWindowState(II)V

    goto/16 :goto_9

    .line 141
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_ba
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, buzzBeepBlinked()V

    goto/16 :goto_9

    .line 147
    :sswitch_c4
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, notificationLightOff()V

    goto/16 :goto_9

    .line 153
    :sswitch_ce
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 159
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 160
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v0, v2, v4}, notificationLightPulse(III)V

    goto/16 :goto_9

    .line 165
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v4    # "_arg2":I
    :sswitch_e4
    const-string v8, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_f5

    move v0, v6

    .line 168
    .local v0, "_arg0":Z
    :goto_f0
    invoke-virtual {p0, v0}, showRecentApps(Z)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_f5
    move v0, v7

    .line 167
    goto :goto_f0

    .line 173
    :sswitch_f7
    const-string v8, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_10f

    move v0, v6

    .line 177
    .restart local v0    # "_arg0":Z
    :goto_103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_111

    move v2, v6

    .line 178
    .local v2, "_arg1":Z
    :goto_10a
    invoke-virtual {p0, v0, v2}, hideRecentApps(ZZ)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v2    # "_arg1":Z
    :cond_10f
    move v0, v7

    .line 175
    goto :goto_103

    .restart local v0    # "_arg0":Z
    :cond_111
    move v2, v7

    .line 177
    goto :goto_10a

    .line 183
    .end local v0    # "_arg0":Z
    :sswitch_113
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, toggleRecentApps()V

    goto/16 :goto_9

    .line 189
    :sswitch_11d
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, preloadRecentApps()V

    goto/16 :goto_9

    .line 195
    :sswitch_127
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, cancelPreloadRecentApps()V

    goto/16 :goto_9

    .line 201
    :sswitch_131
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, showScreenPinningRequest()V

    goto/16 :goto_9

    .line 207
    :sswitch_13b
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, appTransitionPending()V

    goto/16 :goto_9

    .line 213
    :sswitch_145
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, appTransitionCancelled()V

    goto/16 :goto_9

    .line 219
    :sswitch_14f
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 223
    .local v0, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 224
    .local v2, "_arg1":J
    invoke-virtual {p0, v0, v1, v2, v3}, appTransitionStarting(JJ)V

    goto/16 :goto_9

    .line 229
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":J
    :sswitch_161
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, showAssistDisclosure()V

    goto/16 :goto_9

    .line 235
    :sswitch_16b
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_183

    .line 238
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 243
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_17e
    invoke-virtual {p0, v0}, startAssist(Landroid/os/Bundle;)V

    goto/16 :goto_9

    .line 241
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_183
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_17e

    .line 248
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_185
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 251
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, onCameraLaunchGestureDetected(I)V

    goto/16 :goto_9

    .line 256
    .end local v0    # "_arg0":I
    :sswitch_193
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, applyEDMPolicy()V

    goto/16 :goto_9

    .line 262
    :sswitch_19d
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, toggleNotificationPanel()V

    goto/16 :goto_9

    .line 268
    :sswitch_1a7
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 271
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, setCallBackground(I)V

    goto/16 :goto_9

    .line 276
    .end local v0    # "_arg0":I
    :sswitch_1b5
    const-string v8, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1c6

    move v0, v6

    .line 279
    .local v0, "_arg0":Z
    :goto_1c1
    invoke-virtual {p0, v0}, setMultiWindowBg(Z)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_1c6
    move v0, v7

    .line 278
    goto :goto_1c1

    .line 284
    :sswitch_1c8
    const-string v8, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1d9

    move v0, v6

    .line 287
    .restart local v0    # "_arg0":Z
    :goto_1d4
    invoke-virtual {p0, v0}, notifyRecentPanelVisiblity(Z)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_1d9
    move v0, v7

    .line 286
    goto :goto_1d4

    .line 292
    :sswitch_1db
    const-string v8, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1ec

    move v0, v6

    .line 295
    .restart local v0    # "_arg0":Z
    :goto_1e7
    invoke-virtual {p0, v0}, enableSignals(Z)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_1ec
    move v0, v7

    .line 294
    goto :goto_1e7

    .line 39
    :sswitch_data_1ee
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_3a
        0x4 -> :sswitch_4b
        0x5 -> :sswitch_54
        0x6 -> :sswitch_5d
        0x7 -> :sswitch_66
        0x8 -> :sswitch_77
        0x9 -> :sswitch_89
        0xa -> :sswitch_a8
        0xb -> :sswitch_ba
        0xc -> :sswitch_c4
        0xd -> :sswitch_ce
        0xe -> :sswitch_e4
        0xf -> :sswitch_f7
        0x10 -> :sswitch_113
        0x11 -> :sswitch_11d
        0x12 -> :sswitch_127
        0x13 -> :sswitch_131
        0x14 -> :sswitch_13b
        0x15 -> :sswitch_145
        0x16 -> :sswitch_14f
        0x17 -> :sswitch_161
        0x18 -> :sswitch_16b
        0x19 -> :sswitch_185
        0x1a -> :sswitch_193
        0x1b -> :sswitch_19d
        0x1c -> :sswitch_1a7
        0x1d -> :sswitch_1b5
        0x1e -> :sswitch_1c8
        0x1f -> :sswitch_1db
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
