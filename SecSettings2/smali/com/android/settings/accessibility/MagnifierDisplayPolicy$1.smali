.class Lcom/android/settings/accessibility/MagnifierDisplayPolicy$1;
.super Landroid/database/ContentObserver;
.source "MagnifierDisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/MagnifierDisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/MagnifierDisplayPolicy;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$1;->this$0:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 446
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$1;->this$0:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    # getter for: Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->access$400(Lcom/android/settings/accessibility/MagnifierDisplayPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_magnifier"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 448
    .local v0, "isHoverZoom":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$1;->this$0:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    # getter for: Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mIsHoverZoom:Z
    invoke-static {v1}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->access$500(Lcom/android/settings/accessibility/MagnifierDisplayPolicy;)Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 449
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$1;->this$0:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    # setter for: Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mIsHoverZoom:Z
    invoke-static {v1, v0}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->access$502(Lcom/android/settings/accessibility/MagnifierDisplayPolicy;Z)Z

    .line 450
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$1;->this$0:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    # invokes: Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->setPointMargin()V
    invoke-static {v1}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->access$600(Lcom/android/settings/accessibility/MagnifierDisplayPolicy;)V

    .line 452
    :cond_1
    return-void
.end method
