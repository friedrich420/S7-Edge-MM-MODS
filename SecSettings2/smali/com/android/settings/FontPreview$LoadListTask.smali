.class Lcom/android/settings/FontPreview$LoadListTask;
.super Landroid/os/AsyncTask;
.source "FontPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/FontPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FontPreview;


# direct methods
.method private constructor <init>(Lcom/android/settings/FontPreview;)V
    .locals 0

    .prologue
    .line 1406
    iput-object p1, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/FontPreview;Lcom/android/settings/FontPreview$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/FontPreview;
    .param p2, "x1"    # Lcom/android/settings/FontPreview$1;

    .prologue
    .line 1406
    invoke-direct {p0, p1}, Lcom/android/settings/FontPreview$LoadListTask;-><init>(Lcom/android/settings/FontPreview;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1406
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/FontPreview$LoadListTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1421
    invoke-static {}, Lcom/android/settings/flipfont/FontListAdapter;->destroyInstance()V

    .line 1422
    iget-object v3, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # setter for: Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;
    invoke-static {v3, v7}, Lcom/android/settings/FontPreview;->access$1102(Lcom/android/settings/FontPreview;Lcom/android/settings/flipfont/FontListAdapter;)Lcom/android/settings/flipfont/FontListAdapter;

    .line 1424
    iget-object v3, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    iget-object v4, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mFontStyleListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/settings/FontPreview;->access$600(Lcom/android/settings/FontPreview;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/android/settings/flipfont/FontListAdapter;

    move-result-object v4

    # setter for: Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;
    invoke-static {v3, v4}, Lcom/android/settings/FontPreview;->access$1102(Lcom/android/settings/FontPreview;Lcom/android/settings/flipfont/FontListAdapter;)Lcom/android/settings/flipfont/FontListAdapter;

    .line 1427
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;
    invoke-static {v3}, Lcom/android/settings/FontPreview;->access$1100(Lcom/android/settings/FontPreview;)Lcom/android/settings/flipfont/FontListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    .line 1429
    iget-object v3, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;
    invoke-static {v3}, Lcom/android/settings/FontPreview;->access$1100(Lcom/android/settings/FontPreview;)Lcom/android/settings/flipfont/FontListAdapter;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    .line 1432
    iget-object v3, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;
    invoke-static {v3}, Lcom/android/settings/FontPreview;->access$1100(Lcom/android/settings/FontPreview;)Lcom/android/settings/flipfont/FontListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 1437
    iget-object v3, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # invokes: Lcom/android/settings/FontPreview;->getFontNameFromSystem()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/FontPreview;->access$1200(Lcom/android/settings/FontPreview;)Ljava/lang/String;

    move-result-object v2

    .line 1438
    .local v2, "fontName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;
    invoke-static {v3}, Lcom/android/settings/FontPreview;->access$1100(Lcom/android/settings/FontPreview;)Lcom/android/settings/flipfont/FontListAdapter;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1439
    .local v1, "fontIndexPref":I
    iget-object v3, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/FontPreview;->access$500(Lcom/android/settings/FontPreview;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "flip_font_style"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1446
    .end local v1    # "fontIndexPref":I
    .end local v2    # "fontName":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 1441
    :catch_0
    move-exception v0

    .line 1442
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "FontPreview loading dialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "this is regarding debugging. it is not problem: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    invoke-virtual {p0, v6}, Lcom/android/settings/FontPreview$LoadListTask;->cancel(Z)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1406
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/FontPreview$LoadListTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    .line 1453
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mProgressBarLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/settings/FontPreview;->access$800(Lcom/android/settings/FontPreview;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mFontPreviewSizeStyleLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/settings/FontPreview;->access$900(Lcom/android/settings/FontPreview;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1454
    iget-object v1, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mProgressBarLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/settings/FontPreview;->access$800(Lcom/android/settings/FontPreview;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1455
    iget-object v1, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mFontPreviewSizeStyleLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/settings/FontPreview;->access$900(Lcom/android/settings/FontPreview;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1457
    :cond_0
    iget-object v1, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    iget-object v2, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/settings/FontPreview;->access$1300(Lcom/android/settings/FontPreview;)Landroid/os/Bundle;

    move-result-object v2

    # invokes: Lcom/android/settings/FontPreview;->setFontStyleList(Landroid/os/Bundle;)V
    invoke-static {v1, v2}, Lcom/android/settings/FontPreview;->access$1400(Lcom/android/settings/FontPreview;Landroid/os/Bundle;)V

    .line 1458
    iget-object v1, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/FontPreview;->mIsRunLoadListTask:Z
    invoke-static {v1, v2}, Lcom/android/settings/FontPreview;->access$1002(Lcom/android/settings/FontPreview;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1462
    :goto_0
    return-void

    .line 1459
    :catch_0
    move-exception v0

    .line 1460
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "FlipFont"

    const-string v2, "dismiss/show ListLoad() - catch (Exception ex)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mProgressBarLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/settings/FontPreview;->access$800(Lcom/android/settings/FontPreview;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mFontPreviewSizeStyleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings/FontPreview;->access$900(Lcom/android/settings/FontPreview;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1411
    iget-object v0, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mProgressBarLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/settings/FontPreview;->access$800(Lcom/android/settings/FontPreview;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1412
    iget-object v0, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    # getter for: Lcom/android/settings/FontPreview;->mFontPreviewSizeStyleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings/FontPreview;->access$900(Lcom/android/settings/FontPreview;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1414
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FontPreview$LoadListTask;->this$0:Lcom/android/settings/FontPreview;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/FontPreview;->mIsRunLoadListTask:Z
    invoke-static {v0, v1}, Lcom/android/settings/FontPreview;->access$1002(Lcom/android/settings/FontPreview;Z)Z

    .line 1416
    return-void
.end method
