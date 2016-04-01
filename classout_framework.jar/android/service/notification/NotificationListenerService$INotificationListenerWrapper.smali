.class Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;
.super Landroid/service/notification/INotificationListener$Stub;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "INotificationListenerWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/notification/NotificationListenerService;


# direct methods
.method private constructor <init>(Landroid/service/notification/NotificationListenerService;)V
    .registers 2

    .prologue
    .line 697
    iput-object p1, p0, this$0:Landroid/service/notification/NotificationListenerService;

    invoke-direct {p0}, Landroid/service/notification/INotificationListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationListenerService$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/service/notification/NotificationListenerService;
    .param p2, "x1"    # Landroid/service/notification/NotificationListenerService$1;

    .prologue
    .line 697
    invoke-direct {p0, p1}, <init>(Landroid/service/notification/NotificationListenerService;)V

    return-void
.end method


# virtual methods
.method public onEdgeNotificationPosted(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 802
    :try_start_0
    iget-object v1, p0, this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1, p2, p3}, Landroid/service/notification/NotificationListenerService;->onEdgeNotificationPosted(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 806
    :goto_5
    return-void

    .line 803
    :catch_6
    move-exception v0

    .line 804
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error running onInterruptionFilterChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public onEdgeNotificationRemoved(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 811
    :try_start_0
    iget-object v1, p0, this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1, p2, p3}, Landroid/service/notification/NotificationListenerService;->onEdgeNotificationRemoved(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 816
    :goto_5
    return-void

    .line 812
    :catch_6
    move-exception v0

    .line 813
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error running onInterruptionFilterChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public onInterruptionFilterChanged(I)V
    .registers 5
    .param p1, "interruptionFilter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 792
    :try_start_0
    iget-object v1, p0, this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1}, Landroid/service/notification/NotificationListenerService;->onInterruptionFilterChanged(I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 796
    :goto_5
    return-void

    .line 793
    :catch_6
    move-exception v0

    .line 794
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error running onInterruptionFilterChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 6
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    .line 758
    iget-object v1, p0, this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$400(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    move-result-object v2

    monitor-enter v2

    .line 759
    :try_start_7
    iget-object v1, p0, this$0:Landroid/service/notification/NotificationListenerService;

    # invokes: Landroid/service/notification/NotificationListenerService;->applyUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    invoke-static {v1, p1}, Landroid/service/notification/NotificationListenerService;->access$500(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_20

    .line 761
    :try_start_c
    iget-object v1, p0, this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_11} :catch_13
    .catchall {:try_start_c .. :try_end_11} :catchall_20

    .line 765
    :goto_11
    :try_start_11
    monitor-exit v2

    .line 766
    return-void

    .line 762
    :catch_13
    move-exception v0

    .line 763
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Error running onListenerConnected"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 765
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public onListenerHintsChanged(I)V
    .registers 5
    .param p1, "hints"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 783
    :try_start_0
    iget-object v1, p0, this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1}, Landroid/service/notification/NotificationListenerService;->onListenerHintsChanged(I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 787
    :goto_5
    return-void

    .line 784
    :catch_6
    move-exception v0

    .line 785
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error running onListenerHintsChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 9
    .param p1, "sbnHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    .line 703
    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_35

    move-result-object v1

    .line 710
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    :try_start_4
    iget-object v3, p0, this$0:Landroid/service/notification/NotificationListenerService;

    # invokes: Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$200(Landroid/service/notification/NotificationListenerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/app/Notification$Builder;->rebuild(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification;

    .line 712
    iget-object v3, p0, this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    # invokes: Landroid/service/notification/NotificationListenerService;->createLegacyIconExtras(Landroid/app/Notification;)V
    invoke-static {v3, v4}, Landroid/service/notification/NotificationListenerService;->access$300(Landroid/service/notification/NotificationListenerService;Landroid/app/Notification;)V
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_1a} :catch_43

    .line 721
    :goto_1a
    iget-object v3, p0, this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$400(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    move-result-object v4

    monitor-enter v4

    .line 722
    :try_start_21
    iget-object v3, p0, this$0:Landroid/service/notification/NotificationListenerService;

    # invokes: Landroid/service/notification/NotificationListenerService;->applyUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    invoke-static {v3, p2}, Landroid/service/notification/NotificationListenerService;->access$500(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_80

    .line 724
    if-eqz v1, :cond_67

    .line 725
    :try_start_28
    iget-object v3, p0, this$0:Landroid/service/notification/NotificationListenerService;

    iget-object v5, p0, this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    invoke-static {v5}, Landroid/service/notification/NotificationListenerService;->access$600(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_33} :catch_73
    .catchall {:try_start_28 .. :try_end_33} :catchall_80

    .line 733
    :goto_33
    :try_start_33
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_80

    .line 734
    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :goto_34
    return-void

    .line 704
    :catch_35
    move-exception v0

    .line 705
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onNotificationPosted: Error receiving StatusBarNotification"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    .line 713
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_43
    move-exception v0

    .line 715
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    .line 716
    iget-object v3, p0, this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onNotificationPosted: can\'t rebuild notification from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 728
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_67
    :try_start_67
    iget-object v3, p0, this$0:Landroid/service/notification/NotificationListenerService;

    iget-object v5, p0, this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    invoke-static {v5}, Landroid/service/notification/NotificationListenerService;->access$600(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/service/notification/NotificationListenerService;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_72} :catch_73
    .catchall {:try_start_67 .. :try_end_72} :catchall_80

    goto :goto_33

    .line 730
    :catch_73
    move-exception v2

    .line 731
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_74
    iget-object v3, p0, this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Error running onNotificationPosted"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 733
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_80
    move-exception v3

    monitor-exit v4
    :try_end_82
    .catchall {:try_start_74 .. :try_end_82} :catchall_80

    throw v3
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 6
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 771
    iget-object v1, p0, this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$400(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    move-result-object v2

    monitor-enter v2

    .line 772
    :try_start_7
    iget-object v1, p0, this$0:Landroid/service/notification/NotificationListenerService;

    # invokes: Landroid/service/notification/NotificationListenerService;->applyUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    invoke-static {v1, p1}, Landroid/service/notification/NotificationListenerService;->access$500(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_26

    .line 774
    :try_start_c
    iget-object v1, p0, this$0:Landroid/service/notification/NotificationListenerService;

    iget-object v3, p0, this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$600(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/service/notification/NotificationListenerService;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_17} :catch_19
    .catchall {:try_start_c .. :try_end_17} :catchall_26

    .line 778
    :goto_17
    :try_start_17
    monitor-exit v2

    .line 779
    return-void

    .line 775
    :catch_19
    move-exception v0

    .line 776
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Error running onNotificationRankingUpdate"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 778
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 9
    .param p1, "sbnHolder"    # Landroid/service/notification/IStatusBarNotificationHolder;
    .param p2, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    .line 740
    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_1d

    move-result-object v1

    .line 746
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v3, p0, this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$400(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    move-result-object v4

    monitor-enter v4

    .line 747
    :try_start_b
    iget-object v3, p0, this$0:Landroid/service/notification/NotificationListenerService;

    # invokes: Landroid/service/notification/NotificationListenerService;->applyUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    invoke-static {v3, p2}, Landroid/service/notification/NotificationListenerService;->access$500(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_38

    .line 749
    :try_start_10
    iget-object v3, p0, this$0:Landroid/service/notification/NotificationListenerService;

    iget-object v5, p0, this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    invoke-static {v5}, Landroid/service/notification/NotificationListenerService;->access$600(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1b} :catch_2b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_38

    .line 753
    :goto_1b
    :try_start_1b
    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_38

    .line 754
    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :goto_1c
    return-void

    .line 741
    :catch_1d
    move-exception v0

    .line 742
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onNotificationRemoved: Error receiving StatusBarNotification"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 750
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_2b
    move-exception v2

    .line 751
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2c
    iget-object v3, p0, this$0:Landroid/service/notification/NotificationListenerService;

    # getter for: Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Error running onNotificationRemoved"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 753
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_38
    move-exception v3

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_38

    throw v3
.end method
