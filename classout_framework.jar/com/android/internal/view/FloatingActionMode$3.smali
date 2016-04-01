.class Lcom/android/internal/view/FloatingActionMode$3;
.super Ljava/lang/Object;
.source "FloatingActionMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/FloatingActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/FloatingActionMode;


# direct methods
.method constructor <init>(Lcom/android/internal/view/FloatingActionMode;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, this$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, this$0:Lcom/android/internal/view/FloatingActionMode;

    # invokes: Lcom/android/internal/view/FloatingActionMode;->repositionToolbar()V
    invoke-static {v0}, Lcom/android/internal/view/FloatingActionMode;->access$100(Lcom/android/internal/view/FloatingActionMode;)V

    .line 79
    return-void
.end method
