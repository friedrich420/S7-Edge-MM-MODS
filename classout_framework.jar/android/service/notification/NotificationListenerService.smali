.class public abstract Landroid/service/notification/NotificationListenerService;
.super Landroid/app/Service;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/NotificationListenerService$1;,
        Landroid/service/notification/NotificationListenerService$RankingMap;,
        Landroid/service/notification/NotificationListenerService$Ranking;,
        Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;
    }
.end annotation


# static fields
.field private static final EDGE_NOTIFICATION_PROCESS:Ljava/lang/String; = "com.samsung.android.service.peoplestripe"

.field public static final HINT_HOST_DISABLE_EFFECTS:I = 0x1

.field public static final INTERRUPTION_FILTER_ALARMS:I = 0x4

.field public static final INTERRUPTION_FILTER_ALL:I = 0x1

.field public static final INTERRUPTION_FILTER_NONE:I = 0x3

.field public static final INTERRUPTION_FILTER_PRIORITY:I = 0x2

.field public static final INTERRUPTION_FILTER_UNKNOWN:I = 0x0

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.notification.NotificationListenerService"

.field public static final TRIM_FULL:I = 0x0

.field public static final TRIM_LIGHT:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCurrentUser:I

.field private mNoMan:Landroid/app/INotificationManager;

.field private mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private mSystemContext:Landroid/content/Context;

.field private mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, TAG:Ljava/lang/String;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    .line 917
    return-void
.end method

.method static synthetic access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/service/notification/NotificationListenerService;

    .prologue
    .line 64
    iget-object v0, p0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/service/notification/NotificationListenerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/service/notification/NotificationListenerService;

    .prologue
    .line 64
    invoke-direct {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/service/notification/NotificationListenerService;Landroid/app/Notification;)V
    .registers 2
    .param p0, "x0"    # Landroid/service/notification/NotificationListenerService;
    .param p1, "x1"    # Landroid/app/Notification;

    .prologue
    .line 64
    invoke-direct {p0, p1}, createLegacyIconExtras(Landroid/app/Notification;)V

    return-void
.end method

