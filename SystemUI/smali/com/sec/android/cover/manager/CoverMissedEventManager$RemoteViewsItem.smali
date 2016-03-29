.class public Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;
.super Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;
.source "CoverMissedEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/manager/CoverMissedEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoteViewsItem"
.end annotation


# instance fields
.field public mContentIntent:Landroid/app/PendingIntent;

.field public mEventCount:I

.field public mRemoteType:Ljava/lang/String;

.field public final mRemoteViews:Landroid/widget/RemoteViews;

.field public final mSecureRemoteViews:Landroid/widget/RemoteViews;

.field final synthetic this$0:Lcom/sec/android/cover/manager/CoverMissedEventManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;IJLandroid/widget/RemoteViews;Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 1
    .param p2, "type"    # I
    .param p3, "when"    # J
    .param p5, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p6, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p7, "eventCount"    # I
    .param p8, "remoteType"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->this$0:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;-><init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;IJ)V

    .line 85
    iput-object p5, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 86
    iput-object p5, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mSecureRemoteViews:Landroid/widget/RemoteViews;

    .line 87
    iput-object p6, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mContentIntent:Landroid/app/PendingIntent;

    .line 88
    iput p7, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mEventCount:I

    .line 89
    iput-object p8, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mRemoteType:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;IJLandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 1
    .param p2, "type"    # I
    .param p3, "when"    # J
    .param p5, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p6, "secureRemoteViews"    # Landroid/widget/RemoteViews;
    .param p7, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p8, "eventCount"    # I
    .param p9, "remoteType"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->this$0:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;-><init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;IJ)V

    .line 96
    iput-object p5, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 97
    iput-object p6, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mSecureRemoteViews:Landroid/widget/RemoteViews;

    .line 98
    iput-object p7, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mContentIntent:Landroid/app/PendingIntent;

    .line 99
    iput p8, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mEventCount:I

    .line 100
    iput-object p9, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mRemoteType:Ljava/lang/String;

    .line 101
    return-void
.end method


# virtual methods
.method public getContentIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mContentIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getEventCount()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mEventCount:I

    return v0
.end method

.method public getRemoteType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mRemoteType:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteViews()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getSecureRemoteViews()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->mSecureRemoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method
