.class public abstract Landroid/service/notification/INotificationListener$Stub;
.super Landroid/os/Binder;
.source "INotificationListener.java"

# interfaces
.implements Landroid/service/notification/INotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/INotificationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/INotificationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.notification.INotificationListener"

.field static final TRANSACTION_onEdgeNotificationPosted:I = 0x7

.field static final TRANSACTION_onEdgeNotificationRemoved:I = 0x8

.field static final TRANSACTION_onInterruptionFilterChanged:I = 0x6

.field static final TRANSACTION_onListenerConnected:I = 0x1

.field static final TRANSACTION_onListenerHintsChanged:I = 0x5

.field static final TRANSACTION_onNotificationPosted:I = 0x2

.field static final TRANSACTION_onNotificationRankingUpdate:I = 0x4

.field static final TRANSACTION_onNotificationRemoved:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.service.notification.INotificationListener"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;
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
    const-string v1, "android.service.notification.INotificationListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/notification/INotificationListener;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/service/notification/INotificationListener;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/service/notification/INotificationListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/service/notification/INotificationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 10
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
    const/4 v3, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_e4

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 43
    :sswitch_9
    const-string v4, "android.service.notification.INotificationListener"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 48
    :sswitch_f
    const-string v4, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_26

    .line 51
    sget-object v4, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/NotificationRankingUpdate;

    .line 56
    .local v0, "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    :goto_22
    invoke-virtual {p0, v0}, onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;)V

    goto :goto_8

    .line 54
    .end local v0    # "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    :cond_26
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    goto :goto_22

    .line 61
    .end local v0    # "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    :sswitch_28
    const-string v4, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    move-result-object v0

    .line 65
    .local v0, "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_47

    .line 66
    sget-object v4, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/NotificationRankingUpdate;

    .line 71
    .local v1, "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    :goto_43
    invoke-virtual {p0, v0, v1}, onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V

    goto :goto_8

    .line 69
    .end local v1    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    :cond_47
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    goto :goto_43

    .line 76
    .end local v0    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    .end local v1    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    :sswitch_49
    const-string v4, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    move-result-object v0

    .line 80
    .restart local v0    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_68

    .line 81
    sget-object v4, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/NotificationRankingUpdate;

    .line 86
    .restart local v1    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    :goto_64
    invoke-virtual {p0, v0, v1}, onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V

    goto :goto_8

    .line 84
    .end local v1    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    :cond_68
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    goto :goto_64

    .line 91
    .end local v0    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    .end local v1    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    :sswitch_6a
    const-string v4, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_81

    .line 94
    sget-object v4, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/NotificationRankingUpdate;

    .line 99
    .local v0, "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    :goto_7d
    invoke-virtual {p0, v0}, onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;)V

    goto :goto_8

    .line 97
    .end local v0    # "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    :cond_81
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    goto :goto_7d

    .line 104
    .end local v0    # "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    :sswitch_83
    const-string v4, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, onListenerHintsChanged(I)V

    goto/16 :goto_8

    .line 112
    .end local v0    # "_arg0":I
    :sswitch_91
    const-string v4, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 115
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, onInterruptionFilterChanged(I)V

    goto/16 :goto_8

    .line 120
    .end local v0    # "_arg0":I
    :sswitch_9f
    const-string v4, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 126
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_bf

    .line 127
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 132
    .local v2, "_arg2":Landroid/os/Bundle;
    :goto_ba
    invoke-virtual {p0, v0, v1, v2}, onEdgeNotificationPosted(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto/16 :goto_8

    .line 130
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :cond_bf
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_ba

    .line 137
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :sswitch_c1
    const-string v4, "android.service.notification.INotificationListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 143
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e1

    .line 144
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 149
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_dc
    invoke-virtual {p0, v0, v1, v2}, onEdgeNotificationRemoved(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto/16 :goto_8

    .line 147
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :cond_e1
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_dc

    .line 39
    nop

    :sswitch_data_e4
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_28
        0x3 -> :sswitch_49
        0x4 -> :sswitch_6a
        0x5 -> :sswitch_83
        0x6 -> :sswitch_91
        0x7 -> :sswitch_9f
        0x8 -> :sswitch_c1
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
