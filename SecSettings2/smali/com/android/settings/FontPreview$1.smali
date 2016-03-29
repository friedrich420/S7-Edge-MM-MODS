.class Lcom/android/settings/FontPreview$1;
.super Ljava/lang/Object;
.source "FontPreview.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FontPreview;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FontPreview;


# direct methods
.method constructor <init>(Lcom/android/settings/FontPreview;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/settings/FontPreview$1;->this$0:Lcom/android/settings/FontPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings/FontPreview$1;->this$0:Lcom/android/settings/FontPreview;

    # invokes: Lcom/android/settings/FontPreview;->changeFontSizeFromSeekBar(I)V
    invoke-static {v0, p2}, Lcom/android/settings/FontPreview;->access$000(Lcom/android/settings/FontPreview;I)V

    .line 267
    iget-object v0, p0, Lcom/android/settings/FontPreview$1;->this$0:Lcom/android/settings/FontPreview;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/FontPreview;->mIsChangedFontSizeSeekBar:Z
    invoke-static {v0, v1}, Lcom/android/settings/FontPreview;->access$102(Lcom/android/settings/FontPreview;Z)Z

    .line 270
    iget-object v0, p0, Lcom/android/settings/FontPreview$1;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mExtraLargeFontIndex:I
    invoke-static {v0}, Lcom/android/settings/FontPreview;->access$200(Lcom/android/settings/FontPreview;)I

    move-result v0

    if-le p2, v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/settings/FontPreview$1;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/FontPreview;->access$300(Lcom/android/settings/FontPreview;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FontPreview$1;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/FontPreview;->access$300(Lcom/android/settings/FontPreview;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 262
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 258
    return-void
.end method
