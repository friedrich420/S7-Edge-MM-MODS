.class public abstract Landroid/view/IWindow$Stub;
.super Landroid/os/Binder;
.source "IWindow.java"

# interfaces
.implements Landroid/view/IWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindow$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindow"

.field static final TRANSACTION_closeSystemDialogs:I = 0x8

.field static final TRANSACTION_dispatchAppVisibility:I = 0x5

.field static final TRANSACTION_dispatchAttachedDisplayChanged:I = 0x3

.field static final TRANSACTION_dispatchCoverStateChanged:I = 0x11

.field static final TRANSACTION_dispatchDragEvent:I = 0xb

.field static final TRANSACTION_dispatchGetNewSurface:I = 0x6

.field static final TRANSACTION_dispatchMultiWindowStateChanged:I = 0x13

.field static final TRANSACTION_dispatchSmartClipRemoteRequest:I = 0x10

.field static final TRANSACTION_dispatchSystemUiVisibilityChanged:I = 0xc

.field static final TRANSACTION_dispatchWallpaperCommand:I = 0xa

.field static final TRANSACTION_dispatchWallpaperOffsets:I = 0x9

.field static final TRANSACTION_dispatchWindowShown:I = 0xf

.field static final TRANSACTION_executeCommand:I = 0x1

.field static final TRANSACTION_moved:I = 0x4

.field static final TRANSACTION_onAnimationStarted:I = 0xd

.field static final TRANSACTION_onAnimationStopped:I = 0xe

.field static final TRANSACTION_onSurfaceDestroyDeferred:I = 0x12

.field static final TRANSACTION_resized:I = 0x2

