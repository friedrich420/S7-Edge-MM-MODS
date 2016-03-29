.class public Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;
.super Landroid/os/AsyncTask;
.source "RecentsMultiWindowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadAppListAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 504
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    .line 508
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowAppListInfo:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$800(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->isAppListLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowAppListInfo:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$800(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->loadMultiWindowAppList()V

    .line 513
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowAppListInfo:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$800(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateTime()V

    .line 514
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v1, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getTopRunningPackage(Z)Landroid/util/Pair;

    move-result-object v1

    # setter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mSelectedAppInfo:Landroid/util/Pair;
    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$902(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;Landroid/util/Pair;)Landroid/util/Pair;

    .line 517
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowAppListInfo:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$800(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateAppListOrder()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 504
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 522
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mMultiWindowAppListInfo:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
    invoke-static {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$800(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getTotalPageNum()I

    move-result v1

    # setter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I
    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$102(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;I)I

    .line 525
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I
    invoke-static {v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$100(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # setter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I
    invoke-static {v0, v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$102(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;I)I

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # invokes: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->initViewPageMark()V
    invoke-static {v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$1000(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    .line 531
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$1100(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPagerAdapter:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;
    invoke-static {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$600(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 532
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedMoveAppListPage:Z
    invoke-static {v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$1200(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 533
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # setter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mNeedMoveAppListPage:Z
    invoke-static {v0, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$1202(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;Z)Z

    .line 534
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mLayoutDirection:I
    invoke-static {v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$1300(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 535
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I
    invoke-static {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$100(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->moveViewPage(IZ)V

    .line 542
    :goto_0
    return-void

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->moveViewPage(IZ)V

    goto :goto_0

    .line 540
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$LoadAppListAsyncTask;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->moveViewPage(IZ)V

    goto :goto_0
.end method
