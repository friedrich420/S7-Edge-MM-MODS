.class Landroid/widget/DayPickerView$2;
.super Ljava/lang/Object;
.source "DayPickerView.java"

# interfaces
.implements Lcom/android/internal/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DayPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DayPickerView;


# direct methods
.method constructor <init>(Landroid/widget/DayPickerView;)V
    .registers 2

    .prologue
    .line 390
    iput-object p1, p0, this$0:Landroid/widget/DayPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 399
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 7
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 393
    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v0, v1, v2

    .line 394
    .local v0, "alpha":F
    iget-object v1, p0, this$0:Landroid/widget/DayPickerView;

    # getter for: Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Landroid/widget/DayPickerView;->access$100(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 395
    iget-object v1, p0, this$0:Landroid/widget/DayPickerView;

    # getter for: Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Landroid/widget/DayPickerView;->access$200(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 396
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 403
    iget-object v0, p0, this$0:Landroid/widget/DayPickerView;

    # invokes: Landroid/widget/DayPickerView;->updateButtonVisibility(I)V
    invoke-static {v0, p1}, Landroid/widget/DayPickerView;->access$300(Landroid/widget/DayPickerView;I)V

    .line 404
    return-void
.end method
