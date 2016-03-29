.class public Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;
.super Landroid/widget/LinearLayout;
.source "SViewCoverCameraArea.java"

# interfaces
.implements Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;


# instance fields
.field private active:Z

.field private mCameraLockViImage:Landroid/widget/ImageView;

.field private mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->mCameraLockViImage:Landroid/widget/ImageView;

    .line 21
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->active:Z

    .line 40
    return-void
.end method

.method private moveToHome()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToMainPage()V

    .line 32
    :cond_0
    return-void
.end method

.method private startCameraActivity()V
    .locals 4

    .prologue
    .line 59
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 60
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    const-string v2, "com.sec.android.app.camera"

    const-string v3, "com.sec.android.app.camera.Camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v2, "covermode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    const-string v2, "SViewCoverCameraArea"

    const-string v3, "ActivityNotFoundException !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onActive(Z)V
    .locals 0
    .param p1, "isActive"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->active:Z

    .line 53
    if-eqz p1, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->startCameraActivity()V

    .line 56
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 89
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isZeroProject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    sget v0, Lcom/sec/android/sviewcover/R$id;->camera_lock_vi:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->mCameraLockViImage:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->mCameraLockViImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->mCameraLockViImage:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 79
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->active:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->active:Z

    .line 81
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->moveToHome()V

    .line 83
    :cond_0
    return-void
.end method

.method public setCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 2
    .param p1, "cover"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 44
    const-string v0, "SViewCoverCameraArea"

    const-string v1, "setCoverView(): received null as argument!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    goto :goto_0
.end method
