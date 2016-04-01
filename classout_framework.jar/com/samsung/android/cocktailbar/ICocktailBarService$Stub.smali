.class public abstract Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;
.super Landroid/os/Binder;
.source "ICocktailBarService.java"

# interfaces
.implements Lcom/samsung/android/cocktailbar/ICocktailBarService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/ICocktailBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.cocktailbar.ICocktailBarService"

.field static final TRANSACTION_activateCocktailBar:I = 0x2b

.field static final TRANSACTION_bindRemoteViewsService:I = 0x14

.field static final TRANSACTION_closeCocktail:I = 0xc

.field static final TRANSACTION_cocktailBarreboot:I = 0x3e

.field static final TRANSACTION_cocktailBarshutdown:I = 0x3d

.field static final TRANSACTION_deactivateCocktailBar:I = 0x2c

.field static final TRANSACTION_disableCocktail:I = 0xe

.field static final TRANSACTION_getAllCocktailIds:I = 0x6

.field static final TRANSACTION_getCocktaiBarWakeUpState:I = 0x38

.field static final TRANSACTION_getCocktail:I = 0x7

.field static final TRANSACTION_getCocktailBarStateInfo:I = 0x28

.field static final TRANSACTION_getCocktailBarVisibility:I = 0x27

.field static final TRANSACTION_getCocktailId:I = 0xd

.field static final TRANSACTION_getCocktailIds:I = 0xf

.field static final TRANSACTION_getEnabledCocktailIds:I = 0x5

.field static final TRANSACTION_getWindowType:I = 0x2a

.field static final TRANSACTION_isAllowTransientBarCocktailBar:I = 0x3a

.field static final TRANSACTION_isBoundCocktailPackage:I = 0x10

.field static final TRANSACTION_isEnabledCocktail:I = 0x11

.field static final TRANSACTION_notifyCocktailViewDataChanged:I = 0x12

.field static final TRANSACTION_notifyCocktailVisibiltyChanged:I = 0x1b

.field static final TRANSACTION_notifyKeyguardState:I = 0x1a

.field static final TRANSACTION_partiallyUpdateCocktail:I = 0x9

.field static final TRANSACTION_partiallyUpdateHelpView:I = 0xa

.field static final TRANSACTION_registerClient:I = 0x2d

.field static final TRANSACTION_registerCocktailBarFeedsListenerCallback:I = 0x25

.field static final TRANSACTION_registerCocktailBarStateListenerCallback:I = 0x23

.field static final TRANSACTION_removeCocktailUIService:I = 0x3c

.field static final TRANSACTION_requestToDisableCocktail:I = 0x17

.field static final TRANSACTION_requestToDisableCocktailByCategory:I = 0x19

.field static final TRANSACTION_requestToUpdateCocktail:I = 0x16

.field static final TRANSACTION_requestToUpdateCocktailByCategory:I = 0x18

.field static final TRANSACTION_sendDragEvent:I = 0x1c

.field static final TRANSACTION_sendExtraDataToCocktailBar:I = 0x3b

.field static final TRANSACTION_setCocktailBarStatus:I = 0x22

.field static final TRANSACTION_setCocktailBarWakeUpState:I = 0x37

.field static final TRANSACTION_setCocktailHostCallbacks:I = 0x1

.field static final TRANSACTION_setDisableTickerView:I = 0x2f

.field static final TRANSACTION_setEnabledCocktailIds:I = 0x4

.field static final TRANSACTION_showAndLockCocktailBar:I = 0x1d

.field static final TRANSACTION_showCocktail:I = 0xb

.field static final TRANSACTION_startListening:I = 0x2

.field static final TRANSACTION_stopListening:I = 0x3

.field static final TRANSACTION_switchDefaultCocktail:I = 0x39

.field static final TRANSACTION_unbindRemoteViewsService:I = 0x15

.field static final TRANSACTION_unlockCocktailBar:I = 0x1e

.field static final TRANSACTION_unregisterClient:I = 0x2e

.field static final TRANSACTION_unregisterCocktailBarFeedsListenerCallback:I = 0x26

.field static final TRANSACTION_unregisterCocktailBarStateListenerCallback:I = 0x24

.field static final TRANSACTION_updateCocktail:I = 0x8

.field static final TRANSACTION_updateCocktailBarPosition:I = 0x21

.field static final TRANSACTION_updateCocktailBarStateFromSystem:I = 0x20

