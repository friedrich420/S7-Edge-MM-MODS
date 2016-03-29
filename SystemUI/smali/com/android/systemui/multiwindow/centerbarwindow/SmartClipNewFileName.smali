.class public Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;
.super Ljava/lang/Object;
.source "SmartClipNewFileName.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName$IndexMode;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDragDropIndex:I

.field private mFileIndex:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;->mContext:Landroid/content/Context;

    .line 17
    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;->mFileIndex:I

    .line 18
    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;->mDragDropIndex:I

    .line 25
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;->mContext:Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;->init()V

    .line 27
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 30
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;->mContext:Landroid/content/Context;

    const-string v2, "SmartClipNewFileName"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 32
    .local v0, "cache":Landroid/content/SharedPreferences;
    const-string v1, "CurrentIndex"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;->mFileIndex:I

    .line 33
    const-string v1, "DragDropIndex"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;->mDragDropIndex:I

    .line 34
    return-void
.end method


# virtual methods
.method public getIndex(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName$IndexMode;)I
    .locals 3
    .param p1, "mode"    # Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName$IndexMode;

    .prologue
    const/16 v2, 0x14

    const/4 v1, 0x0

    .line 37
    sget-object v0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName$IndexMode;->FILE:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName$IndexMode;

    if-ne p1, v0, :cond_1

    .line 38
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;->mFileIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;->mFileIndex:I

    .line 39
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;->mFileIndex:I

    if-lt v0, v2, :cond_0

    .line 40
    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;->mFileIndex:I

    .line 42
    :cond_0
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;->mFileIndex:I

    .line 50
    :goto_0
    return v0

    .line 43
    :cond_1
    sget-object v0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName$IndexMode;->DRAGDRAP:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName$IndexMode;

    if-ne p1, v0, :cond_3

    .line 44
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;->mDragDropIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;->mDragDropIndex:I

    .line 45
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;->mDragDropIndex:I

    if-lt v0, v2, :cond_2

    .line 46
    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;->mDragDropIndex:I

    .line 48
    :cond_2
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;->mDragDropIndex:I

    goto :goto_0

    .line 50
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public saveIndex(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName$IndexMode;)V
    .locals 5
    .param p1, "mode"    # Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName$IndexMode;

    .prologue
    .line 54
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;->mContext:Landroid/content/Context;

    const-string v3, "SmartClipNewFileName"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 56
    .local v0, "cache":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 57
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName$IndexMode;->FILE:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName$IndexMode;

    if-ne p1, v2, :cond_0

    .line 58
    const-string v2, "CurrentIndex"

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;->mFileIndex:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 61
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 62
    return-void

    .line 60
    :cond_0
    const-string v2, "DragDropIndex"

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;->mDragDropIndex:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
