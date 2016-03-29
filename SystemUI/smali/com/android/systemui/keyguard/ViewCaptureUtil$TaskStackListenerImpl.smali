.class Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;
.super Landroid/app/ITaskStackListener$Stub;
.source "ViewCaptureUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/ViewCaptureUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskStackListenerImpl"
.end annotation


# instance fields
.field mSb:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ViewCaptureUtil;)V
    .locals 1

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    invoke-direct {p0}, Landroid/app/ITaskStackListener$Stub;-><init>()V

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->mSb:Ljava/lang/StringBuilder;

    .line 232
    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 295
    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->mSb:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 297
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 298
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 299
    rem-int/lit8 v2, v0, 0x3

    if-nez v2, :cond_0

    .line 300
    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 298
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 305
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private isHazardActivity(Ljava/lang/String;)Z
    .locals 5
    .param p1, "activity"    # Ljava/lang/String;

    .prologue
    .line 286
    iget-object v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    # getter for: Lcom/android/systemui/keyguard/ViewCaptureUtil;->mHazardActivity:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$1200(Lcom/android/systemui/keyguard/ViewCaptureUtil;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 287
    .local v1, "hazardActivity":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 288
    const/4 v4, 0x1

    .line 291
    .end local v1    # "hazardActivity":Ljava/lang/String;
    :goto_1
    return v4

    .line 286
    .restart local v1    # "hazardActivity":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    .end local v1    # "hazardActivity":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isWallpaperActivity(Ljava/lang/String;)Z
    .locals 5
    .param p1, "activity"    # Ljava/lang/String;

    .prologue
    .line 277
    iget-object v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    # getter for: Lcom/android/systemui/keyguard/ViewCaptureUtil;->mWallpaperActivity:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$1100(Lcom/android/systemui/keyguard/ViewCaptureUtil;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 278
    .local v3, "wallpaperActivity":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 279
    const/4 v4, 0x1

    .line 282
    .end local v3    # "wallpaperActivity":Ljava/lang/String;
    :goto_1
    return v4

    .line 277
    .restart local v3    # "wallpaperActivity":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    .end local v3    # "wallpaperActivity":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 237
    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    # getter for: Lcom/android/systemui/keyguard/ViewCaptureUtil;->mAm:Landroid/app/ActivityManager;
    invoke-static {v2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$000(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/app/ActivityManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 238
    .local v0, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 239
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "topActivity":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    # getter for: Lcom/android/systemui/keyguard/ViewCaptureUtil;->mNewCapture:Z
    invoke-static {v2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$100(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->isHazardActivity(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    const-string v2, "ViewCaptureUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip top: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    # setter for: Lcom/android/systemui/keyguard/ViewCaptureUtil;->mNewCapture:Z
    invoke-static {v2, v5}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$102(Lcom/android/systemui/keyguard/ViewCaptureUtil;Z)Z

    .line 274
    .end local v1    # "topActivity":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 246
    .restart local v1    # "topActivity":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->this$0:Lcom/android/systemui/keyguard/ViewCaptureUtil;

    # getter for: Lcom/android/systemui/keyguard/ViewCaptureUtil;->mNewCapture:Z
    invoke-static {v2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->access$100(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;->isWallpaperActivity(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    new-instance v2, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;-><init>(Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;Ljava/lang/String;)V

    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
