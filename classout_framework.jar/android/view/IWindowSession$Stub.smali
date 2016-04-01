.class public abstract Landroid/view/IWindowSession$Stub;
.super Landroid/os/Binder;
.source "IWindowSession.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowSession"

.field static final TRANSACTION_add:I = 0x1

.field static final TRANSACTION_addToDisplay:I = 0x2

.field static final TRANSACTION_addToDisplayWithoutInputChannel:I = 0x4

.field static final TRANSACTION_addWithoutInputChannel:I = 0x3

.field static final TRANSACTION_dragRecipientEntered:I = 0x13

.field static final TRANSACTION_dragRecipientExited:I = 0x14

.field static final TRANSACTION_finishDrawing:I = 0xc

.field static final TRANSACTION_getContentFrame:I = 0x1d

.field static final TRANSACTION_getCoverStateSwitch:I = 0x1e

.field static final TRANSACTION_getDisplayFrame:I = 0xb

.field static final TRANSACTION_getInTouchMode:I = 0xe

.field static final TRANSACTION_getWindowId:I = 0x1b

.field static final TRANSACTION_onRectangleOnScreenRequested:I = 0x1a

.field static final TRANSACTION_outOfMemory:I = 0x8

.field static final TRANSACTION_performDeferredDestroy:I = 0x7

.field static final TRANSACTION_performDrag:I = 0x11

.field static final TRANSACTION_performHapticFeedback:I = 0xf

.field static final TRANSACTION_pokeDrawLock:I = 0x1c

.field static final TRANSACTION_prepareDrag:I = 0x10

.field static final TRANSACTION_relayout:I = 0x6

.field static final TRANSACTION_remove:I = 0x5

.field static final TRANSACTION_reportDropResult:I = 0x12

.field static final TRANSACTION_sendWallpaperCommand:I = 0x18

.field static final TRANSACTION_setInTouchMode:I = 0xd

.field static final TRANSACTION_setInsets:I = 0xa

.field static final TRANSACTION_setTransparentRegion:I = 0x9

.field static final TRANSACTION_setWallpaperDisplayOffset:I = 0x17

.field static final TRANSACTION_setWallpaperPosition:I = 0x15

.field static final TRANSACTION_wallpaperCommandComplete:I = 0x19

