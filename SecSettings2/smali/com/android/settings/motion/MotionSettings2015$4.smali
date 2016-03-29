.class Lcom/android/settings/motion/MotionSettings2015$4;
.super Ljava/lang/Object;
.source "MotionSettings2015.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/MotionSettings2015;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/MotionSettings2015;

.field final synthetic val$current:I


# direct methods
.method constructor <init>(Lcom/android/settings/motion/MotionSettings2015;I)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/settings/motion/MotionSettings2015$4;->this$0:Lcom/android/settings/motion/MotionSettings2015;

    iput p2, p0, Lcom/android/settings/motion/MotionSettings2015$4;->val$current:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings2015$4;->this$0:Lcom/android/settings/motion/MotionSettings2015;

    # getter for: Lcom/android/settings/motion/MotionSettings2015;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;
    invoke-static {v0}, Lcom/android/settings/motion/MotionSettings2015;->access$300(Lcom/android/settings/motion/MotionSettings2015;)Lcom/android/settings/WrapContentHeightViewPager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/motion/MotionSettings2015$4;->val$current:I

    invoke-virtual {v0, v1}, Lcom/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    .line 204
    return-void
.end method