.method static synthetic access$400(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;
    .registers 2
    .param p0, "x0"    # Landroid/service/notification/NotificationListenerService;

    .prologue
    .line 64
    iget-object v0, p0, mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    return-object v0
.end method

.method static synthetic access$500(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 2
    .param p0, "x0"    # Landroid/service/notification/NotificationListenerService;
    .param p1, "x1"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    .line 64
    invoke-direct {p0, p1}, applyUpdate(Landroid/service/notification/NotificationRankingUpdate;)V

    return-void
.end method

.method static synthetic access$600(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .registers 2
    .param p0, "x0"    # Landroid/service/notification/NotificationListenerService;

    .prologue
    .line 64
    iget-object v0, p0, mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object v0
.end method

.method private applyUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 4
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    .line 820
    new-instance v0, Landroid/service/notification/NotificationListenerService$RankingMap;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;-><init>(Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationListenerService$1;)V

    iput-object v0, p0, mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 821
    return-void
.end method

.method private createLegacyIconExtras(Landroid/app/Notification;)V
    .registers 9
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 681
    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 682
    .local v3, "smallIcon":Landroid/graphics/drawable/Icon;
    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 683
    .local v1, "largeIcon":Landroid/graphics/drawable/Icon;
    if-eqz v3, :cond_22

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_22

    .line 684
    iget-object v4, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.icon"

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 685
    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v4

    iput v4, p1, Landroid/app/Notification;->icon:I

    .line 687
    :cond_22
    if-eqz v1, :cond_41

    .line 688
    invoke-direct {p0}, getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 689
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_41

    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_41

    .line 690
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 691
    .local v2, "largeIconBits":Landroid/graphics/Bitmap;
    iget-object v4, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.largeIcon"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 692
    iput-object v2, p1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 695
    .end local v2    # "largeIconBits":Landroid/graphics/Bitmap;
    :cond_41
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 824
    iget-object v0, p0, mSystemContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    .line 825
    iget-object p0, p0, mSystemContext:Landroid/content/Context;

    .line 827
    .end local p0    # "this":Landroid/service/notification/NotificationListenerService;
    :cond_6
    return-object p0
.end method

.method private final getNotificationInterface()Landroid/app/INotificationManager;
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, mNoMan:Landroid/app/INotificationManager;

    if-nez v0, :cond_11

    .line 287
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, mNoMan:Landroid/app/INotificationManager;

    .line 290
    :cond_11
    iget-object v0, p0, mNoMan:Landroid/app/INotificationManager;

    return-object v0
.end method

.method private isBound()Z
    .registers 3

    .prologue
    .line 633
    iget-object v0, p0, mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    if-nez v0, :cond_d

    .line 634
    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string v1, "Notification listener service not yet bound."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/4 v0, 0x0

    .line 637
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method


# virtual methods
.method public final cancelAllNotifications()V
    .registers 2

    .prologue
    .line 366
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, cancelNotifications([Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public final cancelNotification(Ljava/lang/String;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 345
    invoke-direct {p0}, isBound()Z

    move-result v1

    if-nez v1, :cond_7

    .line 352
    :goto_6
    return-void

    .line 347
    :cond_7
    :try_start_7
    invoke-direct {p0}, getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Landroid/app/INotificationManager;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_16} :catch_17

    goto :goto_6

    .line 349
    :catch_17
    move-exception v0

    .line 350
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public final cancelNotification(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 319
    invoke-direct {p0}, isBound()Z

    move-result v1

    if-nez v1, :cond_7

    .line 326
    :goto_6
    return-void

    .line 321
    :cond_7
    :try_start_7
    invoke-direct {p0}, getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    invoke-interface {v1, v2, p1, p2, p3}, Landroid/app/INotificationManager;->cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_6

    .line 323
    :catch_11
    move-exception v0

    .line 324
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public final cancelNotifications([Ljava/lang/String;)V
    .registers 5
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 380
    invoke-direct {p0}, isBound()Z

    move-result v1

    if-nez v1, :cond_7

    .line 386
    :goto_6
    return-void

    .line 382
    :cond_7
    :try_start_7
    invoke-direct {p0}, getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_6

    .line 383
    :catch_11
    move-exception v0

    .line 384
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public getActiveNotifications()[Landroid/service/notification/StatusBarNotification;
    .registers 3

    .prologue
    .line 437
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, getActiveNotifications([Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNotifications(I)[Landroid/service/notification/StatusBarNotification;
    .registers 3
    .param p1, "trim"    # I

    .prologue
    .line 451
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, getActiveNotifications([Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNotifications([Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .registers 3
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 464
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, getActiveNotifications([Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNotifications([Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;
    .registers 16
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "trim"    # I

    .prologue
    const/4 v10, 0x0

    .line 481
    invoke-direct {p0}, isBound()Z

    move-result v9

    if-nez v9, :cond_9

    move-object v9, v10

    .line 512
    :goto_8
    return-object v9

    .line 484
    :cond_9
    :try_start_9
    invoke-direct {p0}, getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v9

    iget-object v11, p0, mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    invoke-interface {v9, v11, p1, p2}, Landroid/app/INotificationManager;->getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v7

    .line 486
    .local v7, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    invoke-virtual {v7}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    .line 487
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    const/4 v1, 0x0

    .line 488
    .local v1, "corruptNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 489
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    if-ge v4, v0, :cond_69

    .line 490
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/service/notification/StatusBarNotification;

    .line 491
    .local v8, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_28} :catch_5f

    move-result-object v6

    .line 493
    .local v6, "notification":Landroid/app/Notification;
    :try_start_29
    invoke-direct {p0}, getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v6}, Landroid/app/Notification$Builder;->rebuild(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification;

    .line 495
    invoke-direct {p0, v6}, createLegacyIconExtras(Landroid/app/Notification;)V
    :try_end_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_33} :catch_36
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_33} :catch_5f

    .line 489
    :goto_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 496
    :catch_36
    move-exception v2

    .line 497
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    if-nez v1, :cond_3e

    .line 498
    :try_start_39
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "corruptNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 500
    .restart local v1    # "corruptNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    :cond_3e
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    iget-object v9, p0, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onNotificationPosted: can\'t rebuild notification from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_5e} :catch_5f

    goto :goto_33

    .line 509
    .end local v0    # "N":I
    .end local v1    # "corruptNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "i":I
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v7    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    .end local v8    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_5f
    move-exception v3

    .line 510
    .local v3, "ex":Landroid/os/RemoteException;
    iget-object v9, p0, TAG:Ljava/lang/String;

    const-string v11, "Unable to contact notification manager"

    invoke-static {v9, v11, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v9, v10

    .line 512
    goto :goto_8

    .line 505
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "N":I
    .restart local v1    # "corruptNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    .restart local v4    # "i":I
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    .restart local v7    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    :cond_69
    if-eqz v1, :cond_6e

    .line 506
    :try_start_6b
    invoke-interface {v5, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 508
    :cond_6e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Landroid/service/notification/StatusBarNotification;

    invoke-interface {v5, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/service/notification/StatusBarNotification;
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_7a} :catch_5f

    goto :goto_8
.end method

.method public final getCurrentInterruptionFilter()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 554
    invoke-direct {p0}, isBound()Z

    move-result v2

    if-nez v2, :cond_8

    .line 559
    :goto_7
    return v1

    .line 556
    :cond_8
    :try_start_8
    invoke-direct {p0}, getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v2

    iget-object v3, p0, mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    invoke-interface {v2, v3}, Landroid/app/INotificationManager;->getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_13

    move-result v1

    goto :goto_7

    .line 557
    :catch_13
    move-exception v0

    .line 558
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, TAG:Ljava/lang/String;

    const-string v3, "Unable to contact notification manager"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public final getCurrentListenerHints()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 526
    invoke-direct {p0}, isBound()Z

    move-result v2

    if-nez v2, :cond_8

    .line 531
    :goto_7
    return v1

    .line 528
    :cond_8
    :try_start_8
    invoke-direct {p0}, getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v2

    iget-object v3, p0, mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    invoke-interface {v2, v3}, Landroid/app/INotificationManager;->getHintsFromListener(Landroid/service/notification/INotificationListener;)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_13

    move-result v1

    goto :goto_7

    .line 529
    :catch_13
    move-exception v0

    .line 530
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, TAG:Ljava/lang/String;

    const-string v3, "Unable to contact notification manager"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;
    .registers 2

    .prologue
    .line 621
    iget-object v0, p0, mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 626
    iget-object v0, p0, mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    if-nez v0, :cond_c

    .line 627
    new-instance v0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;-><init>(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationListenerService$1;)V

    iput-object v0, p0, mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    .line 629
    :cond_c
    iget-object v0, p0, mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    return-object v0
.end method

.method public onEdgeNotificationPosted(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 191
    return-void
.end method

.method public onEdgeNotificationRemoved(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 198
    return-void
.end method

.method public onInterruptionFilterChanged(I)V
    .registers 2
    .param p1, "interruptionFilter"    # I

    .prologue
    .line 283
    return-void
.end method

.method public onListenerConnected()V
    .registers 1

    .prologue
    .line 252
    return-void
.end method

.method public onListenerHintsChanged(I)V
    .registers 2
    .param p1, "hints"    # I

    .prologue
    .line 272
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .registers 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 171
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 183
    invoke-virtual {p0, p1}, onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    .line 184
    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 2
    .param p1, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 262
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .registers 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 219
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 242
    invoke-virtual {p0, p1}, onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    .line 243
    return-void
.end method

.method public registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "currentUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 655
    iput-object p1, p0, mSystemContext:Landroid/content/Context;

    .line 656
    iget-object v1, p0, mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    if-nez v1, :cond_e

    .line 657
    new-instance v1, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;-><init>(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationListenerService$1;)V

    iput-object v1, p0, mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    .line 659
    :cond_e
    invoke-direct {p0}, getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    .line 660
    .local v0, "noMan":Landroid/app/INotificationManager;
    iget-object v1, p0, mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    invoke-interface {v0, v1, p2, p3}, Landroid/app/INotificationManager;->registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V

    .line 661
    iput p3, p0, mCurrentUser:I

    .line 662
    return-void
.end method

.method public final requestInterruptionFilter(I)V
    .registers 5
    .param p1, "interruptionFilter"    # I

    .prologue
    .line 595
    invoke-direct {p0}, isBound()Z

    move-result v1

    if-nez v1, :cond_7

    .line 602
    :goto_6
    return-void

    .line 597
    :cond_7
    :try_start_7
    invoke-direct {p0}, getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_6

    .line 599
    :catch_11
    move-exception v0

    .line 600
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public final requestListenerHints(I)V
    .registers 5
    .param p1, "hints"    # I

    .prologue
    .line 575
    invoke-direct {p0}, isBound()Z

    move-result v1

    if-nez v1, :cond_7

    .line 581
    :goto_6
    return-void

    .line 577
    :cond_7
    :try_start_7
    invoke-direct {p0}, getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_6

    .line 578
    :catch_11
    move-exception v0

    .line 579
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public final setNotificationsShown([Ljava/lang/String;)V
    .registers 5
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 396
    invoke-direct {p0}, isBound()Z

    move-result v1

    if-nez v1, :cond_7

    .line 402
    :goto_6
    return-void

    .line 398
    :cond_7
    :try_start_7
    invoke-direct {p0}, getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_6

    .line 399
    :catch_11
    move-exception v0

    .line 400
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public final setOnNotificationPostedTrim(I)V
    .registers 5
    .param p1, "trim"    # I

    .prologue
    .line 422
    invoke-direct {p0}, isBound()Z

    move-result v1

    if-nez v1, :cond_7

    .line 428
    :goto_6
    return-void

    .line 424
    :cond_7
    :try_start_7
    invoke-direct {p0}, getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_6

    .line 425
    :catch_11
    move-exception v0

    .line 426
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public unregisterAsSystemService()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 673
    iget-object v1, p0, mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    if-eqz v1, :cond_f

    .line 674
    invoke-direct {p0}, getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    .line 675
    .local v0, "noMan":Landroid/app/INotificationManager;
    iget-object v1, p0, mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    iget v2, p0, mCurrentUser:I

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->unregisterListener(Landroid/service/notification/INotificationListener;I)V

    .line 677
    .end local v0    # "noMan":Landroid/app/INotificationManager;
    :cond_f
    return-void
.end method
