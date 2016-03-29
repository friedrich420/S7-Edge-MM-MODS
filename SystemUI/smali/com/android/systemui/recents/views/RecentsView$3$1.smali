.class Lcom/android/systemui/recents/views/RecentsView$3$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "RecentsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/views/RecentsView$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView$3;)V
    .locals 0

    .prologue
    .line 1252
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$3$1;->this$1:Lcom/android/systemui/recents/views/RecentsView$3;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$3$1;->this$1:Lcom/android/systemui/recents/views/RecentsView$3;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView$3;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v1, Lcom/android/systemui/recents/views/RecentsView$3$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/RecentsView$3$1$1;-><init>(Lcom/android/systemui/recents/views/RecentsView$3$1;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->post(Ljava/lang/Runnable;)Z

    .line 1264
    return-void
.end method
