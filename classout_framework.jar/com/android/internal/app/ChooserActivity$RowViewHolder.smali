.class Lcom/android/internal/app/ChooserActivity$RowViewHolder;
.super Ljava/lang/Object;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RowViewHolder"
.end annotation


# instance fields
.field final cells:[Landroid/view/View;

.field itemIndices:[I

.field measuredRowHeight:I

.field final row:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .registers 4
    .param p1, "row"    # Landroid/view/ViewGroup;
    .param p2, "cellCount"    # I

    .prologue
    .line 1286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1287
    iput-object p1, p0, row:Landroid/view/ViewGroup;

    .line 1288
    new-array v0, p2, [Landroid/view/View;

    iput-object v0, p0, cells:[Landroid/view/View;

    .line 1289
    new-array v0, p2, [I

    iput-object v0, p0, itemIndices:[I

    .line 1290
    return-void
.end method


# virtual methods
.method public measure()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1293
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1294
    .local v0, "spec":I
    iget-object v1, p0, row:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v0}, Landroid/view/ViewGroup;->measure(II)V

    .line 1295
    iget-object v1, p0, row:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, measuredRowHeight:I

    .line 1296
    return-void
.end method
