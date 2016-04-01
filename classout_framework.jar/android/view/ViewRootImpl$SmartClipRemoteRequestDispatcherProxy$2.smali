.class Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$2;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->dispatchSmartClipRemoteRequest(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

.field final synthetic val$request:Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V
    .registers 3

    .prologue
    .line 7743
    iput-object p1, p0, this$1:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    iput-object p2, p0, val$request:Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 7746
    iget-object v0, p0, this$1:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    iget-object v1, p0, val$request:Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    # invokes: Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->dispatchSmartClipMetaDataExtraction(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V
    invoke-static {v0, v1}, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->access$3100(Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V

    .line 7747
    return-void
.end method
