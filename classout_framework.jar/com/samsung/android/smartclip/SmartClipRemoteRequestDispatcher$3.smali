.class Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher$3;
.super Ljava/lang/Object;
.source "SmartClipRemoteRequestDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;->dispatchSmartClipRemoteRequest(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;

.field final synthetic val$request:Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V
    .registers 3

    .prologue
    .line 151
    iput-object p1, p0, this$0:Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;

    iput-object p2, p0, val$request:Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 154
    iget-object v0, p0, this$0:Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;

    iget-object v1, p0, val$request:Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    # invokes: Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;->dispatchScrollableViewInfo(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V
    invoke-static {v0, v1}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;->access$200(Lcom/samsung/android/smartclip/SmartClipRemoteRequestDispatcher;Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V

    .line 155
    return-void
.end method
