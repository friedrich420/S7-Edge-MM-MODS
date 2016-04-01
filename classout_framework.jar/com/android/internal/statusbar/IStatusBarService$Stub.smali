.class public abstract Lcom/android/internal/statusbar/IStatusBarService$Stub;
.super Landroid/os/Binder;
.source "IStatusBarService.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBarService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBarService"

.field static final TRANSACTION_appTransitionCancelled:I = 0x26

.field static final TRANSACTION_appTransitionPending:I = 0x25

.field static final TRANSACTION_appTransitionStarting:I = 0x27

.field static final TRANSACTION_applyEDMPolicy:I = 0x2a

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x24

.field static final TRANSACTION_clearNotificationEffects:I = 0x14

.field static final TRANSACTION_collapsePanels:I = 0x2

.field static final TRANSACTION_disable:I = 0x3

.field static final TRANSACTION_disable2:I = 0x5

.field static final TRANSACTION_disable2ForUser:I = 0x6

.field static final TRANSACTION_disableAsUser:I = 0x29

.field static final TRANSACTION_disableForUser:I = 0x4

.field static final TRANSACTION_enableSignals:I = 0x34

.field static final TRANSACTION_expandNotificationsPanel:I = 0x1

.field static final TRANSACTION_expandSettingsPanel:I = 0xe

.field static final TRANSACTION_getDisableFlags:I = 0x7

.field static final TRANSACTION_getPanelExpandState:I = 0x2d

.field static final TRANSACTION_getQuickSettingPanelExpandState:I = 0x33

.field static final TRANSACTION_hideRecentApps:I = 0x21

.field static final TRANSACTION_notifyRecentPanelVisiblity:I = 0x30

.field static final TRANSACTION_onClearAllNotifications:I = 0x18

.field static final TRANSACTION_onNotificationActionClick:I = 0x16

.field static final TRANSACTION_onNotificationClear:I = 0x19

.field static final TRANSACTION_onNotificationClearWithReason:I = 0x31

.field static final TRANSACTION_onNotificationClick:I = 0x15

.field static final TRANSACTION_onNotificationError:I = 0x17

.field static final TRANSACTION_onNotificationExpansionChanged:I = 0x1b

.field static final TRANSACTION_onNotificationVisibilityChanged:I = 0x1a

.field static final TRANSACTION_onPanelHidden:I = 0x13

.field static final TRANSACTION_onPanelRevealed:I = 0x12

.field static final TRANSACTION_preloadRecentApps:I = 0x23

.field static final TRANSACTION_registerStatusBar:I = 0x10

.field static final TRANSACTION_registerStatusBarToDisplay:I = 0x11

.field static final TRANSACTION_removeIcon:I = 0xa

.field static final TRANSACTION_requestStatusBarOpen:I = 0x35

.field static final TRANSACTION_setCallBackground:I = 0x2e

.field static final TRANSACTION_setCurrentUser:I = 0xf

.field static final TRANSACTION_setIcon:I = 0x8

.field static final TRANSACTION_setIconVisibility:I = 0x9

.field static final TRANSACTION_setImeWindowStatus:I = 0xd

.field static final TRANSACTION_setMultiWindowBg:I = 0x2f

.field static final TRANSACTION_setPanelExpandState:I = 0x2c

.field static final TRANSACTION_setQuickSettingPanelExpandState:I = 0x32

.field static final TRANSACTION_setSystemUiVisibility:I = 0x1c

.field static final TRANSACTION_setSystemUiVisibilityToDisplay:I = 0x1e

.field static final TRANSACTION_setWindowState:I = 0x1d

.field static final TRANSACTION_setWindowStateToDisplay:I = 0x1f

.field static final TRANSACTION_showRecentApps:I = 0x20

.field static final TRANSACTION_startAssist:I = 0x28

.field static final TRANSACTION_toggleNotificationPanel:I = 0x2b

.field static final TRANSACTION_toggleRecentApps:I = 0x22

.field static final TRANSACTION_topAppWindowChanged:I = 0xb

