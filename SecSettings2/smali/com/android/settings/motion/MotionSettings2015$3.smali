.class Lcom/android/settings/motion/MotionSettings2015$3;
.super Ljava/lang/Object;
.source "MotionSettings2015.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings/motion/MotionSettings2015;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/settings/motion/MotionSettings2015$3;->this$0:Lcom/android/settings/motion/MotionSettings2015;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 189
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 186
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings2015$3;->this$0:Lcom/android/settings/motion/MotionSettings2015;

    invoke-virtual {v0, p1}, Lcom/android/settings/motion/MotionSettings2015;->changeColor(I)V

    .line 183
    return-void
.end method
