.class final Lcom/android/systemui/DejankUtils$1;
.super Ljava/lang/Object;
.source "DejankUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DejankUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    # getter for: Lcom/android/systemui/DejankUtils;->sPendingRunnables:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/systemui/DejankUtils;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 40
    # getter for: Lcom/android/systemui/DejankUtils;->sHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/systemui/DejankUtils;->access$100()Landroid/os/Handler;

    move-result-object v2

    # getter for: Lcom/android/systemui/DejankUtils;->sPendingRunnables:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/systemui/DejankUtils;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    # getter for: Lcom/android/systemui/DejankUtils;->sPendingRunnables:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/systemui/DejankUtils;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 43
    return-void
.end method