.field static final TRANSACTION_topAppWindowChangedToDisplay:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;
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
    const-string v1, "com.android.internal.statusbar.IStatusBarService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 29
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
    .line 39
    sparse-switch p1, :sswitch_data_60c

    .line 644
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_7
    return v6

    .line 43
    :sswitch_8
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v6, 0x1

    goto :goto_7

    .line 48
    :sswitch_11
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, expandNotificationsPanel()V

    .line 50
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    const/4 v6, 0x1

    goto :goto_7

    .line 55
    :sswitch_20
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p0 .. p0}, collapsePanels()V

    .line 57
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    const/4 v6, 0x1

    goto :goto_7

    .line 62
    :sswitch_2f
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 66
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 68
    .local v8, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 69
    .local v9, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    const/4 v6, 0x1

    goto :goto_7

    .line 75
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Landroid/os/IBinder;
    .end local v9    # "_arg2":Ljava/lang/String;
    :sswitch_4c
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 79
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 81
    .restart local v8    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 83
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 84
    .local v10, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 85
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    const/4 v6, 0x1

    goto :goto_7

    .line 90
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Landroid/os/IBinder;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":I
    :sswitch_6d
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 94
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 96
    .restart local v8    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 97
    .restart local v9    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 103
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Landroid/os/IBinder;
    .end local v9    # "_arg2":Ljava/lang/String;
    :sswitch_8b
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 107
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 109
    .restart local v8    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 111
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 112
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 118
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Landroid/os/IBinder;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":I
    :sswitch_ad
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p0 .. p0}, getDisableFlags()I

    move-result v23

    .line 120
    .local v23, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 126
    .end local v23    # "_result":I
    :sswitch_c5
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 130
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 132
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 134
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 136
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, "_arg4":Ljava/lang/String;
    move-object/from16 v6, p0

    .line 137
    invoke-virtual/range {v6 .. v11}, setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 143
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":Ljava/lang/String;
    :sswitch_eb
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 147
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_108

    const/4 v8, 0x1

    .line 148
    .local v8, "_arg1":Z
    :goto_fd
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, setIconVisibility(Ljava/lang/String;Z)V

    .line 149
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 147
    .end local v8    # "_arg1":Z
    :cond_108
    const/4 v8, 0x0

    goto :goto_fd

    .line 154
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_10a
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 157
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, removeIcon(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 163
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_120
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_139

    const/4 v7, 0x1

    .line 166
    .local v7, "_arg0":Z
    :goto_12e
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, topAppWindowChanged(Z)V

    .line 167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 165
    .end local v7    # "_arg0":Z
    :cond_139
    const/4 v7, 0x0

    goto :goto_12e

    .line 172
    :sswitch_13b
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_158

    const/4 v7, 0x1

    .line 176
    .restart local v7    # "_arg0":Z
    :goto_149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 177
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, topAppWindowChangedToDisplay(ZI)V

    .line 178
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 174
    .end local v7    # "_arg0":Z
    .end local v8    # "_arg1":I
    :cond_158
    const/4 v7, 0x0

    goto :goto_149

    .line 183
    :sswitch_15a
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 187
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 189
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 191
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_17f

    const/4 v10, 0x1

    .line 192
    .local v10, "_arg3":Z
    :goto_174
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 191
    .end local v10    # "_arg3":Z
    :cond_17f
    const/4 v10, 0x0

    goto :goto_174

    .line 198
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    :sswitch_181
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p0 .. p0}, expandSettingsPanel()V

    .line 200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 205
    :sswitch_191
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 208
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, setCurrentUser(I)V

    .line 209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 214
    .end local v7    # "_arg0":I
    :sswitch_1a7
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v7

    .line 218
    .local v7, "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    new-instance v8, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v8}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 220
    .local v8, "_arg1":Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 221
    .local v22, "_arg2_length":I
    if-gez v22, :cond_1ee

    .line 222
    const/4 v9, 0x0

    .line 228
    .local v9, "_arg2":[I
    :goto_1c2
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v16, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v7, v8, v9, v1}, registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V

    .line 230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    if-eqz v8, :cond_1f3

    .line 232
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v6}, Lcom/android/internal/statusbar/StatusBarIconList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 238
    :goto_1df
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 239
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 240
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 225
    .end local v9    # "_arg2":[I
    .end local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_1ee
    move/from16 v0, v22

    new-array v9, v0, [I

    .restart local v9    # "_arg2":[I
    goto :goto_1c2

    .line 236
    .restart local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_1f3
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1df

    .line 244
    .end local v7    # "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    .end local v8    # "_arg1":Lcom/android/internal/statusbar/StatusBarIconList;
    .end local v9    # "_arg2":[I
    .end local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v22    # "_arg2_length":I
    :sswitch_1fa
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v7

    .line 248
    .restart local v7    # "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    new-instance v8, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v8}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 250
    .restart local v8    # "_arg1":Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 251
    .restart local v22    # "_arg2_length":I
    if-gez v22, :cond_248

    .line 252
    const/4 v9, 0x0

    .line 258
    .restart local v9    # "_arg2":[I
    :goto_215
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .restart local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg4":I
    move-object/from16 v12, p0

    move-object v13, v7

    move-object v14, v8

    move-object v15, v9

    move/from16 v17, v11

    .line 261
    invoke-virtual/range {v12 .. v17}, registerStatusBarToDisplay(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;I)V

    .line 262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    if-eqz v8, :cond_24d

    .line 264
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v6}, Lcom/android/internal/statusbar/StatusBarIconList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 270
    :goto_239
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 271
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 272
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 255
    .end local v9    # "_arg2":[I
    .end local v11    # "_arg4":I
    .end local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_248
    move/from16 v0, v22

    new-array v9, v0, [I

    .restart local v9    # "_arg2":[I
    goto :goto_215

    .line 268
    .restart local v11    # "_arg4":I
    .restart local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_24d
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_239

    .line 276
    .end local v7    # "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    .end local v8    # "_arg1":Lcom/android/internal/statusbar/StatusBarIconList;
    .end local v9    # "_arg2":[I
    .end local v11    # "_arg4":I
    .end local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v22    # "_arg2_length":I
    :sswitch_254
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_271

    const/4 v7, 0x1

    .line 280
    .local v7, "_arg0":Z
    :goto_262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 281
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, onPanelRevealed(ZI)V

    .line 282
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 278
    .end local v7    # "_arg0":Z
    .end local v8    # "_arg1":I
    :cond_271
    const/4 v7, 0x0

    goto :goto_262

    .line 287
    :sswitch_273
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p0 .. p0}, onPanelHidden()V

    .line 289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 294
    :sswitch_283
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p0 .. p0}, clearNotificationEffects()V

    .line 296
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 301
    :sswitch_293
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 304
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, onNotificationClick(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 310
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_2a9
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 314
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 315
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, onNotificationActionClick(Ljava/lang/String;I)V

    .line 316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 321
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    :sswitch_2c3
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 325
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 327
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 329
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 331
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 333
    .restart local v11    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 335
    .local v12, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, "_arg6":I
    move-object/from16 v6, p0

    .line 336
    invoke-virtual/range {v6 .. v13}, onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    .line 337
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 342
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v12    # "_arg5":Ljava/lang/String;
    .end local v13    # "_arg6":I
    :sswitch_2f1
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 345
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, onClearAllNotifications(I)V

    .line 346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 351
    .end local v7    # "_arg0":I
    :sswitch_307
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 355
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 357
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 359
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 360
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V

    .line 361
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 366
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    :sswitch_329
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    sget-object v6, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 370
    .local v7, "_arg0":[Lcom/android/internal/statusbar/NotificationVisibility;
    sget-object v6, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 371
    .local v8, "_arg1":[Lcom/android/internal/statusbar/NotificationVisibility;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V

    .line 372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 377
    .end local v7    # "_arg0":[Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v8    # "_arg1":[Lcom/android/internal/statusbar/NotificationVisibility;
    :sswitch_34f
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 381
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_373

    const/4 v8, 0x1

    .line 383
    .local v8, "_arg1":Z
    :goto_361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_375

    const/4 v9, 0x1

    .line 384
    .local v9, "_arg2":Z
    :goto_368
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, onNotificationExpansionChanged(Ljava/lang/String;ZZ)V

    .line 385
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 381
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":Z
    :cond_373
    const/4 v8, 0x0

    goto :goto_361

    .line 383
    .restart local v8    # "_arg1":Z
    :cond_375
    const/4 v9, 0x0

    goto :goto_368

    .line 390
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Z
    :sswitch_377
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 394
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 396
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 397
    .local v9, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, setSystemUiVisibility(IILjava/lang/String;)V

    .line 398
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 403
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Ljava/lang/String;
    :sswitch_395
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 407
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 408
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, setWindowState(II)V

    .line 409
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 414
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_3af
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 418
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 420
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 422
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 423
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, setSystemUiVisibilityToDisplay(IILjava/lang/String;I)V

    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 429
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":I
    :sswitch_3d1
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 433
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 435
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 436
    .local v9, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, setWindowStateToDisplay(III)V

    .line 437
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 442
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    :sswitch_3ef
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_408

    const/4 v7, 0x1

    .line 445
    .local v7, "_arg0":Z
    :goto_3fd
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, showRecentApps(Z)V

    .line 446
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 444
    .end local v7    # "_arg0":Z
    :cond_408
    const/4 v7, 0x0

    goto :goto_3fd

    .line 451
    :sswitch_40a
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_42a

    const/4 v7, 0x1

    .line 455
    .restart local v7    # "_arg0":Z
    :goto_418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_42c

    const/4 v8, 0x1

    .line 456
    .local v8, "_arg1":Z
    :goto_41f
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, hideRecentApps(ZZ)V

    .line 457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 453
    .end local v7    # "_arg0":Z
    .end local v8    # "_arg1":Z
    :cond_42a
    const/4 v7, 0x0

    goto :goto_418

    .line 455
    .restart local v7    # "_arg0":Z
    :cond_42c
    const/4 v8, 0x0

    goto :goto_41f

    .line 462
    .end local v7    # "_arg0":Z
    :sswitch_42e
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p0 .. p0}, toggleRecentApps()V

    .line 464
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 469
    :sswitch_43e
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p0 .. p0}, preloadRecentApps()V

    .line 471
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 476
    :sswitch_44e
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {p0 .. p0}, cancelPreloadRecentApps()V

    .line 478
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 483
    :sswitch_45e
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p0 .. p0}, appTransitionPending()V

    .line 485
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 490
    :sswitch_46e
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual/range {p0 .. p0}, appTransitionCancelled()V

    .line 492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 497
    :sswitch_47e
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 501
    .local v18, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 502
    .local v20, "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, appTransitionStarting(JJ)V

    .line 503
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 508
    .end local v18    # "_arg0":J
    .end local v20    # "_arg1":J
    :sswitch_49c
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4be

    .line 511
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 516
    .local v7, "_arg0":Landroid/os/Bundle;
    :goto_4b3
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, startAssist(Landroid/os/Bundle;)V

    .line 517
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 514
    .end local v7    # "_arg0":Landroid/os/Bundle;
    :cond_4be
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/os/Bundle;
    goto :goto_4b3

    .line 522
    .end local v7    # "_arg0":Landroid/os/Bundle;
    :sswitch_4c0
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 526
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 528
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 530
    .local v9, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 531
    .local v10, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, disableAsUser(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 537
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Landroid/os/IBinder;
    .end local v10    # "_arg3":Ljava/lang/String;
    :sswitch_4e2
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p0 .. p0}, applyEDMPolicy()V

    .line 539
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 544
    :sswitch_4f2
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual/range {p0 .. p0}, toggleNotificationPanel()V

    .line 546
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 551
    :sswitch_502
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_51b

    const/4 v7, 0x1

    .line 554
    .local v7, "_arg0":Z
    :goto_510
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, setPanelExpandState(Z)V

    .line 555
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 553
    .end local v7    # "_arg0":Z
    :cond_51b
    const/4 v7, 0x0

    goto :goto_510

    .line 560
    :sswitch_51d
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual/range {p0 .. p0}, getPanelExpandState()Z

    move-result v23

    .line 562
    .local v23, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    if-eqz v23, :cond_536

    const/4 v6, 0x1

    :goto_52e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 563
    :cond_536
    const/4 v6, 0x0

    goto :goto_52e

    .line 568
    .end local v23    # "_result":Z
    :sswitch_538
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 571
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, setCallBackground(I)V

    .line 572
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 577
    .end local v7    # "_arg0":I
    :sswitch_54e
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_567

    const/4 v7, 0x1

    .line 580
    .local v7, "_arg0":Z
    :goto_55c
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, setMultiWindowBg(Z)V

    .line 581
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 579
    .end local v7    # "_arg0":Z
    :cond_567
    const/4 v7, 0x0

    goto :goto_55c

    .line 586
    :sswitch_569
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_582

    const/4 v7, 0x1

    .line 589
    .restart local v7    # "_arg0":Z
    :goto_577
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, notifyRecentPanelVisiblity(Z)V

    .line 590
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 588
    .end local v7    # "_arg0":Z
    :cond_582
    const/4 v7, 0x0

    goto :goto_577

    .line 595
    :sswitch_584
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 599
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 601
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 603
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 605
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11    # "_arg4":I
    move-object/from16 v6, p0

    .line 606
    invoke-virtual/range {v6 .. v11}, onNotificationClearWithReason(Ljava/lang/String;Ljava/lang/String;III)V

    .line 607
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 612
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    :sswitch_5aa
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5c3

    const/4 v7, 0x1

    .line 615
    .local v7, "_arg0":Z
    :goto_5b8
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, setQuickSettingPanelExpandState(Z)V

    .line 616
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 614
    .end local v7    # "_arg0":Z
    :cond_5c3
    const/4 v7, 0x0

    goto :goto_5b8

    .line 621
    :sswitch_5c5
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual/range {p0 .. p0}, getQuickSettingPanelExpandState()Z

    move-result v23

    .line 623
    .restart local v23    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    if-eqz v23, :cond_5de

    const/4 v6, 0x1

    :goto_5d6
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 624
    :cond_5de
    const/4 v6, 0x0

    goto :goto_5d6

    .line 629
    .end local v23    # "_result":Z
    :sswitch_5e0
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 631
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5f9

    const/4 v7, 0x1

    .line 632
    .restart local v7    # "_arg0":Z
    :goto_5ee
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, enableSignals(Z)V

    .line 633
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 631
    .end local v7    # "_arg0":Z
    :cond_5f9
    const/4 v7, 0x0

    goto :goto_5ee

    .line 638
    :sswitch_5fb
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p0 .. p0}, requestStatusBarOpen()V

    .line 640
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 39
    nop

    :sswitch_data_60c
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_20
        0x3 -> :sswitch_2f
        0x4 -> :sswitch_4c
        0x5 -> :sswitch_6d
        0x6 -> :sswitch_8b
        0x7 -> :sswitch_ad
        0x8 -> :sswitch_c5
        0x9 -> :sswitch_eb
        0xa -> :sswitch_10a
        0xb -> :sswitch_120
        0xc -> :sswitch_13b
        0xd -> :sswitch_15a
        0xe -> :sswitch_181
        0xf -> :sswitch_191
        0x10 -> :sswitch_1a7
        0x11 -> :sswitch_1fa
        0x12 -> :sswitch_254
        0x13 -> :sswitch_273
        0x14 -> :sswitch_283
        0x15 -> :sswitch_293
        0x16 -> :sswitch_2a9
        0x17 -> :sswitch_2c3
        0x18 -> :sswitch_2f1
        0x19 -> :sswitch_307
        0x1a -> :sswitch_329
        0x1b -> :sswitch_34f
        0x1c -> :sswitch_377
        0x1d -> :sswitch_395
        0x1e -> :sswitch_3af
        0x1f -> :sswitch_3d1
        0x20 -> :sswitch_3ef
        0x21 -> :sswitch_40a
        0x22 -> :sswitch_42e
        0x23 -> :sswitch_43e
        0x24 -> :sswitch_44e
        0x25 -> :sswitch_45e
        0x26 -> :sswitch_46e
        0x27 -> :sswitch_47e
        0x28 -> :sswitch_49c
        0x29 -> :sswitch_4c0
        0x2a -> :sswitch_4e2
        0x2b -> :sswitch_4f2
        0x2c -> :sswitch_502
        0x2d -> :sswitch_51d
        0x2e -> :sswitch_538
        0x2f -> :sswitch_54e
        0x30 -> :sswitch_569
        0x31 -> :sswitch_584
        0x32 -> :sswitch_5aa
        0x33 -> :sswitch_5c5
        0x34 -> :sswitch_5e0
        0x35 -> :sswitch_5fb
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
