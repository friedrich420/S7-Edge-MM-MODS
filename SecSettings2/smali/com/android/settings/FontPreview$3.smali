.class Lcom/android/settings/FontPreview$3;
.super Ljava/lang/Object;
.source "FontPreview.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FontPreview;->setFontStyleList(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FontPreview;

.field final synthetic val$fontScrollView:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lcom/android/settings/FontPreview;Landroid/widget/ScrollView;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/settings/FontPreview$3;->this$0:Lcom/android/settings/FontPreview;

    iput-object p2, p0, Lcom/android/settings/FontPreview$3;->val$fontScrollView:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 469
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 470
    const-string v2, "FontPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v2, p0, Lcom/android/settings/FontPreview$3;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/FontPreview;->access$600(Lcom/android/settings/FontPreview;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    if-le v2, v5, :cond_0

    .line 473
    iget-object v2, p0, Lcom/android/settings/FontPreview$3;->val$fontScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/settings/FontPreview$3;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/settings/FontPreview;->access$600(Lcom/android/settings/FontPreview;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 474
    const-string v2, "FontPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFontStyleListView.getSelectedView().getTop(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/FontPreview$3;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/settings/FontPreview;->access$600(Lcom/android/settings/FontPreview;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_0
    iget-object v2, p0, Lcom/android/settings/FontPreview$3;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/FontPreview;->access$600(Lcom/android/settings/FontPreview;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-le v2, v5, :cond_1

    iget-object v2, p0, Lcom/android/settings/FontPreview$3;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/FontPreview;->access$600(Lcom/android/settings/FontPreview;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/FontPreview$3;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/settings/FontPreview;->access$600(Lcom/android/settings/FontPreview;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ne v2, v3, :cond_1

    .line 479
    const/16 v2, 0x13

    if-ne p2, v2, :cond_2

    .line 480
    iget-object v1, p0, Lcom/android/settings/FontPreview$3;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/settings/FontPreview;->access$600(Lcom/android/settings/FontPreview;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/FontPreview$3;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/FontPreview;->access$600(Lcom/android/settings/FontPreview;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 493
    :cond_1
    :goto_0
    return v0

    .line 482
    :cond_2
    const/4 v2, 0x4

    if-ne p2, v2, :cond_3

    .line 483
    iget-object v1, p0, Lcom/android/settings/FontPreview$3;->this$0:Lcom/android/settings/FontPreview;

    invoke-virtual {v1}, Lcom/android/settings/FontPreview;->finish()V

    goto :goto_0

    .line 485
    :cond_3
    const/16 v0, 0x42

    if-eq p2, v0, :cond_4

    const/16 v0, 0x17

    if-ne p2, v0, :cond_5

    .line 486
    :cond_4
    iget-object v0, p0, Lcom/android/settings/FontPreview$3;->this$0:Lcom/android/settings/FontPreview;

    iget-object v2, p0, Lcom/android/settings/FontPreview$3;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/FontPreview;->access$600(Lcom/android/settings/FontPreview;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v3

    const-wide/16 v4, 0x1

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/FontPreview;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    move v0, v6

    .line 487
    goto :goto_0

    :cond_5
    move v0, v6

    .line 489
    goto :goto_0
.end method
