.class Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$3;
.super Ljava/lang/Object;
.source "ClearCoverZeroPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;

    const/4 v3, 0x0

    # setter for: Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v2, v3}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->access$402(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 112
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;

    # getter for: Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mUnreadMessageCountTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->access$500(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;)Landroid/widget/TextView;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 113
    # getter for: Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onItemClick - mUnreadMessageCountTextView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;

    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$PopupType;->OPEN_COVER_TO_VIEW_MESSAGE:Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$PopupType;

    # invokes: Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->showCoverOpenPopup(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$PopupType;)V
    invoke-static {v2, v3}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->access$600(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$PopupType;)V

    .line 116
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;

    # getter for: Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->access$700(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v2

    const-string v3, "new_message"

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v1

    .line 119
    .local v1, "messageRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    if-eqz v1, :cond_0

    .line 120
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;

    iget-object v3, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mPendingIntent:Landroid/app/PendingIntent;

    # setter for: Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v2, v3}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->access$402(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 133
    .end local v1    # "messageRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    # getter for: Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onItemClick - mMissedCallCountTextView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;

    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$PopupType;->OPEN_COVER_TO_VIEW_CALL:Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$PopupType;

    # invokes: Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->showCoverOpenPopup(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$PopupType;)V
    invoke-static {v2, v3}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->access$600(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$PopupType;)V

    .line 126
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;

    # getter for: Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->access$800(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v2

    const-string v3, "missed_call"

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v0

    .line 129
    .local v0, "callRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    if-eqz v0, :cond_0

    .line 130
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;

    iget-object v3, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mPendingIntent:Landroid/app/PendingIntent;

    # setter for: Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v2, v3}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->access$402(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    goto :goto_0
.end method
