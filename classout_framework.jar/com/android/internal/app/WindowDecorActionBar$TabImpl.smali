.class public Lcom/android/internal/app/WindowDecorActionBar$TabImpl;
.super Landroid/app/ActionBar$Tab;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field private mCallback:Landroid/app/ActionBar$TabListener;

.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/internal/app/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/WindowDecorActionBar;)V
    .registers 3

    .prologue
    .line 1169
    iput-object p1, p0, this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroid/app/ActionBar$Tab;-><init>()V

    .line 1175
    const/4 v0, -0x1

    iput v0, p0, mPosition:I

    return-void
.end method


# virtual methods
.method public getCallback()Landroid/app/ActionBar$TabListener;
    .registers 2

    .prologue
    .line 1190
    iget-object v0, p0, mCallback:Landroid/app/ActionBar$TabListener;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1287
    iget-object v0, p0, mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1201
    iget-object v0, p0, mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 1221
    iget-object v0, p0, mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 1226
    iget v0, p0, mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1180
    iget-object v0, p0, mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1235
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public select()V
    .registers 2

    .prologue
    .line 1268
    iget-object v0, p0, this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1269
    return-void
.end method

.method public setContentDescription(I)Landroid/app/ActionBar$Tab;
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 1273
    iget-object v0, p0, this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$1200(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    .registers 4
    .param p1, "contentDesc"    # Ljava/lang/CharSequence;

    .prologue
    .line 1278
    iput-object p1, p0, mContentDesc:Ljava/lang/CharSequence;

    .line 1279
    iget v0, p0, mPosition:I

    if-ltz v0, :cond_11

    .line 1280
    iget-object v0, p0, this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$1300(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1282
    :cond_11
    return-object p0
.end method

.method public setCustomView(I)Landroid/app/ActionBar$Tab;
    .registers 4
    .param p1, "layoutResId"    # I

    .prologue
    .line 1215
    iget-object v0, p0, this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-virtual {v0}, Lcom/android/internal/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1206
    iput-object p1, p0, mCustomView:Landroid/view/View;

    .line 1207
    iget v0, p0, mPosition:I

    if-ltz v0, :cond_11

    .line 1208
    iget-object v0, p0, this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$1300(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1210
    :cond_11
    return-object p0
.end method

.method public setIcon(I)Landroid/app/ActionBar$Tab;
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 1249
    iget-object v0, p0, this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$1200(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1240
    iput-object p1, p0, mIcon:Landroid/graphics/drawable/Drawable;

    .line 1241
    iget v0, p0, mPosition:I

    if-ltz v0, :cond_11

    .line 1242
    iget-object v0, p0, this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$1300(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1244
    :cond_11
    return-object p0
.end method

.method public setPosition(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 1230
    iput p1, p0, mPosition:I

    .line 1231
    return-void
.end method

.method public setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;
    .registers 2
    .param p1, "callback"    # Landroid/app/ActionBar$TabListener;

    .prologue
    .line 1195
    iput-object p1, p0, mCallback:Landroid/app/ActionBar$TabListener;

    .line 1196
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;
    .registers 2
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 1185
    iput-object p1, p0, mTag:Ljava/lang/Object;

    .line 1186
    return-object p0
.end method

.method public setText(I)Landroid/app/ActionBar$Tab;
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 1263
    iget-object v0, p0, this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$1200(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1254
    iput-object p1, p0, mText:Ljava/lang/CharSequence;

    .line 1255
    iget v0, p0, mPosition:I

    if-ltz v0, :cond_11

    .line 1256
    iget-object v0, p0, this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$1300(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1258
    :cond_11
    return-object p0
.end method