.field static final TRANSACTION_windowFocusChanged:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.view.IWindow"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_3
    return-object v0

    .line 32
    :cond_4
    const-string v1, "android.view.IWindow"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/IWindow;

    if-eqz v1, :cond_13

    .line 34
    check-cast v0, Landroid/view/IWindow;

    goto :goto_3

    .line 36
    :cond_13
    new-instance v0, Landroid/view/IWindow$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/view/IWindow$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
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

    const/4 v10, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_226

    .line 306
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    :goto_9
    return v10

    .line 48
    :sswitch_a
    const-string v0, "android.view.IWindow"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 53
    :sswitch_10
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 60
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 65
    .local v3, "_arg2":Landroid/os/ParcelFileDescriptor;
    :goto_2b
    invoke-virtual {p0, v1, v2, v3}, executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_9

    .line 63
    .end local v3    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :cond_2f
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/ParcelFileDescriptor;
    goto :goto_2b

    .line 70
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :sswitch_31
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b3

    .line 73
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 79
    .local v1, "_arg0":Landroid/graphics/Rect;
    :goto_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b5

    .line 80
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 86
    .local v2, "_arg1":Landroid/graphics/Rect;
    :goto_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b7

    .line 87
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 93
    .local v3, "_arg2":Landroid/graphics/Rect;
    :goto_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b9

    .line 94
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 100
    .local v4, "_arg3":Landroid/graphics/Rect;
    :goto_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_bb

    .line 101
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 107
    .local v5, "_arg4":Landroid/graphics/Rect;
    :goto_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_bd

    .line 108
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 114
    .local v6, "_arg5":Landroid/graphics/Rect;
    :goto_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_91

    move v7, v10

    .line 116
    .local v7, "_arg6":Z
    :cond_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_bf

    .line 117
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/Configuration;

    .line 123
    .local v8, "_arg7":Landroid/content/res/Configuration;
    :goto_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c1

    .line 124
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .local v9, "_arg8":Landroid/graphics/Rect;
    :goto_ad
    move-object v0, p0

    .line 129
    invoke-virtual/range {v0 .. v9}, resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;Landroid/graphics/Rect;)V

    goto/16 :goto_9

    .line 76
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    .end local v3    # "_arg2":Landroid/graphics/Rect;
    .end local v4    # "_arg3":Landroid/graphics/Rect;
    .end local v5    # "_arg4":Landroid/graphics/Rect;
    .end local v6    # "_arg5":Landroid/graphics/Rect;
    .end local v7    # "_arg6":Z
    .end local v8    # "_arg7":Landroid/content/res/Configuration;
    .end local v9    # "_arg8":Landroid/graphics/Rect;
    :cond_b3
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/graphics/Rect;
    goto :goto_44

    .line 83
    :cond_b5
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/graphics/Rect;
    goto :goto_52

    .line 90
    :cond_b7
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/graphics/Rect;
    goto :goto_60

    .line 97
    :cond_b9
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/graphics/Rect;
    goto :goto_6e

    .line 104
    :cond_bb
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/graphics/Rect;
    goto :goto_7c

    .line 111
    :cond_bd
    const/4 v6, 0x0

    .restart local v6    # "_arg5":Landroid/graphics/Rect;
    goto :goto_8a

    .line 120
    .restart local v7    # "_arg6":Z
    :cond_bf
    const/4 v8, 0x0

    .restart local v8    # "_arg7":Landroid/content/res/Configuration;
    goto :goto_9f

    .line 127
    :cond_c1
    const/4 v9, 0x0

    .restart local v9    # "_arg8":Landroid/graphics/Rect;
    goto :goto_ad

    .line 134
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    .end local v3    # "_arg2":Landroid/graphics/Rect;
    .end local v4    # "_arg3":Landroid/graphics/Rect;
    .end local v5    # "_arg4":Landroid/graphics/Rect;
    .end local v6    # "_arg5":Landroid/graphics/Rect;
    .end local v7    # "_arg6":Z
    .end local v8    # "_arg7":Landroid/content/res/Configuration;
    .end local v9    # "_arg8":Landroid/graphics/Rect;
    :sswitch_c3
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 137
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, dispatchAttachedDisplayChanged(I)V

    goto/16 :goto_9

    .line 142
    .end local v1    # "_arg0":I
    :sswitch_d1
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 146
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 147
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, moved(II)V

    goto/16 :goto_9

    .line 152
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_e3
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f4

    move v1, v10

    .line 155
    .local v1, "_arg0":Z
    :goto_ef
    invoke-virtual {p0, v1}, dispatchAppVisibility(Z)V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_f4
    move v1, v7

    .line 154
    goto :goto_ef

    .line 160
    :sswitch_f6
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, dispatchGetNewSurface()V

    goto/16 :goto_9

    .line 166
    :sswitch_100
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11f

    move v1, v10

    .line 170
    .restart local v1    # "_arg0":Z
    :goto_10c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_121

    move v2, v10

    .line 172
    .local v2, "_arg1":Z
    :goto_113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_123

    move v3, v10

    .line 173
    .local v3, "_arg2":Z
    :goto_11a
    invoke-virtual {p0, v1, v2, v3}, windowFocusChanged(ZZZ)V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    :cond_11f
    move v1, v7

    .line 168
    goto :goto_10c

    .restart local v1    # "_arg0":Z
    :cond_121
    move v2, v7

    .line 170
    goto :goto_113

    .restart local v2    # "_arg1":Z
    :cond_123
    move v3, v7

    .line 172
    goto :goto_11a

    .line 178
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    :sswitch_125
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, closeSystemDialogs(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 186
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_133
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 190
    .local v1, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 192
    .local v2, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 194
    .local v3, "_arg2":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 196
    .local v4, "_arg3":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_155

    move v5, v10

    .local v5, "_arg4":Z
    :goto_14f
    move-object v0, p0

    .line 197
    invoke-virtual/range {v0 .. v5}, dispatchWallpaperOffsets(FFFFZ)V

    goto/16 :goto_9

    .end local v5    # "_arg4":Z
    :cond_155
    move v5, v7

    .line 196
    goto :goto_14f

    .line 202
    .end local v1    # "_arg0":F
    .end local v2    # "_arg1":F
    .end local v3    # "_arg2":F
    .end local v4    # "_arg3":F
    :sswitch_157
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 208
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 210
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 212
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_187

    .line 213
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 219
    .local v5, "_arg4":Landroid/os/Bundle;
    :goto_17a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_189

    move v6, v10

    .local v6, "_arg5":Z
    :goto_181
    move-object v0, p0

    .line 220
    invoke-virtual/range {v0 .. v6}, dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    goto/16 :goto_9

    .line 216
    .end local v5    # "_arg4":Landroid/os/Bundle;
    .end local v6    # "_arg5":Z
    :cond_187
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/os/Bundle;
    goto :goto_17a

    :cond_189
    move v6, v7

    .line 219
    goto :goto_181

    .line 225
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :sswitch_18b
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a3

    .line 228
    sget-object v0, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/DragEvent;

    .line 233
    .local v1, "_arg0":Landroid/view/DragEvent;
    :goto_19e
    invoke-virtual {p0, v1}, dispatchDragEvent(Landroid/view/DragEvent;)V

    goto/16 :goto_9

    .line 231
    .end local v1    # "_arg0":Landroid/view/DragEvent;
    :cond_1a3
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/view/DragEvent;
    goto :goto_19e

    .line 238
    .end local v1    # "_arg0":Landroid/view/DragEvent;
    :sswitch_1a5
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 242
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 244
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 246
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 247
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, dispatchSystemUiVisibilityChanged(IIII)V

    goto/16 :goto_9

    .line 252
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :sswitch_1bf
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 255
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, onAnimationStarted(I)V

    goto/16 :goto_9

    .line 260
    .end local v1    # "_arg0":I
    :sswitch_1cd
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, onAnimationStopped()V

    goto/16 :goto_9

    .line 266
    :sswitch_1d7
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, dispatchWindowShown()V

    goto/16 :goto_9

    .line 272
    :sswitch_1e1
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f9

    .line 275
    sget-object v0, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    .line 280
    .local v1, "_arg0":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    :goto_1f4
    invoke-virtual {p0, v1}, dispatchSmartClipRemoteRequest(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V

    goto/16 :goto_9

    .line 278
    .end local v1    # "_arg0":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    :cond_1f9
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    goto :goto_1f4

    .line 285
    .end local v1    # "_arg0":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    :sswitch_1fb
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20c

    move v1, v10

    .line 288
    .local v1, "_arg0":Z
    :goto_207
    invoke-virtual {p0, v1}, dispatchCoverStateChanged(Z)V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_20c
    move v1, v7

    .line 287
    goto :goto_207

    .line 293
    :sswitch_20e
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, onSurfaceDestroyDeferred()V

    goto/16 :goto_9

    .line 299
    :sswitch_218
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 302
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, dispatchMultiWindowStateChanged(I)V

    goto/16 :goto_9

    .line 44
    :sswitch_data_226
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_31
        0x3 -> :sswitch_c3
        0x4 -> :sswitch_d1
        0x5 -> :sswitch_e3
        0x6 -> :sswitch_f6
        0x7 -> :sswitch_100
        0x8 -> :sswitch_125
        0x9 -> :sswitch_133
        0xa -> :sswitch_157
        0xb -> :sswitch_18b
        0xc -> :sswitch_1a5
        0xd -> :sswitch_1bf
        0xe -> :sswitch_1cd
        0xf -> :sswitch_1d7
        0x10 -> :sswitch_1e1
        0x11 -> :sswitch_1fb
        0x12 -> :sswitch_20e
        0x13 -> :sswitch_218
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
