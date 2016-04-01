.class Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestInfo"
.end annotation


# instance fields
.field public mRequestId:I

.field public mResponseArrived:Z

.field public mResultData:Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

.field public mWaitObj:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 1778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1780
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mWaitObj:Ljava/lang/Object;

    .line 1781
    const/4 v0, 0x0

    iput-boolean v0, p0, mResponseArrived:Z

    return-void
.end method
