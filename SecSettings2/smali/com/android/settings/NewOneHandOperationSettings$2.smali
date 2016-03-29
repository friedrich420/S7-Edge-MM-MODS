.class Lcom/android/settings/NewOneHandOperationSettings$2;
.super Ljava/lang/Object;
.source "NewOneHandOperationSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NewOneHandOperationSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NewOneHandOperationSettings;

.field final synthetic val$current:I


# direct methods
.method constructor <init>(Lcom/android/settings/NewOneHandOperationSettings;I)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/settings/NewOneHandOperationSettings$2;->this$0:Lcom/android/settings/NewOneHandOperationSettings;

    iput p2, p0, Lcom/android/settings/NewOneHandOperationSettings$2;->val$current:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings$2;->this$0:Lcom/android/settings/NewOneHandOperationSettings;

    # getter for: Lcom/android/settings/NewOneHandOperationSettings;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;
    invoke-static {v0}, Lcom/android/settings/NewOneHandOperationSettings;->access$000(Lcom/android/settings/NewOneHandOperationSettings;)Lcom/android/settings/WrapContentHeightViewPager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/NewOneHandOperationSettings$2;->val$current:I

    invoke-virtual {v0, v1}, Lcom/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    .line 187
    return-void
.end method
