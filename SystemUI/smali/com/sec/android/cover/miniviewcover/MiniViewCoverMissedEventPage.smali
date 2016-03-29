.class public Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;
.super Landroid/widget/FrameLayout;
.source "MiniViewCoverMissedEventPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$3;,
        Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$OnMissedEventClickListenr;,
        Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;
    }
.end annotation


# instance fields
.field private mMiniMissedEventView:Landroid/widget/FrameLayout;

.field private mMiniNotiList:Landroid/widget/ListView;

.field private mMiniViewCoverMainFrameView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

.field private mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

.field private mMissedEvnetClickListener:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$OnMissedEventClickListenr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mMissedEvnetClickListener:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$OnMissedEventClickListenr;

    .line 48
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->setupChildViews()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;)Lcom/sec/android/cover/manager/CoverMissedEventManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;
    .param p1, "x1"    # Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->setPendingIntent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;
    .param p1, "x1"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->showCoverOpenPopup(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;)Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$OnMissedEventClickListenr;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mMissedEvnetClickListener:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$OnMissedEventClickListenr;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;)Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mMiniViewCoverMainFrameView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    return-object v0
.end method

.method private setPendingIntent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V
    .locals 7
    .param p1, "data"    # Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 125
    iget v2, p1, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;->mType:I

    if-ne v2, v6, :cond_0

    move-object v2, p1

    .line 126
    check-cast v2, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->getRemoteType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "missed_call"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/CoverUtils;->isTPhoneEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.skt.prod.dialer"

    const-string v3, "com.skt.prod.dialer.activities.main.MainActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const/high16 v2, 0x34000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 132
    const-string v2, "INIT_MAIN_TYPE"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    const-string v2, "GOTO_ACTIVITY"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 136
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mMiniViewCoverMainFrameView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    invoke-virtual {v2, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 156
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    .end local p1    # "data":Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;
    :cond_0
    :goto_0
    return-void

    .line 138
    .restart local p1    # "data":Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.phone.action.RECENT_CALLS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .restart local v0    # "intent":Landroid/content/Intent;
    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 140
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 142
    .restart local v1    # "pendingIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mMiniViewCoverMainFrameView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    invoke-virtual {v2, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->setPendingIntent(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 144
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_2
    check-cast p1, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    .end local p1    # "data":Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;
    invoke-virtual {p1}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->getRemoteType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "new_message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    const-string v2, "com.android.mms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v2, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v2, "fromScover"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 151
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 153
    .restart local v1    # "pendingIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mMiniViewCoverMainFrameView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    invoke-virtual {v2, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->setPendingIntent(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private setupChildViews()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 62
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$layout;->mini_view_cover_missed_event_page:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "mainPage":Landroid/view/View;
    invoke-virtual {p0, v0, v4, v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->addView(Landroid/view/View;II)V

    .line 65
    sget v1, Lcom/sec/android/sviewcover/R$id;->mini_missed_event_layout:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mMiniMissedEventView:Landroid/widget/FrameLayout;

    .line 66
    sget v1, Lcom/sec/android/sviewcover/R$id;->mini_noti_item_list:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mMiniNotiList:Landroid/widget/ListView;

    .line 68
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    .line 70
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mMiniNotiList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventAdapter()Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mMiniNotiList:Landroid/widget/ListView;

    new-instance v2, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$1;

    invoke-direct {v2, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$1;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 121
    return-void
.end method

.method private showCoverOpenPopup(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;)V
    .locals 4
    .param p1, "type"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 161
    .local v0, "popupTextId":I
    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$3;->$SwitchMap$com$sec$android$cover$miniviewcover$MiniViewCoverMissedEventPage$PopupType:[I

    invoke-virtual {p1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 175
    :goto_0
    if-nez v0, :cond_1

    .line 176
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mMiniViewCoverMainFrameView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 195
    :cond_0
    :goto_1
    return-void

    .line 163
    :pswitch_0
    sget v0, Lcom/sec/android/sviewcover/R$string;->s_view_cover_missed_event_secured_popup:I

    .line 164
    goto :goto_0

    .line 166
    :pswitch_1
    sget v0, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup_for_detail_message:I

    .line 167
    goto :goto_0

    .line 169
    :pswitch_2
    sget v0, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup_for_detail_call:I

    .line 170
    goto :goto_0

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v1

    const/4 v2, 0x6

    new-instance v3, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$2;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$2;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(IILcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z

    .line 192
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mMissedEvnetClickListener:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$OnMissedEventClickListenr;

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mMissedEvnetClickListener:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$OnMissedEventClickListenr;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$OnMissedEventClickListenr;->OnMissedEventClick(Z)V

    goto :goto_1

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public setMiniCoverView(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mMiniViewCoverMainFrameView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    .line 203
    return-void
.end method

.method public setOnMissedEventClickListener(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$OnMissedEventClickListenr;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$OnMissedEventClickListenr;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mMissedEvnetClickListener:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$OnMissedEventClickListenr;

    .line 199
    return-void
.end method
