.class Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$6;
.super Ljava/lang/Object;
.source "SViewCoverMainPage.java"

# interfaces
.implements Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setupChildViews(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$6;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$6;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->adjustWidgetVisibility()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->access$500(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    .line 270
    return-void
.end method
