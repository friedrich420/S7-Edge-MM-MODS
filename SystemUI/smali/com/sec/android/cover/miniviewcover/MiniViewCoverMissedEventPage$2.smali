.class Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$2;
.super Ljava/lang/Object;
.source "MiniViewCoverMissedEventPage.java"

# interfaces
.implements Lcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->showCoverOpenPopup(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;)V
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
    .line 181
    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mMissedEvnetClickListener:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$OnMissedEventClickListenr;
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->access$700(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;)Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$OnMissedEventClickListenr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mMissedEvnetClickListener:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$OnMissedEventClickListenr;
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->access$700(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;)Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$OnMissedEventClickListenr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$OnMissedEventClickListenr;->OnMissedEventClick(Z)V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mMiniViewCoverMainFrameView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->access$800(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;)Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 189
    return-void
.end method
