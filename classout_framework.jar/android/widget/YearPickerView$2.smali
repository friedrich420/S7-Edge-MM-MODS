.class Landroid/widget/YearPickerView$2;
.super Ljava/lang/Object;
.source "YearPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/YearPickerView;->setYear(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/YearPickerView;

.field final synthetic val$year:I


# direct methods
.method constructor <init>(Landroid/widget/YearPickerView;I)V
    .registers 3

    .prologue
    .line 94
    iput-object p1, p0, this$0:Landroid/widget/YearPickerView;

    iput p2, p0, val$year:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 97
    iget-object v1, p0, this$0:Landroid/widget/YearPickerView;

    # getter for: Landroid/widget/YearPickerView;->mAdapter:Landroid/widget/YearPickerView$YearAdapter;
    invoke-static {v1}, Landroid/widget/YearPickerView;->access$000(Landroid/widget/YearPickerView;)Landroid/widget/YearPickerView$YearAdapter;

    move-result-object v1

    iget v2, p0, val$year:I

    invoke-virtual {v1, v2}, Landroid/widget/YearPickerView$YearAdapter;->getPositionForYear(I)I

    move-result v0

    .line 98
    .local v0, "position":I
    if-ltz v0, :cond_1b

    iget-object v1, p0, this$0:Landroid/widget/YearPickerView;

    invoke-virtual {v1}, Landroid/widget/YearPickerView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 99
    iget-object v1, p0, this$0:Landroid/widget/YearPickerView;

    invoke-virtual {v1, v0}, Landroid/widget/YearPickerView;->setSelectionCentered(I)V

    .line 101
    :cond_1b
    return-void
.end method
