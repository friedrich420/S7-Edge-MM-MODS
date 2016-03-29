.class Lcom/android/systemui/assist/AssistOrbView$4;
.super Landroid/view/ViewOutlineProvider;
.source "AssistOrbView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/assist/AssistOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistOrbView;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistOrbView;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/systemui/assist/AssistOrbView$4;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView$4;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    # getter for: Lcom/android/systemui/assist/AssistOrbView;->mCircleSize:F
    invoke-static {v0}, Lcom/android/systemui/assist/AssistOrbView;->access$500(Lcom/android/systemui/assist/AssistOrbView;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView$4;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    # getter for: Lcom/android/systemui/assist/AssistOrbView;->mCircleRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/systemui/assist/AssistOrbView;->access$600(Lcom/android/systemui/assist/AssistOrbView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView$4;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    # getter for: Lcom/android/systemui/assist/AssistOrbView;->mOutlineAlpha:F
    invoke-static {v0}, Lcom/android/systemui/assist/AssistOrbView;->access$700(Lcom/android/systemui/assist/AssistOrbView;)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 109
    return-void

    .line 106
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Outline;->setEmpty()V

    goto :goto_0
.end method