.field static final TRANSACTION_wallpaperOffsetsComplete:I = 0x16


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;
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
    const-string v1, "android.view.IWindowSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/IWindowSession;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/view/IWindowSession;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/view/IWindowSession$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/view/IWindowSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 26
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
    .line 43
    sparse-switch p1, :sswitch_data_784

    .line 719
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_7
    return v2

    .line 47
    :sswitch_8
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v2, 0x1

    goto :goto_7

    .line 52
    :sswitch_11
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 56
    .local v3, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 58
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_83

    .line 59
    sget-object v2, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 65
    .local v5, "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 67
    .local v6, "_arg3":I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 69
    .local v7, "_arg4":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 71
    .local v8, "_arg5":Landroid/graphics/Rect;
    new-instance v9, Landroid/view/InputChannel;

    invoke-direct {v9}, Landroid/view/InputChannel;-><init>()V

    .local v9, "_arg6":Landroid/view/InputChannel;
    move-object/from16 v2, p0

    .line 72
    invoke-virtual/range {v2 .. v9}, add(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v20

    .line 73
    .local v20, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    if-eqz v7, :cond_85

    .line 76
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v7, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 82
    :goto_65
    if-eqz v8, :cond_8c

    .line 83
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 89
    :goto_73
    if-eqz v9, :cond_93

    .line 90
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v2}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 96
    :goto_81
    const/4 v2, 0x1

    goto :goto_7

    .line 62
    .end local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Landroid/graphics/Rect;
    .end local v8    # "_arg5":Landroid/graphics/Rect;
    .end local v9    # "_arg6":Landroid/view/InputChannel;
    .end local v20    # "_result":I
    :cond_83
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_34

    .line 80
    .restart local v6    # "_arg3":I
    .restart local v7    # "_arg4":Landroid/graphics/Rect;
    .restart local v8    # "_arg5":Landroid/graphics/Rect;
    .restart local v9    # "_arg6":Landroid/view/InputChannel;
    .restart local v20    # "_result":I
    :cond_85
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_65

    .line 87
    :cond_8c
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_73

    .line 94
    :cond_93
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_81

    .line 100
    .end local v3    # "_arg0":Landroid/view/IWindow;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Landroid/graphics/Rect;
    .end local v8    # "_arg5":Landroid/graphics/Rect;
    .end local v9    # "_arg6":Landroid/view/InputChannel;
    .end local v20    # "_result":I
    :sswitch_9a
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 104
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 106
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_124

    .line 107
    sget-object v2, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 113
    .restart local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 115
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 117
    .local v7, "_arg4":I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 119
    .restart local v8    # "_arg5":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 121
    .local v9, "_arg6":Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 123
    .local v10, "_arg7":Landroid/graphics/Rect;
    new-instance v11, Landroid/view/InputChannel;

    invoke-direct {v11}, Landroid/view/InputChannel;-><init>()V

    .local v11, "_arg8":Landroid/view/InputChannel;
    move-object/from16 v2, p0

    .line 124
    invoke-virtual/range {v2 .. v11}, addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v20

    .line 125
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    if-eqz v8, :cond_126

    .line 128
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 134
    :goto_f7
    if-eqz v9, :cond_12d

    .line 135
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 141
    :goto_105
    if-eqz v10, :cond_134

    .line 142
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 148
    :goto_113
    if-eqz v11, :cond_13b

    .line 149
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v2}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 155
    :goto_121
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 110
    .end local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":Landroid/graphics/Rect;
    .end local v9    # "_arg6":Landroid/graphics/Rect;
    .end local v10    # "_arg7":Landroid/graphics/Rect;
    .end local v11    # "_arg8":Landroid/view/InputChannel;
    .end local v20    # "_result":I
    :cond_124
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_bd

    .line 132
    .restart local v6    # "_arg3":I
    .restart local v7    # "_arg4":I
    .restart local v8    # "_arg5":Landroid/graphics/Rect;
    .restart local v9    # "_arg6":Landroid/graphics/Rect;
    .restart local v10    # "_arg7":Landroid/graphics/Rect;
    .restart local v11    # "_arg8":Landroid/view/InputChannel;
    .restart local v20    # "_result":I
    :cond_126
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f7

    .line 139
    :cond_12d
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_105

    .line 146
    :cond_134
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_113

    .line 153
    :cond_13b
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_121

    .line 159
    .end local v3    # "_arg0":Landroid/view/IWindow;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":Landroid/graphics/Rect;
    .end local v9    # "_arg6":Landroid/graphics/Rect;
    .end local v10    # "_arg7":Landroid/graphics/Rect;
    .end local v11    # "_arg8":Landroid/view/InputChannel;
    .end local v20    # "_result":I
    :sswitch_142
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 163
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 165
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1a2

    .line 166
    sget-object v2, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 172
    .restart local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 174
    .restart local v6    # "_arg3":I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 176
    .local v7, "_arg4":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .restart local v8    # "_arg5":Landroid/graphics/Rect;
    move-object/from16 v2, p0

    .line 177
    invoke-virtual/range {v2 .. v8}, addWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v20

    .line 178
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    if-eqz v7, :cond_1a4

    .line 181
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v7, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 187
    :goto_191
    if-eqz v8, :cond_1ab

    .line 188
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 194
    :goto_19f
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 169
    .end local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Landroid/graphics/Rect;
    .end local v8    # "_arg5":Landroid/graphics/Rect;
    .end local v20    # "_result":I
    :cond_1a2
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_165

    .line 185
    .restart local v6    # "_arg3":I
    .restart local v7    # "_arg4":Landroid/graphics/Rect;
    .restart local v8    # "_arg5":Landroid/graphics/Rect;
    .restart local v20    # "_result":I
    :cond_1a4
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_191

    .line 192
    :cond_1ab
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19f

    .line 198
    .end local v3    # "_arg0":Landroid/view/IWindow;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Landroid/graphics/Rect;
    .end local v8    # "_arg5":Landroid/graphics/Rect;
    .end local v20    # "_result":I
    :sswitch_1b2
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 202
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 204
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_216

    .line 205
    sget-object v2, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 211
    .restart local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_1d5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 213
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 215
    .local v7, "_arg4":I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 217
    .restart local v8    # "_arg5":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .restart local v9    # "_arg6":Landroid/graphics/Rect;
    move-object/from16 v2, p0

    .line 218
    invoke-virtual/range {v2 .. v9}, addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v20

    .line 219
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    if-eqz v8, :cond_218

    .line 222
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 228
    :goto_205
    if-eqz v9, :cond_21f

    .line 229
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 235
    :goto_213
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 208
    .end local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":Landroid/graphics/Rect;
    .end local v9    # "_arg6":Landroid/graphics/Rect;
    .end local v20    # "_result":I
    :cond_216
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_1d5

    .line 226
    .restart local v6    # "_arg3":I
    .restart local v7    # "_arg4":I
    .restart local v8    # "_arg5":Landroid/graphics/Rect;
    .restart local v9    # "_arg6":Landroid/graphics/Rect;
    .restart local v20    # "_result":I
    :cond_218
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_205

    .line 233
    :cond_21f
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_213

    .line 239
    .end local v3    # "_arg0":Landroid/view/IWindow;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":Landroid/graphics/Rect;
    .end local v9    # "_arg6":Landroid/graphics/Rect;
    .end local v20    # "_result":I
    :sswitch_226
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 242
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, remove(Landroid/view/IWindow;)V

    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 248
    .end local v3    # "_arg0":Landroid/view/IWindow;
    :sswitch_240
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 252
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 254
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_34c

    .line 255
    sget-object v2, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 261
    .restart local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 263
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 265
    .restart local v7    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 267
    .local v8, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 269
    .local v9, "_arg6":I
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 271
    .restart local v10    # "_arg7":Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 273
    .local v11, "_arg8":Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 275
    .local v12, "_arg9":Landroid/graphics/Rect;
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 277
    .local v13, "_arg10":Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 279
    .local v14, "_arg11":Landroid/graphics/Rect;
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 281
    .local v15, "_arg12":Landroid/graphics/Rect;
    new-instance v16, Landroid/content/res/Configuration;

    invoke-direct/range {v16 .. v16}, Landroid/content/res/Configuration;-><init>()V

    .line 283
    .local v16, "_arg13":Landroid/content/res/Configuration;
    new-instance v17, Landroid/view/Surface;

    invoke-direct/range {v17 .. v17}, Landroid/view/Surface;-><init>()V

    .line 285
    .local v17, "_arg14":Landroid/view/Surface;
    new-instance v18, Landroid/graphics/PointF;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/PointF;-><init>()V

    .line 287
    .local v18, "_arg15":Landroid/graphics/PointF;
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .local v19, "_arg16":Landroid/graphics/Rect;
    move-object/from16 v2, p0

    .line 288
    invoke-virtual/range {v2 .. v19}, relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;Landroid/graphics/PointF;Landroid/graphics/Rect;)I

    move-result v20

    .line 289
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    if-eqz v10, :cond_34f

    .line 292
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 298
    :goto_2c3
    if-eqz v11, :cond_357

    .line 299
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 305
    :goto_2d1
    if-eqz v12, :cond_35f

    .line 306
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 312
    :goto_2df
    if-eqz v13, :cond_367

    .line 313
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 319
    :goto_2ed
    if-eqz v14, :cond_36e

    .line 320
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 326
    :goto_2fb
    if-eqz v15, :cond_375

    .line 327
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 333
    :goto_309
    if-eqz v16, :cond_37c

    .line 334
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    const/4 v2, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 340
    :goto_319
    if-eqz v17, :cond_383

    .line 341
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    const/4 v2, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 347
    :goto_329
    if-eqz v18, :cond_38a

    .line 348
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->writeToParcel(Landroid/os/Parcel;I)V

    .line 354
    :goto_339
    if-eqz v19, :cond_391

    .line 355
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    const/4 v2, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 361
    :goto_349
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 258
    .end local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":I
    .end local v10    # "_arg7":Landroid/graphics/Rect;
    .end local v11    # "_arg8":Landroid/graphics/Rect;
    .end local v12    # "_arg9":Landroid/graphics/Rect;
    .end local v13    # "_arg10":Landroid/graphics/Rect;
    .end local v14    # "_arg11":Landroid/graphics/Rect;
    .end local v15    # "_arg12":Landroid/graphics/Rect;
    .end local v16    # "_arg13":Landroid/content/res/Configuration;
    .end local v17    # "_arg14":Landroid/view/Surface;
    .end local v18    # "_arg15":Landroid/graphics/PointF;
    .end local v19    # "_arg16":Landroid/graphics/Rect;
    .end local v20    # "_result":I
    :cond_34c
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto/16 :goto_263

    .line 296
    .restart local v6    # "_arg3":I
    .restart local v7    # "_arg4":I
    .restart local v8    # "_arg5":I
    .restart local v9    # "_arg6":I
    .restart local v10    # "_arg7":Landroid/graphics/Rect;
    .restart local v11    # "_arg8":Landroid/graphics/Rect;
    .restart local v12    # "_arg9":Landroid/graphics/Rect;
    .restart local v13    # "_arg10":Landroid/graphics/Rect;
    .restart local v14    # "_arg11":Landroid/graphics/Rect;
    .restart local v15    # "_arg12":Landroid/graphics/Rect;
    .restart local v16    # "_arg13":Landroid/content/res/Configuration;
    .restart local v17    # "_arg14":Landroid/view/Surface;
    .restart local v18    # "_arg15":Landroid/graphics/PointF;
    .restart local v19    # "_arg16":Landroid/graphics/Rect;
    .restart local v20    # "_result":I
    :cond_34f
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2c3

    .line 303
    :cond_357
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2d1

    .line 310
    :cond_35f
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2df

    .line 317
    :cond_367
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2ed

    .line 324
    :cond_36e
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2fb

    .line 331
    :cond_375
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_309

    .line 338
    :cond_37c
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_319

    .line 345
    :cond_383
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_329

    .line 352
    :cond_38a
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_339

    .line 359
    :cond_391
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_349

    .line 365
    .end local v3    # "_arg0":Landroid/view/IWindow;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":I
    .end local v10    # "_arg7":Landroid/graphics/Rect;
    .end local v11    # "_arg8":Landroid/graphics/Rect;
    .end local v12    # "_arg9":Landroid/graphics/Rect;
    .end local v13    # "_arg10":Landroid/graphics/Rect;
    .end local v14    # "_arg11":Landroid/graphics/Rect;
    .end local v15    # "_arg12":Landroid/graphics/Rect;
    .end local v16    # "_arg13":Landroid/content/res/Configuration;
    .end local v17    # "_arg14":Landroid/view/Surface;
    .end local v18    # "_arg15":Landroid/graphics/PointF;
    .end local v19    # "_arg16":Landroid/graphics/Rect;
    .end local v20    # "_result":I
    :sswitch_398
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 368
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, performDeferredDestroy(Landroid/view/IWindow;)V

    .line 369
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 374
    .end local v3    # "_arg0":Landroid/view/IWindow;
    :sswitch_3b2
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 377
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, outOfMemory(Landroid/view/IWindow;)Z

    move-result v20

    .line 378
    .local v20, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    if-eqz v20, :cond_3d5

    const/4 v2, 0x1

    :goto_3cd
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 379
    :cond_3d5
    const/4 v2, 0x0

    goto :goto_3cd

    .line 384
    .end local v3    # "_arg0":Landroid/view/IWindow;
    .end local v20    # "_result":Z
    :sswitch_3d7
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 388
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_401

    .line 389
    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Region;

    .line 394
    .local v4, "_arg1":Landroid/graphics/Region;
    :goto_3f6
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    .line 395
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 392
    .end local v4    # "_arg1":Landroid/graphics/Region;
    :cond_401
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/graphics/Region;
    goto :goto_3f6

    .line 400
    .end local v3    # "_arg0":Landroid/view/IWindow;
    .end local v4    # "_arg1":Landroid/graphics/Region;
    :sswitch_403
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 404
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 406
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_451

    .line 407
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 413
    .local v5, "_arg2":Landroid/graphics/Rect;
    :goto_426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_453

    .line 414
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 420
    .local v6, "_arg3":Landroid/graphics/Rect;
    :goto_436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_455

    .line 421
    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Region;

    .local v7, "_arg4":Landroid/graphics/Region;
    :goto_446
    move-object/from16 v2, p0

    .line 426
    invoke-virtual/range {v2 .. v7}, setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    .line 427
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 410
    .end local v5    # "_arg2":Landroid/graphics/Rect;
    .end local v6    # "_arg3":Landroid/graphics/Rect;
    .end local v7    # "_arg4":Landroid/graphics/Region;
    :cond_451
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/graphics/Rect;
    goto :goto_426

    .line 417
    :cond_453
    const/4 v6, 0x0

    .restart local v6    # "_arg3":Landroid/graphics/Rect;
    goto :goto_436

    .line 424
    :cond_455
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/graphics/Region;
    goto :goto_446

    .line 432
    .end local v3    # "_arg0":Landroid/view/IWindow;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/graphics/Rect;
    .end local v6    # "_arg3":Landroid/graphics/Rect;
    .end local v7    # "_arg4":Landroid/graphics/Region;
    :sswitch_457
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 436
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 437
    .local v4, "_arg1":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V

    .line 438
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    if-eqz v4, :cond_484

    .line 440
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 446
    :goto_481
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 444
    :cond_484
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_481

    .line 450
    .end local v3    # "_arg0":Landroid/view/IWindow;
    .end local v4    # "_arg1":Landroid/graphics/Rect;
    :sswitch_48b
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 453
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, finishDrawing(Landroid/view/IWindow;)V

    .line 454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 459
    .end local v3    # "_arg0":Landroid/view/IWindow;
    :sswitch_4a5
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4be

    const/4 v3, 0x1

    .line 462
    .local v3, "_arg0":Z
    :goto_4b3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, setInTouchMode(Z)V

    .line 463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 461
    .end local v3    # "_arg0":Z
    :cond_4be
    const/4 v3, 0x0

    goto :goto_4b3

    .line 468
    :sswitch_4c0
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual/range {p0 .. p0}, getInTouchMode()Z

    move-result v20

    .line 470
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    if-eqz v20, :cond_4d9

    const/4 v2, 0x1

    :goto_4d1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 471
    :cond_4d9
    const/4 v2, 0x0

    goto :goto_4d1

    .line 476
    .end local v20    # "_result":Z
    :sswitch_4db
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 480
    .local v3, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 482
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_509

    const/4 v5, 0x1

    .line 483
    .local v5, "_arg2":Z
    :goto_4f5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, performHapticFeedback(Landroid/view/IWindow;IZ)Z

    move-result v20

    .line 484
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    if-eqz v20, :cond_50b

    const/4 v2, 0x1

    :goto_501
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 482
    .end local v5    # "_arg2":Z
    .end local v20    # "_result":Z
    :cond_509
    const/4 v5, 0x0

    goto :goto_4f5

    .line 485
    .restart local v5    # "_arg2":Z
    .restart local v20    # "_result":Z
    :cond_50b
    const/4 v2, 0x0

    goto :goto_501

    .line 490
    .end local v3    # "_arg0":Landroid/view/IWindow;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Z
    .end local v20    # "_result":Z
    :sswitch_50d
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 494
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 496
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 498
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 500
    .local v6, "_arg3":I
    new-instance v7, Landroid/view/Surface;

    invoke-direct {v7}, Landroid/view/Surface;-><init>()V

    .local v7, "_arg4":Landroid/view/Surface;
    move-object/from16 v2, p0

    .line 501
    invoke-virtual/range {v2 .. v7}, prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v20

    .line 502
    .local v20, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 504
    if-eqz v7, :cond_54e

    .line 505
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v7, v0, v2}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 511
    :goto_54b
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 509
    :cond_54e
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_54b

    .line 515
    .end local v3    # "_arg0":Landroid/view/IWindow;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Landroid/view/Surface;
    .end local v20    # "_result":Landroid/os/IBinder;
    :sswitch_555
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 519
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 521
    .local v4, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 523
    .local v5, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 525
    .local v6, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 527
    .local v7, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 529
    .local v8, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_59c

    .line 530
    sget-object v2, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ClipData;

    .local v9, "_arg6":Landroid/content/ClipData;
    :goto_588
    move-object/from16 v2, p0

    .line 535
    invoke-virtual/range {v2 .. v9}, performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z

    move-result v20

    .line 536
    .local v20, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    if-eqz v20, :cond_59e

    const/4 v2, 0x1

    :goto_594
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 533
    .end local v9    # "_arg6":Landroid/content/ClipData;
    .end local v20    # "_result":Z
    :cond_59c
    const/4 v9, 0x0

    .restart local v9    # "_arg6":Landroid/content/ClipData;
    goto :goto_588

    .line 537
    .restart local v20    # "_result":Z
    :cond_59e
    const/4 v2, 0x0

    goto :goto_594

    .line 542
    .end local v3    # "_arg0":Landroid/view/IWindow;
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v5    # "_arg2":F
    .end local v6    # "_arg3":F
    .end local v7    # "_arg4":F
    .end local v8    # "_arg5":F
    .end local v9    # "_arg6":Landroid/content/ClipData;
    .end local v20    # "_result":Z
    :sswitch_5a0
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 546
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5c1

    const/4 v4, 0x1

    .line 547
    .local v4, "_arg1":Z
    :goto_5b6
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, reportDropResult(Landroid/view/IWindow;Z)V

    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 546
    .end local v4    # "_arg1":Z
    :cond_5c1
    const/4 v4, 0x0

    goto :goto_5b6

    .line 553
    .end local v3    # "_arg0":Landroid/view/IWindow;
    :sswitch_5c3
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 556
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, dragRecipientEntered(Landroid/view/IWindow;)V

    .line 557
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 562
    .end local v3    # "_arg0":Landroid/view/IWindow;
    :sswitch_5dd
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 565
    .restart local v3    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, dragRecipientExited(Landroid/view/IWindow;)V

    .line 566
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 571
    .end local v3    # "_arg0":Landroid/view/IWindow;
    :sswitch_5f7
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 575
    .local v3, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 577
    .local v4, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 579
    .restart local v5    # "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 581
    .restart local v6    # "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .restart local v7    # "_arg4":F
    move-object/from16 v2, p0

    .line 582
    invoke-virtual/range {v2 .. v7}, setWallpaperPosition(Landroid/os/IBinder;FFFF)V

    .line 583
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 588
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":F
    .end local v5    # "_arg2":F
    .end local v6    # "_arg3":F
    .end local v7    # "_arg4":F
    :sswitch_61d
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 591
    .restart local v3    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    .line 592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 597
    .end local v3    # "_arg0":Landroid/os/IBinder;
    :sswitch_633
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 601
    .restart local v3    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 603
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 604
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, setWallpaperDisplayOffset(Landroid/os/IBinder;II)V

    .line 605
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 610
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :sswitch_651
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 614
    .restart local v3    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 616
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 618
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 620
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 622
    .local v7, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_69f

    .line 623
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 629
    .local v8, "_arg5":Landroid/os/Bundle;
    :goto_67c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6a1

    const/4 v9, 0x1

    .local v9, "_arg6":Z
    :goto_683
    move-object/from16 v2, p0

    .line 630
    invoke-virtual/range {v2 .. v9}, sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v20

    .line 631
    .local v20, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    if-eqz v20, :cond_6a3

    .line 633
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    const/4 v2, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 639
    :goto_69c
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 626
    .end local v8    # "_arg5":Landroid/os/Bundle;
    .end local v9    # "_arg6":Z
    .end local v20    # "_result":Landroid/os/Bundle;
    :cond_69f
    const/4 v8, 0x0

    .restart local v8    # "_arg5":Landroid/os/Bundle;
    goto :goto_67c

    .line 629
    :cond_6a1
    const/4 v9, 0x0

    goto :goto_683

    .line 637
    .restart local v9    # "_arg6":Z
    .restart local v20    # "_result":Landroid/os/Bundle;
    :cond_6a3
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_69c

    .line 643
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":Landroid/os/Bundle;
    .end local v9    # "_arg6":Z
    .end local v20    # "_result":Landroid/os/Bundle;
    :sswitch_6aa
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 647
    .restart local v3    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6d0

    .line 648
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 653
    .local v4, "_arg1":Landroid/os/Bundle;
    :goto_6c5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 654
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 651
    .end local v4    # "_arg1":Landroid/os/Bundle;
    :cond_6d0
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/os/Bundle;
    goto :goto_6c5

    .line 659
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Landroid/os/Bundle;
    :sswitch_6d2
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 663
    .restart local v3    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6f8

    .line 664
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 669
    .local v4, "_arg1":Landroid/graphics/Rect;
    :goto_6ed
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 670
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 667
    .end local v4    # "_arg1":Landroid/graphics/Rect;
    :cond_6f8
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/graphics/Rect;
    goto :goto_6ed

    .line 675
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Landroid/graphics/Rect;
    :sswitch_6fa
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 678
    .restart local v3    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v20

    .line 679
    .local v20, "_result":Landroid/view/IWindowId;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    if-eqz v20, :cond_71c

    invoke-interface/range {v20 .. v20}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_714
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 681
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 680
    :cond_71c
    const/4 v2, 0x0

    goto :goto_714

    .line 685
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v20    # "_result":Landroid/view/IWindowId;
    :sswitch_71e
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 687
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 688
    .restart local v3    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, pokeDrawLock(Landroid/os/IBinder;)V

    .line 689
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 694
    .end local v3    # "_arg0":Landroid/os/IBinder;
    :sswitch_734
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 698
    .local v3, "_arg0":Landroid/view/IWindow;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 699
    .restart local v4    # "_arg1":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, getContentFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V

    .line 700
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    if-eqz v4, :cond_761

    .line 702
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 708
    :goto_75e
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 706
    :cond_761
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_75e

    .line 712
    .end local v3    # "_arg0":Landroid/view/IWindow;
    .end local v4    # "_arg1":Landroid/graphics/Rect;
    :sswitch_768
    const-string v2, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 713
    invoke-virtual/range {p0 .. p0}, getCoverStateSwitch()Z

    move-result v20

    .line 714
    .local v20, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    if-eqz v20, :cond_781

    const/4 v2, 0x1

    :goto_779
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 716
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 715
    :cond_781
    const/4 v2, 0x0

    goto :goto_779

    .line 43
    nop

    :sswitch_data_784
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_9a
        0x3 -> :sswitch_142
        0x4 -> :sswitch_1b2
        0x5 -> :sswitch_226
        0x6 -> :sswitch_240
        0x7 -> :sswitch_398
        0x8 -> :sswitch_3b2
        0x9 -> :sswitch_3d7
        0xa -> :sswitch_403
        0xb -> :sswitch_457
        0xc -> :sswitch_48b
        0xd -> :sswitch_4a5
        0xe -> :sswitch_4c0
        0xf -> :sswitch_4db
        0x10 -> :sswitch_50d
        0x11 -> :sswitch_555
        0x12 -> :sswitch_5a0
        0x13 -> :sswitch_5c3
        0x14 -> :sswitch_5dd
        0x15 -> :sswitch_5f7
        0x16 -> :sswitch_61d
        0x17 -> :sswitch_633
        0x18 -> :sswitch_651
        0x19 -> :sswitch_6aa
        0x1a -> :sswitch_6d2
        0x1b -> :sswitch_6fa
        0x1c -> :sswitch_71e
        0x1d -> :sswitch_734
        0x1e -> :sswitch_768
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
