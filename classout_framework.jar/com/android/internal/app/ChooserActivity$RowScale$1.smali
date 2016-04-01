.class final Lcom/android/internal/app/ChooserActivity$RowScale$1;
.super Landroid/util/FloatProperty;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity$RowScale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty",
        "<",
        "Lcom/android/internal/app/ChooserActivity$RowScale;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 1009
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/internal/app/ChooserActivity$RowScale;)Ljava/lang/Float;
    .registers 3
    .param p1, "object"    # Lcom/android/internal/app/ChooserActivity$RowScale;

    .prologue
    .line 1018
    iget v0, p1, Lcom/android/internal/app/ChooserActivity$RowScale;->mScale:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1009
    check-cast p1, Lcom/android/internal/app/ChooserActivity$RowScale;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, get(Lcom/android/internal/app/ChooserActivity$RowScale;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/android/internal/app/ChooserActivity$RowScale;F)V
    .registers 4
    .param p1, "object"    # Lcom/android/internal/app/ChooserActivity$RowScale;
    .param p2, "value"    # F

    .prologue
    .line 1012
    iput p2, p1, Lcom/android/internal/app/ChooserActivity$RowScale;->mScale:F

    .line 1013
    iget-object v0, p1, Lcom/android/internal/app/ChooserActivity$RowScale;->mAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->notifyDataSetChanged()V

    .line 1014
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # F

    .prologue
    .line 1009
    check-cast p1, Lcom/android/internal/app/ChooserActivity$RowScale;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, setValue(Lcom/android/internal/app/ChooserActivity$RowScale;F)V

    return-void
.end method
