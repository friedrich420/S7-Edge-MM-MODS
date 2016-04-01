.class public abstract Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;
.super Landroid/os/Binder;
.source "IMultiWindowFacade.java"

# interfaces
.implements Lcom/samsung/android/multiwindow/IMultiWindowFacade;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/IMultiWindowFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.multiwindow.IMultiWindowFacade"

.field static final TRANSACTION_addTab:I = 0x23

.field static final TRANSACTION_appMinimizingStarted:I = 0x2d

.field static final TRANSACTION_changeTaskToCascade:I = 0x16

.field static final TRANSACTION_changeTaskToFull:I = 0x15

.field static final TRANSACTION_closeMultiWindowPanel:I = 0x3a

.field static final TRANSACTION_exchangeTopTaskToZone:I = 0xc

.field static final TRANSACTION_exitByCloseBtn:I = 0xe

.field static final TRANSACTION_finishAllTasks:I = 0x2b

.field static final TRANSACTION_getArrangeState:I = 0xf

.field static final TRANSACTION_getAvailableMultiInstanceCnt:I = 0x18

.field static final TRANSACTION_getCenterBarPoint:I = 0x3

.field static final TRANSACTION_getCurrentOrientation:I = 0x32

.field static final TRANSACTION_getDragAndDropModeOfStack:I = 0x30

.field static final TRANSACTION_getEnabledFeaturesFlags:I = 0x36

.field static final TRANSACTION_getExpectedOrientation:I = 0xa

.field static final TRANSACTION_getFocusedStackLayer:I = 0x10

.field static final TRANSACTION_getFocusedZone:I = 0x11

.field static final TRANSACTION_getFrontActivityMultiWindowStyle:I = 0xb

.field static final TRANSACTION_getGlobalSystemUiVisibility:I = 0x14

.field static final TRANSACTION_getMultiWindowStyle:I = 0x6

.field static final TRANSACTION_getPreferenceThroughSystemProcess:I = 0x38

.field static final TRANSACTION_getRecentTaskSize:I = 0x2c

.field static final TRANSACTION_getRunningPenWindowCnt:I = 0x3b

.field static final TRANSACTION_getRunningScaleWindows:I = 0x31

.field static final TRANSACTION_getRunningTasks:I = 0xd

.field static final TRANSACTION_getSplitMaxWeight:I = 0x1f

.field static final TRANSACTION_getSplitMinWeight:I = 0x1e

.field static final TRANSACTION_getStackBound:I = 0x8

.field static final TRANSACTION_getStackId:I = 0x27

.field static final TRANSACTION_getStackOriginalBound:I = 0x9

.field static final TRANSACTION_getStackPosition:I = 0x21

.field static final TRANSACTION_getSystemDisplayInfo:I = 0x3e

.field static final TRANSACTION_getTabs:I = 0x25

.field static final TRANSACTION_getZoneBounds:I = 0x12

.field static final TRANSACTION_isEnableMakePenWindow:I = 0x20

.field static final TRANSACTION_isSplitSupportedForTask:I = 0x3c

.field static final TRANSACTION_minimizeTask:I = 0x17

.field static final TRANSACTION_minimizeWindow:I = 0x1

.field static final TRANSACTION_moveOnlySpecificTaskToFront:I = 0x1c

.field static final TRANSACTION_needHideTrayBar:I = 0x3d

.field static final TRANSACTION_needMoveOnlySpecificTaskToFront:I = 0x1b

.field static final TRANSACTION_needToExposureTitleBarMenu:I = 0x2e

.field static final TRANSACTION_registerMultiWindowStyleChangedCallback:I = 0x3f

.field static final TRANSACTION_registerTaskController:I = 0x33

.field static final TRANSACTION_registerTaskControllerWithType:I = 0x34

.field static final TRANSACTION_removeAllTasks:I = 0x2a

.field static final TRANSACTION_removeTab:I = 0x24

.field static final TRANSACTION_setAppVisibility:I = 0x29

.field static final TRANSACTION_setCenterBarPoint:I = 0x2

.field static final TRANSACTION_setDragAndDropModeOfStack:I = 0x2f

.field static final TRANSACTION_setFocusAppByZone:I = 0x19