.field static final TRANSACTION_updateCocktailBarVisibility:I = 0x1f

.field static final TRANSACTION_updateCocktailBarWindowType:I = 0x29

.field static final TRANSACTION_updateFeeds:I = 0x13

.field static final TRANSACTION_updateLongpressGesture:I = 0x32

.field static final TRANSACTION_updateSysfsBarLength:I = 0x34

.field static final TRANSACTION_updateSysfsDeadZone:I = 0x33

.field static final TRANSACTION_updateSysfsGripDisable:I = 0x35

.field static final TRANSACTION_updateWakeupArea:I = 0x31

.field static final TRANSACTION_updateWakeupGesture:I = 0x30

.field static final TRANSACTION_wakeupCocktailBar:I = 0x36


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarService;
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
    const-string v1, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/samsung/android/cocktailbar/ICocktailBarService;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_5d2

    .line 753
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 43
    :sswitch_a
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailHost;

    move-result-object v0

    .line 52
    .local v0, "_arg0":Lcom/samsung/android/cocktailbar/ICocktailHost;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 61
    .end local v0    # "_arg0":Lcom/samsung/android/cocktailbar/ICocktailHost;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :sswitch_2c
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailHost;

    move-result-object v0

    .line 65
    .restart local v0    # "_arg0":Lcom/samsung/android/cocktailbar/ICocktailHost;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 67
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 68
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 74
    .end local v0    # "_arg0":Lcom/samsung/android/cocktailbar/ICocktailHost;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :sswitch_48
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, stopListening(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 83
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_58
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 86
    .local v0, "_arg0":[I
    invoke-virtual {p0, v0}, setEnabledCocktailIds([I)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 92
    .end local v0    # "_arg0":[I
    :sswitch_68
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, getEnabledCocktailIds()[I

    move-result-object v5

    .line 94
    .local v5, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_9

    .line 100
    .end local v5    # "_result":[I
    :sswitch_78
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, getAllCocktailIds()[I

    move-result-object v5

    .line 102
    .restart local v5    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_9

    .line 108
    .end local v5    # "_result":[I
    :sswitch_88
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v5

    .line 112
    .local v5, "_result":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v5, :cond_a2

    .line 114
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    invoke-virtual {v5, p3, v7}, Lcom/samsung/android/cocktailbar/Cocktail;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 118
    :cond_a2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 124
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Lcom/samsung/android/cocktailbar/Cocktail;
    :sswitch_a7
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ca

    .line 129
    sget-object v6, Lcom/samsung/android/cocktailbar/CocktailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/CocktailInfo;

    .line 135
    .local v1, "_arg1":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :goto_be
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 136
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, updateCocktail(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailInfo;I)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 132
    .end local v1    # "_arg1":Lcom/samsung/android/cocktailbar/CocktailInfo;
    .end local v2    # "_arg2":I
    :cond_ca
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/samsung/android/cocktailbar/CocktailInfo;
    goto :goto_be

    .line 142
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :sswitch_cc
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ef

    .line 147
    sget-object v6, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 153
    .local v1, "_arg1":Landroid/widget/RemoteViews;
    :goto_e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 154
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, partiallyUpdateCocktail(Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 150
    .end local v1    # "_arg1":Landroid/widget/RemoteViews;
    .end local v2    # "_arg2":I
    :cond_ef
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/widget/RemoteViews;
    goto :goto_e3

    .line 160
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/widget/RemoteViews;
    :sswitch_f1
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_114

    .line 165
    sget-object v6, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 171
    .restart local v1    # "_arg1":Landroid/widget/RemoteViews;
    :goto_108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, partiallyUpdateHelpView(Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 168
    .end local v1    # "_arg1":Landroid/widget/RemoteViews;
    .end local v2    # "_arg2":I
    :cond_114
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/widget/RemoteViews;
    goto :goto_108

    .line 178
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/widget/RemoteViews;
    :sswitch_116
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 183
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, showCocktail(Ljava/lang/String;I)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 189
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_12b
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 193
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 195
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 196
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, closeCocktail(Ljava/lang/String;II)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 202
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_144
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_167

    .line 207
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 212
    .local v1, "_arg1":Landroid/content/ComponentName;
    :goto_15b
    invoke-virtual {p0, v0, v1}, getCocktailId(Ljava/lang/String;Landroid/content/ComponentName;)I

    move-result v5

    .line 213
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 210
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_result":I
    :cond_167
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_15b

    .line 219
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :sswitch_169
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_188

    .line 224
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 229
    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    :goto_180
    invoke-virtual {p0, v0, v1}, disableCocktail(Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 227
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :cond_188
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_180

    .line 235
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :sswitch_18a
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1ad

    .line 240
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 245
    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    :goto_1a1
    invoke-virtual {p0, v0, v1}, getCocktailIds(Ljava/lang/String;Landroid/content/ComponentName;)[I

    move-result-object v5

    .line 246
    .local v5, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_9

    .line 243
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_result":[I
    :cond_1ad
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_1a1

    .line 252
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :sswitch_1af
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 257
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, isBoundCocktailPackage(Ljava/lang/String;I)Z

    move-result v5

    .line 258
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    if-eqz v5, :cond_1c6

    move v6, v7

    :cond_1c6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 264
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v5    # "_result":Z
    :sswitch_1cb
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1f1

    .line 269
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 274
    .local v1, "_arg1":Landroid/content/ComponentName;
    :goto_1e2
    invoke-virtual {p0, v0, v1}, isEnabledCocktail(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v5

    .line 275
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    if-eqz v5, :cond_1ec

    move v6, v7

    :cond_1ec
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 272
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_result":Z
    :cond_1f1
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_1e2

    .line 281
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :sswitch_1f3
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 285
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 287
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 288
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, notifyCocktailViewDataChanged(Ljava/lang/String;II)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 294
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_20c
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 298
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 300
    .restart local v1    # "_arg1":I
    sget-object v6, Lcom/samsung/android/cocktailbar/FeedsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 301
    .local v3, "_arg2":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/FeedsInfo;>;"
    invoke-virtual {p0, v0, v1, v3}, updateFeeds(Ljava/lang/String;ILjava/util/List;)V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 307
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/FeedsInfo;>;"
    :sswitch_227
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 311
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 313
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_24e

    .line 314
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 320
    .local v2, "_arg2":Landroid/content/Intent;
    :goto_242
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 321
    .local v4, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2, v4}, bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 317
    .end local v2    # "_arg2":Landroid/content/Intent;
    .end local v4    # "_arg3":Landroid/os/IBinder;
    :cond_24e
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/content/Intent;
    goto :goto_242

    .line 327
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/Intent;
    :sswitch_250
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 331
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 333
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_273

    .line 334
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 339
    .restart local v2    # "_arg2":Landroid/content/Intent;
    :goto_26b
    invoke-virtual {p0, v0, v1, v2}, unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 337
    .end local v2    # "_arg2":Landroid/content/Intent;
    :cond_273
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/content/Intent;
    goto :goto_26b

    .line 345
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/Intent;
    :sswitch_275
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 348
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, requestToUpdateCocktail(I)Z

    move-result v5

    .line 349
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    if-eqz v5, :cond_288

    move v6, v7

    :cond_288
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 355
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_28d
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 358
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, requestToDisableCocktail(I)Z

    move-result v5

    .line 359
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    if-eqz v5, :cond_2a0

    move v6, v7

    :cond_2a0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 365
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_2a5
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 368
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, requestToUpdateCocktailByCategory(I)Z

    move-result v5

    .line 369
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    if-eqz v5, :cond_2b8

    move v6, v7

    :cond_2b8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 375
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_2bd
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 378
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, requestToDisableCocktailByCategory(I)Z

    move-result v5

    .line 379
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    if-eqz v5, :cond_2d0

    move v6, v7

    :cond_2d0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 385
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_2d5
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2e9

    move v0, v7

    .line 388
    .local v0, "_arg0":Z
    :goto_2e1
    invoke-virtual {p0, v0}, notifyKeyguardState(Z)V

    .line 389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_2e9
    move v0, v6

    .line 387
    goto :goto_2e1

    .line 394
    :sswitch_2eb
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 398
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 399
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, notifyCocktailVisibiltyChanged(II)V

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 405
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_300
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 409
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_31f

    .line 410
    sget-object v6, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/DragEvent;

    .line 415
    .local v1, "_arg1":Landroid/view/DragEvent;
    :goto_317
    invoke-virtual {p0, v0, v1}, sendDragEvent(ILandroid/view/DragEvent;)V

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 413
    .end local v1    # "_arg1":Landroid/view/DragEvent;
    :cond_31f
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/view/DragEvent;
    goto :goto_317

    .line 421
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/DragEvent;
    :sswitch_321
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, showAndLockCocktailBar()V

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 428
    :sswitch_32e
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 431
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, unlockCocktailBar(I)V

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 437
    .end local v0    # "_arg0":I
    :sswitch_33f
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 440
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, updateCocktailBarVisibility(I)V

    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 446
    .end local v0    # "_arg0":I
    :sswitch_350
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 449
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, updateCocktailBarStateFromSystem(I)V

    .line 450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 455
    .end local v0    # "_arg0":I
    :sswitch_361
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 458
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, updateCocktailBarPosition(I)V

    .line 459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 464
    .end local v0    # "_arg0":I
    :sswitch_372
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_38d

    move v0, v7

    .line 468
    .local v0, "_arg0":Z
    :goto_37e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_38f

    move v1, v7

    .line 469
    .local v1, "_arg1":Z
    :goto_385
    invoke-virtual {p0, v0, v1}, setCocktailBarStatus(ZZ)V

    .line 470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :cond_38d
    move v0, v6

    .line 466
    goto :goto_37e

    .restart local v0    # "_arg0":Z
    :cond_38f
    move v1, v6

    .line 468
    goto :goto_385

    .line 475
    .end local v0    # "_arg0":Z
    :sswitch_391
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 479
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3b0

    .line 480
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 485
    .local v1, "_arg1":Landroid/content/ComponentName;
    :goto_3a8
    invoke-virtual {p0, v0, v1}, registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 483
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :cond_3b0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_3a8

    .line 491
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :sswitch_3b2
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 494
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V

    .line 495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 500
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_3c3
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 504
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3e2

    .line 505
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 510
    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    :goto_3da
    invoke-virtual {p0, v0, v1}, registerCocktailBarFeedsListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 511
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 508
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :cond_3e2
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_3da

    .line 516
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :sswitch_3e4
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 519
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, unregisterCocktailBarFeedsListenerCallback(Landroid/os/IBinder;)V

    .line 520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 525
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_3f5
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p0}, getCocktailBarVisibility()I

    move-result v5

    .line 527
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 533
    .end local v5    # "_result":I
    :sswitch_406
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0}, getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v5

    .line 535
    .local v5, "_result":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    if-eqz v5, :cond_41c

    .line 537
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    invoke-virtual {v5, p3, v7}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 541
    :cond_41c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 547
    .end local v5    # "_result":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    :sswitch_421
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 552
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, updateCocktailBarWindowType(Ljava/lang/String;I)V

    .line 553
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 558
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_436
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p0}, getWindowType()I

    move-result v5

    .line 560
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 566
    .end local v5    # "_result":I
    :sswitch_447
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, activateCocktailBar()V

    .line 568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 573
    :sswitch_454
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0}, deactivateCocktailBar()V

    .line 575
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 580
    :sswitch_461
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 584
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_480

    .line 585
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 590
    .local v1, "_arg1":Landroid/content/ComponentName;
    :goto_478
    invoke-virtual {p0, v0, v1}, registerClient(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 591
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 588
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :cond_480
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_478

    .line 596
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :sswitch_482
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 599
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, unregisterClient(Landroid/os/IBinder;)V

    .line 600
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 605
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_493
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 608
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, setDisableTickerView(I)V

    .line 609
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 614
    .end local v0    # "_arg0":I
    :sswitch_4a4
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 618
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4bc

    move v1, v7

    .line 619
    .local v1, "_arg1":Z
    :goto_4b4
    invoke-virtual {p0, v0, v1}, updateWakeupGesture(IZ)V

    .line 620
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    :cond_4bc
    move v1, v6

    .line 618
    goto :goto_4b4

    .line 625
    .end local v0    # "_arg0":I
    :sswitch_4be
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 628
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, updateWakeupArea(I)V

    .line 629
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 634
    .end local v0    # "_arg0":I
    :sswitch_4cf
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4e3

    move v0, v7

    .line 637
    .local v0, "_arg0":Z
    :goto_4db
    invoke-virtual {p0, v0}, updateLongpressGesture(Z)V

    .line 638
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_4e3
    move v0, v6

    .line 636
    goto :goto_4db

    .line 643
    :sswitch_4e5
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 646
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, updateSysfsDeadZone(I)V

    .line 647
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 652
    .end local v0    # "_arg0":I
    :sswitch_4f6
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 655
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, updateSysfsBarLength(I)V

    .line 656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 661
    .end local v0    # "_arg0":I
    :sswitch_507
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_51b

    move v0, v7

    .line 664
    .local v0, "_arg0":Z
    :goto_513
    invoke-virtual {p0, v0}, updateSysfsGripDisable(Z)V

    .line 665
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_51b
    move v0, v6

    .line 663
    goto :goto_513

    .line 670
    :sswitch_51d
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_539

    move v0, v7

    .line 674
    .restart local v0    # "_arg0":Z
    :goto_529
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 676
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 677
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, wakeupCocktailBar(ZII)V

    .line 678
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :cond_539
    move v0, v6

    .line 672
    goto :goto_529

    .line 683
    :sswitch_53b
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_54f

    move v0, v7

    .line 686
    .restart local v0    # "_arg0":Z
    :goto_547
    invoke-virtual {p0, v0}, setCocktailBarWakeUpState(Z)V

    .line 687
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_54f
    move v0, v6

    .line 685
    goto :goto_547

    .line 692
    :sswitch_551
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0}, getCocktaiBarWakeUpState()Z

    move-result v5

    .line 694
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    if-eqz v5, :cond_560

    move v6, v7

    :cond_560
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 700
    .end local v5    # "_result":Z
    :sswitch_565
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p0}, switchDefaultCocktail()V

    .line 702
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 707
    :sswitch_572
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    invoke-virtual {p0}, isAllowTransientBarCocktailBar()Z

    move-result v5

    .line 709
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    if-eqz v5, :cond_581

    move v6, v7

    :cond_581
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 715
    .end local v5    # "_result":Z
    :sswitch_586
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5a1

    .line 718
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 723
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_599
    invoke-virtual {p0, v0}, sendExtraDataToCocktailBar(Landroid/os/Bundle;)V

    .line 724
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 721
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_5a1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_599

    .line 729
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_5a3
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0}, removeCocktailUIService()V

    .line 731
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 736
    :sswitch_5b0
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 739
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, cocktailBarshutdown(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 745
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_5c1
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 748
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, cocktailBarreboot(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 39
    :sswitch_data_5d2
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_48
        0x4 -> :sswitch_58
        0x5 -> :sswitch_68
        0x6 -> :sswitch_78
        0x7 -> :sswitch_88
        0x8 -> :sswitch_a7
        0x9 -> :sswitch_cc
        0xa -> :sswitch_f1
        0xb -> :sswitch_116
        0xc -> :sswitch_12b
        0xd -> :sswitch_144
        0xe -> :sswitch_169
        0xf -> :sswitch_18a
        0x10 -> :sswitch_1af
        0x11 -> :sswitch_1cb
        0x12 -> :sswitch_1f3
        0x13 -> :sswitch_20c
        0x14 -> :sswitch_227
        0x15 -> :sswitch_250
        0x16 -> :sswitch_275
        0x17 -> :sswitch_28d
        0x18 -> :sswitch_2a5
        0x19 -> :sswitch_2bd
        0x1a -> :sswitch_2d5
        0x1b -> :sswitch_2eb
        0x1c -> :sswitch_300
        0x1d -> :sswitch_321
        0x1e -> :sswitch_32e
        0x1f -> :sswitch_33f
        0x20 -> :sswitch_350
        0x21 -> :sswitch_361
        0x22 -> :sswitch_372
        0x23 -> :sswitch_391
        0x24 -> :sswitch_3b2
        0x25 -> :sswitch_3c3
        0x26 -> :sswitch_3e4
        0x27 -> :sswitch_3f5
        0x28 -> :sswitch_406
        0x29 -> :sswitch_421
        0x2a -> :sswitch_436
        0x2b -> :sswitch_447
        0x2c -> :sswitch_454
        0x2d -> :sswitch_461
        0x2e -> :sswitch_482
        0x2f -> :sswitch_493
        0x30 -> :sswitch_4a4
        0x31 -> :sswitch_4be
        0x32 -> :sswitch_4cf
        0x33 -> :sswitch_4e5
        0x34 -> :sswitch_4f6
        0x35 -> :sswitch_507
        0x36 -> :sswitch_51d
        0x37 -> :sswitch_53b
        0x38 -> :sswitch_551
        0x39 -> :sswitch_565
        0x3a -> :sswitch_572
        0x3b -> :sswitch_586
        0x3c -> :sswitch_5a3
        0x3d -> :sswitch_5b0
        0x3e -> :sswitch_5c1
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
