.class Lcom/android/internal/app/ResolverActivity$SShareItemClickListener;
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
    name = "SShareItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .registers 2

    .prologue
    .line 2606
    iput-object p1, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2610
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-eqz p1, :cond_1c

    .line 2611
    iget-object v0, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$2200(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/share/SShareSimpleSharing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareSimpleSharing;->isEasySignUpCertificated()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2612
    iget-object v0, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$2200(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/share/SShareSimpleSharing;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/share/SShareSimpleSharing;->recentHistoryGridItemClick(I)V

    .line 2613
    iget-object v0, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 2618
    :cond_1c
    :goto_1c
    return-void

    .line 2614
    :cond_1d
    if-eqz p1, :cond_1c

    .line 2615
    iget-object v0, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$2200(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/share/SShareSimpleSharing;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/share/SShareSimpleSharing;->recentHistoryDefaultGridItemClick(I)V

    goto :goto_1c
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
    .line 2623
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    return v0
.end method
