.class Lcom/android/settings/DisplayScalingActivity$2;
.super Ljava/lang/Object;
.source "DisplayScalingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplayScalingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplayScalingActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplayScalingActivity;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/settings/DisplayScalingActivity$2;->this$0:Lcom/android/settings/DisplayScalingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 185
    const-string v0, "DisplayScalingActivity"

    const-string v1, "mCondensedClickListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/android/settings/DisplayScalingActivity$2;->this$0:Lcom/android/settings/DisplayScalingActivity;

    # getter for: Lcom/android/settings/DisplayScalingActivity;->mCondensedRadio:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/settings/DisplayScalingActivity;->access$100(Lcom/android/settings/DisplayScalingActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/DisplayScalingActivity$2;->this$0:Lcom/android/settings/DisplayScalingActivity;

    # getter for: Lcom/android/settings/DisplayScalingActivity;->mStandardRadio:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/settings/DisplayScalingActivity;->access$000(Lcom/android/settings/DisplayScalingActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/DisplayScalingActivity$2;->this$0:Lcom/android/settings/DisplayScalingActivity;

    # getter for: Lcom/android/settings/DisplayScalingActivity;->isCondensed:Z
    invoke-static {v0}, Lcom/android/settings/DisplayScalingActivity;->access$200(Lcom/android/settings/DisplayScalingActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/settings/DisplayScalingActivity$2;->this$0:Lcom/android/settings/DisplayScalingActivity;

    # getter for: Lcom/android/settings/DisplayScalingActivity;->mStandardList:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings/DisplayScalingActivity;->access$300(Lcom/android/settings/DisplayScalingActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/DisplayScalingActivity$2;->this$0:Lcom/android/settings/DisplayScalingActivity;

    # getter for: Lcom/android/settings/DisplayScalingActivity;->mCondensedList:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings/DisplayScalingActivity;->access$400(Lcom/android/settings/DisplayScalingActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/DisplayScalingActivity$2;->this$0:Lcom/android/settings/DisplayScalingActivity;

    # getter for: Lcom/android/settings/DisplayScalingActivity;->mCondensedStandardList:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings/DisplayScalingActivity;->access$500(Lcom/android/settings/DisplayScalingActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 198
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DisplayScalingActivity$2;->this$0:Lcom/android/settings/DisplayScalingActivity;

    # getter for: Lcom/android/settings/DisplayScalingActivity;->mStandardList:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings/DisplayScalingActivity;->access$300(Lcom/android/settings/DisplayScalingActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/DisplayScalingActivity$2;->this$0:Lcom/android/settings/DisplayScalingActivity;

    # getter for: Lcom/android/settings/DisplayScalingActivity;->mCondensedList:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings/DisplayScalingActivity;->access$400(Lcom/android/settings/DisplayScalingActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/android/settings/DisplayScalingActivity$2;->this$0:Lcom/android/settings/DisplayScalingActivity;

    # getter for: Lcom/android/settings/DisplayScalingActivity;->mCondensedStandardList:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings/DisplayScalingActivity;->access$500(Lcom/android/settings/DisplayScalingActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