.field static final TRANSACTION_setFocusedStack:I = 0x26

.field static final TRANSACTION_setMultiWindowStyle:I = 0x4

.field static final TRANSACTION_setMultiWindowStyleWithLogging:I = 0x5

.field static final TRANSACTION_setMultiWindowTrayOpenState:I = 0x13

.field static final TRANSACTION_setStackBound:I = 0x7

.field static final TRANSACTION_setStackBoundByStackId:I = 0x28

.field static final TRANSACTION_startActivityFromRecentMultiWindow:I = 0x1d

.field static final TRANSACTION_unregisterMultiWindowStyleChangedCallback:I = 0x40

.field static final TRANSACTION_unregisterTaskController:I = 0x35

.field static final TRANSACTION_updateIsolatedCenterPoint:I = 0x1a

.field static final TRANSACTION_updateMinimizeSize:I = 0x22

.field static final TRANSACTION_updateMultiWindowSetting:I = 0x39

.field static final TRANSACTION_updatePreferenceThroughSystemProcess:I = 0x37


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowFacade;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_3
    return-object v0

    .line 30
    :cond_4
    const-string v1, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
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
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_648

    .line 794
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 46
    :sswitch_a
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 51
    :sswitch_10
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, minimizeWindow(Landroid/os/IBinder;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 60
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_20
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3e

    .line 65
    sget-object v6, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 70
    .local v1, "_arg1":Landroid/graphics/Point;
    :goto_37
    invoke-virtual {p0, v0, v1}, setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 68
    .end local v1    # "_arg1":Landroid/graphics/Point;
    :cond_3e
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/graphics/Point;
    goto :goto_37

    .line 76
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Point;
    :sswitch_40
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v4

    .line 80
    .local v4, "_result":Landroid/graphics/Point;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v4, :cond_59

    .line 82
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    invoke-virtual {v4, p3, v7}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 86
    :cond_59
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 92
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/graphics/Point;
    :sswitch_5d
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 96
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7b

    .line 97
    sget-object v6, Lcom/samsung/android/multiwindow/MultiWindowStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 102
    .local v1, "_arg1":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_74
    invoke-virtual {p0, v0, v1}, setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 100
    .end local v1    # "_arg1":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_7b
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    goto :goto_74

    .line 108
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :sswitch_7d
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 112
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a0

    .line 113
    sget-object v6, Lcom/samsung/android/multiwindow/MultiWindowStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 119
    .restart local v1    # "_arg1":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 120
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, setMultiWindowStyleWithLogging(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 116
    .end local v1    # "_arg1":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v2    # "_arg2":I
    :cond_a0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    goto :goto_94

    .line 126
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :sswitch_a2
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 129
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    .line 130
    .local v4, "_result":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v4, :cond_bc

    .line 132
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    invoke-virtual {v4, p3, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 136
    :cond_bc
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 142
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :sswitch_c1
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 146
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e0

    .line 147
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 152
    .local v1, "_arg1":Landroid/graphics/Rect;
    :goto_d8
    invoke-virtual {p0, v0, v1}, setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 150
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :cond_e0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/graphics/Rect;
    goto :goto_d8

    .line 158
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :sswitch_e2
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 161
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v4

    .line 162
    .local v4, "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v4, :cond_fc

    .line 164
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    invoke-virtual {v4, p3, v7}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 168
    :cond_fc
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 174
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Landroid/graphics/Rect;
    :sswitch_101
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 177
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v4

    .line 178
    .restart local v4    # "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v4, :cond_11b

    .line 180
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    invoke-virtual {v4, p3, v7}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 184
    :cond_11b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 190
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Landroid/graphics/Rect;
    :sswitch_120
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, getExpectedOrientation()I

    move-result v4

    .line 192
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 198
    .end local v4    # "_result":I
    :sswitch_131
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 201
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    .line 202
    .local v4, "_result":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v4, :cond_14b

    .line 204
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    invoke-virtual {v4, p3, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 208
    :cond_14b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 214
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :sswitch_150
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 218
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 219
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, exchangeTopTaskToZone(II)Z

    move-result v4

    .line 220
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    if-eqz v4, :cond_167

    move v6, v7

    :cond_167
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 226
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_16c
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 230
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 231
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, getRunningTasks(II)Ljava/util/List;

    move-result-object v4

    .line 232
    .local v4, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 238
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Ljava/util/List;
    :sswitch_185
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 241
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, exitByCloseBtn(I)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 247
    .end local v0    # "_arg0":I
    :sswitch_196
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, getArrangeState()I

    move-result v4

    .line 249
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 255
    .end local v4    # "_result":I
    :sswitch_1a7
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, getFocusedStackLayer()I

    move-result v4

    .line 257
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 263
    .end local v4    # "_result":I
    :sswitch_1b8
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, getFocusedZone()I

    move-result v4

    .line 265
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 271
    .end local v4    # "_result":I
    :sswitch_1c9
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 274
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, getZoneBounds(I)Landroid/graphics/Rect;

    move-result-object v4

    .line 275
    .local v4, "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    if-eqz v4, :cond_1e3

    .line 277
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    invoke-virtual {v4, p3, v7}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 281
    :cond_1e3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 287
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/graphics/Rect;
    :sswitch_1e8
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1fc

    move v0, v7

    .line 290
    .local v0, "_arg0":Z
    :goto_1f4
    invoke-virtual {p0, v0}, setMultiWindowTrayOpenState(Z)V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_1fc
    move v0, v6

    .line 289
    goto :goto_1f4

    .line 296
    :sswitch_1fe
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, getGlobalSystemUiVisibility()I

    move-result v4

    .line 298
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 304
    .end local v4    # "_result":I
    :sswitch_20f
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 307
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, changeTaskToFull(I)V

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 313
    .end local v0    # "_arg0":I
    :sswitch_220
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_24d

    .line 316
    sget-object v8, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 322
    .local v0, "_arg0":Landroid/graphics/Point;
    :goto_233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 324
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_24f

    move v2, v7

    .line 325
    .local v2, "_arg2":Z
    :goto_23e
    invoke-virtual {p0, v0, v1, v2}, changeTaskToCascade(Landroid/graphics/Point;IZ)Z

    move-result v4

    .line 326
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    if-eqz v4, :cond_248

    move v6, v7

    :cond_248
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 319
    .end local v0    # "_arg0":Landroid/graphics/Point;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v4    # "_result":Z
    :cond_24d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/graphics/Point;
    goto :goto_233

    .restart local v1    # "_arg1":I
    :cond_24f
    move v2, v6

    .line 324
    goto :goto_23e

    .line 332
    .end local v0    # "_arg0":Landroid/graphics/Point;
    .end local v1    # "_arg1":I
    :sswitch_251
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 336
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_27e

    .line 337
    sget-object v8, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 343
    .local v1, "_arg1":Landroid/graphics/Point;
    :goto_268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_280

    move v2, v7

    .line 344
    .restart local v2    # "_arg2":Z
    :goto_26f
    invoke-virtual {p0, v0, v1, v2}, minimizeTask(ILandroid/graphics/Point;Z)Z

    move-result v4

    .line 345
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    if-eqz v4, :cond_279

    move v6, v7

    :cond_279
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 340
    .end local v1    # "_arg1":Landroid/graphics/Point;
    .end local v2    # "_arg2":Z
    .end local v4    # "_result":Z
    :cond_27e
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/graphics/Point;
    goto :goto_268

    :cond_280
    move v2, v6

    .line 343
    goto :goto_26f

    .line 351
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Point;
    :sswitch_282
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, getAvailableMultiInstanceCnt()I

    move-result v4

    .line 353
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 359
    .end local v4    # "_result":I
    :sswitch_293
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 362
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, setFocusAppByZone(I)V

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 368
    .end local v0    # "_arg0":I
    :sswitch_2a4
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2bf

    .line 371
    sget-object v6, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 376
    .local v0, "_arg0":Landroid/graphics/Point;
    :goto_2b7
    invoke-virtual {p0, v0}, updateIsolatedCenterPoint(Landroid/graphics/Point;)V

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 374
    .end local v0    # "_arg0":Landroid/graphics/Point;
    :cond_2bf
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/graphics/Point;
    goto :goto_2b7

    .line 382
    .end local v0    # "_arg0":Landroid/graphics/Point;
    :sswitch_2c1
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 385
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, needMoveOnlySpecificTaskToFront(I)Z

    move-result v4

    .line 386
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    if-eqz v4, :cond_2d4

    move v6, v7

    :cond_2d4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 392
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_2d9
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 396
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_30a

    .line 397
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 403
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_2f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 405
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_30c

    .line 406
    sget-object v6, Lcom/samsung/android/multiwindow/MultiWindowStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 411
    .local v3, "_arg3":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_302
    invoke-virtual {p0, v0, v1, v2, v3}, moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 400
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_30a
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_2f0

    .line 409
    .restart local v2    # "_arg2":I
    :cond_30c
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    goto :goto_302

    .line 417
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :sswitch_30e
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 421
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_33b

    .line 422
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 428
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_33d

    .line 429
    sget-object v6, Lcom/samsung/android/multiwindow/MultiWindowStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 434
    .local v2, "_arg2":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_333
    invoke-virtual {p0, v0, v1, v2}, startActivityFromRecentMultiWindow(ILandroid/os/Bundle;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 425
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_33b
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_325

    .line 432
    :cond_33d
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    goto :goto_333

    .line 440
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :sswitch_33f
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, getSplitMinWeight()F

    move-result v4

    .line 442
    .local v4, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_9

    .line 448
    .end local v4    # "_result":F
    :sswitch_350
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, getSplitMaxWeight()F

    move-result v4

    .line 450
    .restart local v4    # "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_9

    .line 456
    .end local v4    # "_result":F
    :sswitch_361
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 459
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, isEnableMakePenWindow(I)Z

    move-result v4

    .line 460
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    if-eqz v4, :cond_374

    move v6, v7

    :cond_374
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 466
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_379
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 469
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, getStackPosition(Landroid/os/IBinder;)Landroid/graphics/Point;

    move-result-object v4

    .line 470
    .local v4, "_result":Landroid/graphics/Point;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    if-eqz v4, :cond_393

    .line 472
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    invoke-virtual {v4, p3, v7}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 476
    :cond_393
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 482
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Landroid/graphics/Point;
    :sswitch_398
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 486
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 487
    .local v1, "_arg1":[I
    invoke-virtual {p0, v0, v1}, updateMinimizeSize(Landroid/os/IBinder;[I)V

    .line 488
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 493
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":[I
    :sswitch_3ad
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 496
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, addTab(Landroid/os/IBinder;)V

    .line 497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 502
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_3be
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 505
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, removeTab(I)Z

    move-result v4

    .line 506
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    if-eqz v4, :cond_3d1

    move v6, v7

    :cond_3d1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 512
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_3d6
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0}, getTabs()Ljava/util/List;

    move-result-object v4

    .line 514
    .local v4, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 520
    .end local v4    # "_result":Ljava/util/List;
    :sswitch_3e7
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 524
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3ff

    move v1, v7

    .line 525
    .local v1, "_arg1":Z
    :goto_3f7
    invoke-virtual {p0, v0, v1}, setFocusedStack(IZ)V

    .line 526
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    :cond_3ff
    move v1, v6

    .line 524
    goto :goto_3f7

    .line 531
    .end local v0    # "_arg0":I
    :sswitch_401
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 534
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, getStackId(Landroid/os/IBinder;)I

    move-result v4

    .line 535
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 541
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":I
    :sswitch_416
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 545
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_435

    .line 546
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 551
    .local v1, "_arg1":Landroid/graphics/Rect;
    :goto_42d
    invoke-virtual {p0, v0, v1}, setStackBoundByStackId(ILandroid/graphics/Rect;)V

    .line 552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 549
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :cond_435
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/graphics/Rect;
    goto :goto_42d

    .line 557
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :sswitch_437
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 561
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_44f

    move v1, v7

    .line 562
    .local v1, "_arg1":Z
    :goto_447
    invoke-virtual {p0, v0, v1}, setAppVisibility(Landroid/os/IBinder;Z)V

    .line 563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    :cond_44f
    move v1, v6

    .line 561
    goto :goto_447

    .line 568
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_451
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 572
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 574
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_46d

    move v2, v7

    .line 575
    .local v2, "_arg2":Z
    :goto_465
    invoke-virtual {p0, v0, v1, v2}, removeAllTasks(Landroid/os/IBinder;IZ)V

    .line 576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v2    # "_arg2":Z
    :cond_46d
    move v2, v6

    .line 574
    goto :goto_465

    .line 581
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :sswitch_46f
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 585
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 586
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, finishAllTasks(Landroid/os/IBinder;I)V

    .line 587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 592
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :sswitch_484
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 596
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 597
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, getRecentTaskSize(II)I

    move-result v4

    .line 598
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 604
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v4    # "_result":I
    :sswitch_49d
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 607
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, appMinimizingStarted(Landroid/os/IBinder;)V

    .line 608
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 613
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_4ae
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0}, needToExposureTitleBarMenu()Z

    move-result v4

    .line 615
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    if-eqz v4, :cond_4bd

    move v6, v7

    :cond_4bd
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 621
    .end local v4    # "_result":Z
    :sswitch_4c2
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 625
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4da

    move v1, v7

    .line 626
    .local v1, "_arg1":Z
    :goto_4d2
    invoke-virtual {p0, v0, v1}, setDragAndDropModeOfStack(Landroid/os/IBinder;Z)V

    .line 627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    :cond_4da
    move v1, v6

    .line 625
    goto :goto_4d2

    .line 632
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_4dc
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 635
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, getDragAndDropModeOfStack(Landroid/os/IBinder;)Z

    move-result v4

    .line 636
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    if-eqz v4, :cond_4ef

    move v6, v7

    :cond_4ef
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 642
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :sswitch_4f4
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual {p0}, getRunningScaleWindows()Ljava/util/List;

    move-result-object v4

    .line 644
    .local v4, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 650
    .end local v4    # "_result":Ljava/util/List;
    :sswitch_505
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0}, getCurrentOrientation()I

    move-result v4

    .line 652
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 658
    .end local v4    # "_result":I
    :sswitch_516
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/multiwindow/ITaskController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/ITaskController;

    move-result-object v0

    .line 661
    .local v0, "_arg0":Lcom/samsung/android/multiwindow/ITaskController;
    invoke-virtual {p0, v0}, registerTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V

    .line 662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 667
    .end local v0    # "_arg0":Lcom/samsung/android/multiwindow/ITaskController;
    :sswitch_52b
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/multiwindow/ITaskController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/ITaskController;

    move-result-object v0

    .line 671
    .restart local v0    # "_arg0":Lcom/samsung/android/multiwindow/ITaskController;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 672
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, registerTaskControllerWithType(Lcom/samsung/android/multiwindow/ITaskController;I)V

    .line 673
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 678
    .end local v0    # "_arg0":Lcom/samsung/android/multiwindow/ITaskController;
    .end local v1    # "_arg1":I
    :sswitch_544
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/multiwindow/ITaskController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/ITaskController;

    move-result-object v0

    .line 681
    .restart local v0    # "_arg0":Lcom/samsung/android/multiwindow/ITaskController;
    invoke-virtual {p0, v0}, unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V

    .line 682
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 687
    .end local v0    # "_arg0":Lcom/samsung/android/multiwindow/ITaskController;
    :sswitch_559
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0}, getEnabledFeaturesFlags()J

    move-result-wide v4

    .line 689
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 695
    .end local v4    # "_result":J
    :sswitch_56a
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 700
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, updatePreferenceThroughSystemProcess(Ljava/lang/String;I)V

    .line 701
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 706
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_57f
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 709
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, getPreferenceThroughSystemProcess(Ljava/lang/String;)I

    move-result v4

    .line 710
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 716
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_594
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 720
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 722
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5b0

    move v2, v7

    .line 723
    .restart local v2    # "_arg2":Z
    :goto_5a8
    invoke-virtual {p0, v0, v1, v2}, updateMultiWindowSetting(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 724
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v2    # "_arg2":Z
    :cond_5b0
    move v2, v6

    .line 722
    goto :goto_5a8

    .line 729
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_5b2
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0}, closeMultiWindowPanel()Z

    move-result v4

    .line 731
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    if-eqz v4, :cond_5c1

    move v6, v7

    :cond_5c1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 737
    .end local v4    # "_result":Z
    :sswitch_5c6
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual {p0}, getRunningPenWindowCnt()I

    move-result v4

    .line 739
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 745
    .end local v4    # "_result":I
    :sswitch_5d7
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 748
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, isSplitSupportedForTask(Landroid/os/IBinder;)Z

    move-result v4

    .line 749
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    if-eqz v4, :cond_5ea

    move v6, v7

    :cond_5ea
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 755
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :sswitch_5ef
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p0}, needHideTrayBar()Z

    move-result v4

    .line 757
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    if-eqz v4, :cond_5fe

    move v6, v7

    :cond_5fe
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 763
    .end local v4    # "_result":Z
    :sswitch_603
    const-string v8, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p0}, getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    .line 765
    .local v4, "_result":Landroid/view/DisplayInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    if-eqz v4, :cond_619

    .line 767
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    invoke-virtual {v4, p3, v7}, Landroid/view/DisplayInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 771
    :cond_619
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 777
    .end local v4    # "_result":Landroid/view/DisplayInfo;
    :sswitch_61e
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;

    move-result-object v0

    .line 780
    .local v0, "_arg0":Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;
    invoke-virtual {p0, v0}, registerMultiWindowStyleChangedCallback(Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;)V

    .line 781
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 786
    .end local v0    # "_arg0":Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;
    :sswitch_633
    const-string v6, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;

    move-result-object v0

    .line 789
    .restart local v0    # "_arg0":Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;
    invoke-virtual {p0, v0}, unregisterMultiWindowStyleChangedCallback(Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;)V

    .line 790
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 42
    :sswitch_data_648
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_40
        0x4 -> :sswitch_5d
        0x5 -> :sswitch_7d
        0x6 -> :sswitch_a2
        0x7 -> :sswitch_c1
        0x8 -> :sswitch_e2
        0x9 -> :sswitch_101
        0xa -> :sswitch_120
        0xb -> :sswitch_131
        0xc -> :sswitch_150
        0xd -> :sswitch_16c
        0xe -> :sswitch_185
        0xf -> :sswitch_196
        0x10 -> :sswitch_1a7
        0x11 -> :sswitch_1b8
        0x12 -> :sswitch_1c9
        0x13 -> :sswitch_1e8
        0x14 -> :sswitch_1fe
        0x15 -> :sswitch_20f
        0x16 -> :sswitch_220
        0x17 -> :sswitch_251
        0x18 -> :sswitch_282
        0x19 -> :sswitch_293
        0x1a -> :sswitch_2a4
        0x1b -> :sswitch_2c1
        0x1c -> :sswitch_2d9
        0x1d -> :sswitch_30e
        0x1e -> :sswitch_33f
        0x1f -> :sswitch_350
        0x20 -> :sswitch_361
        0x21 -> :sswitch_379
        0x22 -> :sswitch_398
        0x23 -> :sswitch_3ad
        0x24 -> :sswitch_3be
        0x25 -> :sswitch_3d6
        0x26 -> :sswitch_3e7
        0x27 -> :sswitch_401
        0x28 -> :sswitch_416
        0x29 -> :sswitch_437
        0x2a -> :sswitch_451
        0x2b -> :sswitch_46f
        0x2c -> :sswitch_484
        0x2d -> :sswitch_49d
        0x2e -> :sswitch_4ae
        0x2f -> :sswitch_4c2
        0x30 -> :sswitch_4dc
        0x31 -> :sswitch_4f4
        0x32 -> :sswitch_505
        0x33 -> :sswitch_516
        0x34 -> :sswitch_52b
        0x35 -> :sswitch_544
        0x36 -> :sswitch_559
        0x37 -> :sswitch_56a
        0x38 -> :sswitch_57f
        0x39 -> :sswitch_594
        0x3a -> :sswitch_5b2
        0x3b -> :sswitch_5c6
        0x3c -> :sswitch_5d7
        0x3d -> :sswitch_5ef
        0x3e -> :sswitch_603
        0x3f -> :sswitch_61e
        0x40 -> :sswitch_633
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
