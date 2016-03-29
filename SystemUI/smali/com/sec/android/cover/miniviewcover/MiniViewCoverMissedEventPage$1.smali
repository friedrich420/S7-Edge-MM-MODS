.class Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$1;
.super Ljava/lang/Object;
.source "MiniViewCoverMissedEventPage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->setupChildViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 74
    iget-object v7, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;
    invoke-static {v7}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventAdapter()Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;

    .line 76
    .local v2, "item":Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;
    const/4 v4, 0x1

    .line 77
    .local v4, "showContent":Z
    const/4 v1, 0x1

    .line 79
    .local v1, "enableNoti":Z
    :try_start_0
    iget-object v7, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->access$100(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_screen_allow_private_notifications"

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_1

    move v4, v5

    .line 82
    :goto_0
    iget-object v7, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->access$200(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_screen_show_notifications"

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-ne v7, v5, :cond_2

    move v1, v5

    .line 88
    :goto_1
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->access$300(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/cover/CoverUtils;->isKeyGuardMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 89
    const-string v5, "MiniViewCoverMissedEventPage"

    const-string v6, "onItemClick - isKeyguardSecure"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->setPendingIntent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V
    invoke-static {v5, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->access$400(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V

    .line 91
    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    sget-object v6, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;->OPEN_COVER_BY_SECURITY:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->showCoverOpenPopup(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;)V
    invoke-static {v5, v6}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->access$500(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;)V

    .line 118
    .end local v2    # "item":Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;
    :cond_0
    :goto_2
    return-void

    .restart local v2    # "item":Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;
    :cond_1
    move v4, v6

    .line 79
    goto :goto_0

    :cond_2
    move v1, v6

    .line 82
    goto :goto_1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v6, "MiniViewCoverMissedEventPage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateNotiArea() can not found setting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 92
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_3
    if-ne v1, v5, :cond_5

    if-nez v4, :cond_5

    .line 94
    const-string v6, "MiniViewCoverMissedEventPage"

    const-string v7, "onItemClick - Hide sensitive content"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget v6, v2, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;->mType:I

    if-ne v6, v5, :cond_0

    .line 96
    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->setPendingIntent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V
    invoke-static {v5, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->access$400(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V

    .line 97
    check-cast v2, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    .end local v2    # "item":Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;
    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->getRemoteType()Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "remoteType":Ljava/lang/String;
    const-string v5, "missed_call"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 99
    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    sget-object v6, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;->OPEN_COVER_TO_VIEW_CALL:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->showCoverOpenPopup(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;)V
    invoke-static {v5, v6}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->access$500(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;)V

    goto :goto_2

    .line 101
    :cond_4
    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    sget-object v6, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;->OPEN_COVER_TO_VIEW_MESSAGE:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->showCoverOpenPopup(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;)V
    invoke-static {v5, v6}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->access$500(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;)V

    goto :goto_2

    .line 105
    .end local v3    # "remoteType":Ljava/lang/String;
    .restart local v2    # "item":Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;
    :cond_5
    iget v6, v2, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;->mType:I

    if-ne v6, v5, :cond_6

    move-object v5, v2

    .line 106
    check-cast v5, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    invoke-virtual {v5}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->getRemoteType()Ljava/lang/String;

    move-result-object v3

    .line 107
    .restart local v3    # "remoteType":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->access$600(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/cover/CoverUtils;->isTPhoneEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v3, :cond_6

    const-string v5, "missed_call"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 109
    const-string v5, "MiniViewCoverMissedEventPage"

    const-string v6, "onItemClick - isTPhoneEnabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->setPendingIntent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V
    invoke-static {v5, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->access$400(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V

    .line 111
    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    sget-object v6, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;->OPEN_COVER_TO_VIEW_CALL:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->showCoverOpenPopup(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;)V
    invoke-static {v5, v6}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->access$500(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;)V

    goto/16 :goto_2

    .line 116
    .end local v3    # "remoteType":Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;
    invoke-static {v5}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventAdapter()Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->onItemClick(I)V

    goto/16 :goto_2
.end method
