.class Landroid/widget/TextView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView;->initTextStrikeThroughAnim(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 6567
    iput-object p1, p0, this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 6569
    iget-object v0, p0, this$0:Landroid/widget/TextView;

    const/4 v1, 0x1

    # setter for: Landroid/widget/TextView;->mLineIsDrawed:Z
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$402(Landroid/widget/TextView;Z)Z

    .line 6570
    return-void
.end method
