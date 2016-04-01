.class Landroid/widget/TextView$StylusEventListener$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$StylusEventListener;->onStylusButtonEvent(Landroid/view/MotionEvent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$StylusEventListener;


# direct methods
.method constructor <init>(Landroid/widget/TextView$StylusEventListener;)V
    .registers 2

    .prologue
    .line 13200
    iput-object p1, p0, this$1:Landroid/widget/TextView$StylusEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 13202
    const/4 v2, 0x0

    .line 13203
    .local v2, "isPenSelected":Z
    iget-object v4, p0, this$1:Landroid/widget/TextView$StylusEventListener;

    iget-object v4, v4, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v3

    .line 13204
    .local v3, "text":Ljava/lang/CharSequence;
    iget-object v4, p0, this$1:Landroid/widget/TextView$StylusEventListener;

    iget-object v4, v4, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget-object v5, p0, this$1:Landroid/widget/TextView$StylusEventListener;

    # getter for: Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I
    invoke-static {v5}, Landroid/widget/TextView$StylusEventListener;->access$4400(Landroid/widget/TextView$StylusEventListener;)I

    move-result v5

    iget-object v6, p0, this$1:Landroid/widget/TextView$StylusEventListener;

    # getter for: Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I
    invoke-static {v6}, Landroid/widget/TextView$StylusEventListener;->access$4500(Landroid/widget/TextView$StylusEventListener;)I

    move-result v6

    # invokes: Landroid/widget/TextView;->selectCurrentWordForMultiSelection(II)Z
    invoke-static {v4, v5, v6}, Landroid/widget/TextView;->access$4600(Landroid/widget/TextView;II)Z

    move-result v2

    .line 13206
    if-eqz v2, :cond_7f

    .line 13207
    iget-object v5, p0, this$1:Landroid/widget/TextView$StylusEventListener;

    move-object v4, v3

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    # setter for: Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I
    invoke-static {v5, v4}, Landroid/widget/TextView$StylusEventListener;->access$4402(Landroid/widget/TextView$StylusEventListener;I)I

    .line 13208
    iget-object v5, p0, this$1:Landroid/widget/TextView$StylusEventListener;

    move-object v4, v3

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    # setter for: Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I
    invoke-static {v5, v4}, Landroid/widget/TextView$StylusEventListener;->access$4502(Landroid/widget/TextView$StylusEventListener;I)I

    .line 13210
    iget-object v4, p0, this$1:Landroid/widget/TextView$StylusEventListener;

    iget-object v4, v4, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    # invokes: Landroid/widget/TextView;->showMultiSelectPopupWindow()V
    invoke-static {v4}, Landroid/widget/TextView;->access$4700(Landroid/widget/TextView;)V

    .line 13214
    :try_start_3f
    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager;

    iget-object v4, p0, this$1:Landroid/widget/TextView$StylusEventListener;

    iget-object v4, v4, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/samsung/android/hermes/HermesServiceManager;-><init>(Landroid/content/Context;)V

    .line 13215
    .local v0, "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    iget-object v4, p0, this$1:Landroid/widget/TextView$StylusEventListener;

    # getter for: Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I
    invoke-static {v4}, Landroid/widget/TextView$StylusEventListener;->access$4400(Landroid/widget/TextView$StylusEventListener;)I

    move-result v4

    iget-object v5, p0, this$1:Landroid/widget/TextView$StylusEventListener;

    # getter for: Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I
    invoke-static {v5}, Landroid/widget/TextView$StylusEventListener;->access$4500(Landroid/widget/TextView$StylusEventListener;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/hermes/HermesServiceManager;->training(Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/lang/IllegalStateException; {:try_start_3f .. :try_end_63} :catch_80

    .line 13219
    .end local v0    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    :goto_63
    const-string v4, "TextView"

    const-string v5, "Pen up with side button! : end text selection"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13222
    iget-object v4, p0, this$1:Landroid/widget/TextView$StylusEventListener;

    iget-object v4, v4, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->registerForTouchMonitorListener()V

    .line 13224
    iget-object v4, p0, this$1:Landroid/widget/TextView$StylusEventListener;

    iget-object v4, v4, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    const/4 v5, 0x1

    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static {v4, v5}, Landroid/widget/TextView;->access$4302(Landroid/widget/TextView;Z)Z

    .line 13225
    invoke-static {v7}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    .line 13226
    invoke-static {v7}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    .line 13228
    :cond_7f
    return-void

    .line 13216
    :catch_80
    move-exception v1

    .line 13217
    .local v1, "ie":Ljava/lang/IllegalStateException;
    const-string v4, "TextView"

    const-string v5, "** skip HERMES Service by IllegalStateException **"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63
.end method
