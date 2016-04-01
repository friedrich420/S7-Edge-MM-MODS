.class Lcom/android/internal/app/ResolverActivity$MoreActionsItemClickListener;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MoreActionsItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .registers 2

    .prologue
    .line 3047
    iput-object p1, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 3051
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mMoreActions:Lcom/samsung/android/share/SShareMoreActions;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$3300(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/share/SShareMoreActions;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 3052
    iget-object v0, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mMoreActions:Lcom/samsung/android/share/SShareMoreActions;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$3300(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/share/SShareMoreActions;

    move-result-object v1

    iget-object v0, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$3400(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, p3, v0}, Lcom/samsung/android/share/SShareMoreActions;->startMoreActions(ILandroid/content/Intent;)V

    .line 3053
    iget-object v0, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mVisibleArea:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$3500(Lcom/android/internal/app/ResolverActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 3054
    iget-object v0, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mMoreActions:Lcom/samsung/android/share/SShareMoreActions;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$3300(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/share/SShareMoreActions;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mVisibleArea:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$3500(Lcom/android/internal/app/ResolverActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/SShareMoreActions;->setSharePanelVisibleHeight(I)V

    .line 3059
    :cond_39
    :goto_39
    iget-object v0, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 3060
    return-void

    .line 3056
    :cond_3f
    const-string v0, "ResolverActivity"

    const-string/jumbo v1, "mVisibleArea is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 3064
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    return v0
.end method
