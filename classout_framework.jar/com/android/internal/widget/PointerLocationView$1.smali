.class Lcom/android/internal/widget/PointerLocationView$1;
.super Ljava/util/ArrayList;
.source "PointerLocationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PointerLocationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/internal/widget/PointerLocationView$PointerState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/PointerLocationView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/PointerLocationView;)V
    .registers 2

    .prologue
    .line 130
    iput-object p1, p0, this$0:Lcom/android/internal/widget/PointerLocationView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/android/internal/widget/PointerLocationView$PointerState;
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 133
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/PointerLocationView$PointerState;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 137
    :goto_6
    return-object v1

    .line 134
    :catch_7
    move-exception v0

    .line 135
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Pointer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to access mPointers.get("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    invoke-virtual {p0}, size()I

    move-result v1

    if-lez v1, :cond_3b

    const/4 v1, 0x0

    invoke-super {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/PointerLocationView$PointerState;

    goto :goto_6

    :cond_3b
    new-instance v1, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-direct {v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    goto :goto_6
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 130
    invoke-virtual {p0, p1}, get(I)Lcom/android/internal/widget/PointerLocationView$PointerState;

    move-result-object v0

    return-object v0
.end method
