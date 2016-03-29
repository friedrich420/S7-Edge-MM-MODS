.class Lcom/android/systemui/recents/model/RecentsTaskLoader$2;
.super Landroid/database/ContentObserver;
.source "RecentsTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/RecentsTaskLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/RecentsTaskLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/RecentsTaskLoader;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 778
    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader$2;->this$0:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader$2;->this$0:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    # invokes: Lcom/android/systemui/recents/model/RecentsTaskLoader;->clearApplicationIconCache()V
    invoke-static {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->access$000(Lcom/android/systemui/recents/model/RecentsTaskLoader;)V

    .line 782
    return-void
.end method
