.class Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$3;
.super Ljava/lang/Object;
.source "CaCoverManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->bootCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;)V
    .registers 2

    .prologue
    .line 179
    iput-object p1, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 182
    iget-object v0, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->access$000(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->access$100(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;)Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 183
    iget-object v0, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->access$000(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->access$100(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;)Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 187
    :goto_1f
    return-void

    .line 185
    :cond_20
    const-string v0, "cover null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_1f
.end method
