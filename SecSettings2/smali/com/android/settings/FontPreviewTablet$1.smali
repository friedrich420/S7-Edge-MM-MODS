.class Lcom/android/settings/FontPreviewTablet$1;
.super Ljava/lang/Object;
.source "FontPreviewTablet.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FontPreviewTablet;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FontPreviewTablet;


# direct methods
.method constructor <init>(Lcom/android/settings/FontPreviewTablet;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/settings/FontPreviewTablet$1;->this$0:Lcom/android/settings/FontPreviewTablet;

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
    .line 247
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet$1;->this$0:Lcom/android/settings/FontPreviewTablet;

    # invokes: Lcom/android/settings/FontPreviewTablet;->changeFontSizeFromSeekBar(I)V
    invoke-static {v0, p2}, Lcom/android/settings/FontPreviewTablet;->access$000(Lcom/android/settings/FontPreviewTablet;I)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet$1;->this$0:Lcom/android/settings/FontPreviewTablet;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/FontPreviewTablet;->mIsChangedFontSizeSeekBar:Z
    invoke-static {v0, v1}, Lcom/android/settings/FontPreviewTablet;->access$102(Lcom/android/settings/FontPreviewTablet;Z)Z

    .line 251
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet$1;->this$0:Lcom/android/settings/FontPreviewTablet;

    # getter for: Lcom/android/settings/FontPreviewTablet;->mExtraLargeFontIndex:I
    invoke-static {v0}, Lcom/android/settings/FontPreviewTablet;->access$200(Lcom/android/settings/FontPreviewTablet;)I

    move-result v0

    if-le p2, v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet$1;->this$0:Lcom/android/settings/FontPreviewTablet;

    # getter for: Lcom/android/settings/FontPreviewTablet;->mShowForHugeFontTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/FontPreviewTablet;->access$300(Lcom/android/settings/FontPreviewTablet;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet$1;->this$0:Lcom/android/settings/FontPreviewTablet;

    # getter for: Lcom/android/settings/FontPreviewTablet;->mShowForHugeFontTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/FontPreviewTablet;->access$300(Lcom/android/settings/FontPreviewTablet;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 243
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 239
    return-void
.end method
