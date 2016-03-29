.class Lcom/android/systemui/volume/SecVolumeDialog$4;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialog;->addRow(IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;

.field final synthetic val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    iput-object p2, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 498
    move/from16 v0, p6

    if-ne v0, p2, :cond_0

    move/from16 v0, p7

    if-eq v0, p3, :cond_3

    :cond_0
    const/4 v7, 0x1

    .line 499
    .local v7, "moved":Z
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;
    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->access$1100(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/widget/ImageButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getTranslationX()F

    move-result v8

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;
    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->access$1100(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/widget/ImageButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getTranslationY()F

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;
    invoke-static {v9}, Lcom/android/systemui/volume/SecVolumeDialog;->access$1200(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;
    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->access$1100(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/widget/ImageButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getTranslationX()F

    move-result v8

    move/from16 v0, p6

    int-to-float v9, v0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_4

    :cond_1
    const/4 v6, 0x1

    .line 502
    .local v6, "invisible":Z
    :goto_1
    sget-boolean v8, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v8, :cond_2

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onLayoutChange moved="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " old="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Landroid/graphics/Rect;

    move/from16 v0, p6

    move/from16 v1, p7

    move/from16 v2, p8

    move/from16 v3, p9

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v10}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " new="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Landroid/graphics/Rect;

    move/from16 v0, p5

    invoke-direct {v10, p2, p3, p4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v10}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " expandButton x="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;
    invoke-static {v10}, Lcom/android/systemui/volume/SecVolumeDialog;->access$1100(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/widget/ImageButton;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ImageButton;->getTranslationX()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " expandButton y="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mExpandButton:Landroid/widget/ImageButton;
    invoke-static {v10}, Lcom/android/systemui/volume/SecVolumeDialog;->access$1100(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/widget/ImageButton;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ImageButton;->getTranslationY()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_2
    or-int v8, v7, v6

    if-eqz v8, :cond_6

    .line 508
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;
    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->access$1200(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v5, v8, :cond_6

    .line 509
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;
    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->access$1200(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 510
    .local v4, "c":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v8

    if-nez v8, :cond_5

    .line 508
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 498
    .end local v4    # "c":Landroid/view/View;
    .end local v5    # "i":I
    .end local v6    # "invisible":Z
    .end local v7    # "moved":Z
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 499
    .restart local v7    # "moved":Z
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 511
    .restart local v4    # "c":Landroid/view/View;
    .restart local v5    # "i":I
    .restart local v6    # "invisible":Z
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v8

    if-ne v4, v8, :cond_6

    .line 512
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    iget-object v9, p0, Lcom/android/systemui/volume/SecVolumeDialog$4;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # invokes: Lcom/android/systemui/volume/SecVolumeDialog;->repositionExpandAnim(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    invoke-static {v8, v9}, Lcom/android/systemui/volume/SecVolumeDialog;->access$1400(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 517
    .end local v4    # "c":Landroid/view/View;
    .end local v5    # "i":I
    :cond_6
    return-void
.end method
